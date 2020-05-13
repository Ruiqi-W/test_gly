package com.zh.news.utils;

import java.util.Date;

public class UploadFileName {
	public static String getImgUrl(String fileName){
		return new Date().getTime()+fileName;
	}
}
