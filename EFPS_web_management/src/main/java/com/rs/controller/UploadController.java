package com.rs.controller;

import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.utils.YunOSS;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * @FileName: UploadController
 * @Date: 2024/8/3:19:54
 * @Description: 文件上传
 * @Author: RWG
 */
@RestController
@Slf4j
public class UploadController {
    @Autowired
    private YunOSS yunOSS;
    //    @PostMapping("/upload")
//    public Result upload(String username, MultipartFile image) throws IOException {
//        log.info("文件上传{},{}",username,image);
//        String originalFileName = image.getOriginalFilename();
//        int index = originalFileName.lastIndexOf(".");
//        String extname = originalFileName.substring(index);
//        String newFileName = UUID.randomUUID().toString()+extname;
//
//        image.transferTo(new File("D:\\images\\"+newFileName));
//
//        return Result.success();
//    }
    @PostMapping("/upload")
    public ResultResponse upload(@RequestParam("file") MultipartFile image) throws Exception {
        String url = yunOSS.upload(image);
        return ResultResponse.success(url);
    }
}
