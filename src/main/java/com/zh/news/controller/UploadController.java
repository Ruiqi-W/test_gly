package com.zh.news.controller;

import java.io.File;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zh.news.utils.UploadFileName;

public class UploadController {
		@RequestMapping("news/upload")
		@ResponseBody
		public String upload(MultipartFile upload) throws Exception{
			String fileName = upload.getOriginalFilename();
			String imgUrl = UploadFileName.getImgUrl(fileName);
			upload.transferTo(new File("E:\\upload\\"+imgUrl));
			imgUrl = "/images/"+imgUrl;
			return imgUrl;
		}	
}
