package com.guanshen.controller;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.time.LocalDate;
import java.util.UUID;

@Controller()
@RequestMapping("/file")
public class FileController {
    /**
     * 用来处理文件上传
     */
    @RequestMapping("/update")
    public String update(MultipartFile file, HttpServletRequest request) throws IOException {
        System.out.println("文件名： " + file.getOriginalFilename());
        System.out.println("文件大小： " + file.getSize());
        System.out.println("文件类型： " + file.getContentType());
        // 文件上传
        // 1.根据upload的相对路径，获取部署到服务器之后的绝对路径。
        // request.getRealPath("/upload");过时
        String realPath = request.getSession().getServletContext().getRealPath("/upload");
        // 2.修改文件的原始名称
        String extension = FilenameUtils.getExtension(file.getOriginalFilename());
        String newFileName = UUID.randomUUID().toString().replace("-", "") + "." + extension;
        // 3.生成当天的日期目录
        LocalDate now = LocalDate.now();
        File dateDir = new File(realPath, now.toString());
        if (!dateDir.exists()) {
            dateDir.mkdirs();
        }
        // 4.将文件上传到upload对应日期的目录
        file.transferTo(new File(dateDir, newFileName));
        return "update";
    }

    /**
     *  用来处理文件下载
     */
        @RequestMapping("/download")
        public void download(String openStyle,String fileName, HttpServletRequest request, HttpServletResponse response) throws IOException {

            openStyle = openStyle == null ? "inline" : "attachment";

            System.out.println("下载文件的名称： " + fileName);
            // 1.根据下载相对目录，获取服务器部署之后的绝对路径。
            String realPath = request.getSession().getServletContext().getRealPath("/down");
            // 2.通过文件输入流读取文件
            FileInputStream is = new FileInputStream(new File(realPath, fileName));
            // 3.获取响应输出流
            response.setContentType("text/plain;charset=utf-8");
            // 4.附件下载
            response.setHeader("content-disposition", openStyle + ";fileName=" + URLEncoder.encode(fileName, "utf-8"));
            ServletOutputStream os = response.getOutputStream();
            // 5.处理下载流复制
            IOUtils.copy(is, os);
            IOUtils.closeQuietly(is);
            IOUtils.closeQuietly(os);
            // 传统写法
//            int len;
//            byte[] b = new byte[1024];
//            while (true) {
//                len = is.read(b);
//                if (len == -1) {
//                    break;
//                }
//                os.write(b, 0, len);
//            }
//            // 释放资源
//            is.close();
//            os.close();
        }
}
