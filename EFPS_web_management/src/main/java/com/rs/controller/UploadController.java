package com.rs.controller;

import com.rs.domain.Result;
import com.rs.utils.YunOSS;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * @FileName: UploadController
 * @Date: 2024/8/3:19:54
 * @Description: 文件上传
 * @Author: RWG
 */
@RestController
@Slf4j
@CrossOrigin(origins = "*")
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
    public Result upload(@RequestParam("file") MultipartFile image) throws Exception {
        log.info("文件上传{}", image.getOriginalFilename());
        String url = yunOSS.upload(image);
        log.info("文件上传完成，文件访问的url：{}",url);
        return Result.success(url);
    }
}
