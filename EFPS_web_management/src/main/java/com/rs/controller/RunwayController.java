package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.Runway;
import com.rs.domain.WebSocketMessage;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.RunwayService;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.TimeUnit;

/**
 * @Description: 跑道控制器
 * @Author: RWG
 * @Date: 2024/12/6:20:52
 */
@RestController
@RequestMapping("/runway")
public class RunwayController extends BaseController<Runway, RunwayService> {
    @Autowired
    private RedissonClient redissonClient;

    @Autowired
    public RunwayController(RunwayService runwayService) {
        super(runwayService, Runway.class);
    }

    @Override
    @PutMapping
    public ResultResponse update(@RequestBody Runway runway) {
        // 使用跑道ID作为分布式锁的key
        String lockKey = "runway-lock:" + runway.getId();
        RLock lock = redissonClient.getLock(lockKey);

        try {
            // 尝试获取锁，最多等待10秒，持有锁时间为30秒
            if (lock.tryLock(10, 30, TimeUnit.SECONDS)) {
                try {
                    // 执行跑道更新的操作
                    boolean success = service.updateById(runway);
                    if (success) {
                        // 操作成功，通知所有用户
                        webSocketServer.sendToAll(new WebSocketMessage(1, 1, "RunwayUpdated", "sys", System.currentTimeMillis()));
                        return ResultResponse.success("更新成功");
                    } else {
                        return ResultResponse.error("更新失败");
                    }
                } finally {
                    // 确保在操作完成后释放锁
                    lock.unlock();
                }
            } else {
                // 如果无法获取锁，说明其他管制席正在操作
                return ResultResponse.error("当前跑道资源正在被更新，请稍后再试");
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return ResultResponse.error("操作被中断");
        }
    }

}
