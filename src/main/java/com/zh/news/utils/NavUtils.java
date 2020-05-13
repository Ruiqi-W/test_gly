package com.zh.news.utils;

public class NavUtils {
    public static String messageNavCode(String model,String name){
    	StringBuffer sb = new StringBuffer();
    	sb.append("当前位置:&nbsp;&nbsp;主页&gt;&nbsp;&nbsp;&nbsp;");
    	sb.append(model);
    	sb.append("&nbsp;&gt;&nbsp;&nbsp;&nbsp;");
    	sb.append(name);
    	return sb.toString();
    }
}
