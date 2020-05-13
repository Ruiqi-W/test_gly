package com.zh.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	@RequestMapping("{dir}/{page}")
    public String page(@PathVariable String dir ,@PathVariable String page){
    	return dir+"/"+page;
    }
}
