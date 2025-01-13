package com.rs.controller.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.domain.PageBean;
import com.rs.domain.WebSocketMessage;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.websocket.WebSocketServer;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Field;
import java.util.List;

@Slf4j
public class BaseController<T, S extends IService<T>> {
  @Autowired
  protected WebSocketServer webSocketServer;

  @Setter
  private  Class<T> entityClass;

  @Setter
  protected S service;

  public BaseController(S service, Class<T> entityClass) {
    this.service = service;
    this.entityClass = entityClass;
  }

  @GetMapping
  public ResultResponse listAll() {
    return ResultResponse.success(service.list());
  }

  @GetMapping("/pages")
  public ResultResponse getPages(@RequestParam Integer page, @RequestParam Integer pageSize) {
    IPage<T> resultPage = new Page<>(page, pageSize);
    return ResultResponse.success(new PageBean(service.page(resultPage).getTotal(), service.page(resultPage).getRecords()));
  }

  @PostMapping
  public ResultResponse add(@RequestBody T entity) {
    boolean success = service.save(entity);
    String entityName = entityClass.getSimpleName();
    webSocketServer.sendToAll(new WebSocketMessage(1, 1, entityName+"Added", "sys", System.currentTimeMillis()));
    return success ? ResultResponse.success("添加成功") : ResultResponse.error("添加失败");
  }

  @DeleteMapping
  public ResultResponse delete(@RequestParam List<Long> ids) {
    boolean success = service.removeByIds(ids);
    // 获取T的名称
    String entityName = entityClass.getSimpleName();
    webSocketServer.sendToAll(new WebSocketMessage(1, 1, entityName+"Deleted", "sys", System.currentTimeMillis()));
    return success ? ResultResponse.success("删除成功") : ResultResponse.error("删除失败");
  }

  @PutMapping
  public ResultResponse update(@RequestBody T entity) {
    boolean success = service.updateById(entity);
    String entityName = entityClass.getSimpleName();
    webSocketServer.sendToAll(new WebSocketMessage(1, 1, entityName+"Deleted", "sys", System.currentTimeMillis()));
    return success ? ResultResponse.success("更新成功") : ResultResponse.error("更新失败");
  }

  @PostMapping("/search")
  public ResultResponse search(@RequestBody T entity) {
    QueryWrapper<T> queryWrapper = new QueryWrapper<>();

    // 遍历实体类字段
    for (Field field : entity.getClass().getDeclaredFields()) {
      field.setAccessible(true);
      try {
        Object value = field.get(entity);
        if (value != null && !value.toString().isEmpty()) {
          // 使用模糊匹配
          queryWrapper.like(field.getName(), value);
        }
      } catch (IllegalAccessException e) {
        log.error("Field access error: ", e);
      }
    }

    List<T> result = service.list(queryWrapper);
    return result != null ? ResultResponse.success(result) : ResultResponse.error("查询失败");
  }
}
