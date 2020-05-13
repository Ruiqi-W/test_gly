package com.zh.news.controller;

import java.util.Date;
import java.util.List;

import com.zh.news.po.Nurse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.zh.news.po.News;
import com.zh.news.po.NewsType;
import com.zh.news.service.NewsService;
import com.zh.news.service.NewsTypeService;
import com.zh.news.utils.NavUtils;
import com.zh.news.utils.PageUtils;

@Controller
@RequestMapping("news")
public class NewsController {
	@Autowired
    private NewsTypeService newsTypeService;
	@Autowired
	private NewsService newsService;
	//1.跳转新闻添加页面
	@RequestMapping("addUI")
	public String addUI(Model model){
		model.addAttribute("navCode", NavUtils.messageNavCode("护工管理", "护工信息添加"));
		/*List<NewsType> newsType = newsTypeService.findAll();*/
		/*List<Nurse> nurseList = newsService.findAll();
		model.addAttribute("newsType", nurseList);
		model.addAttribute("mainPage", "news/newsSave.jsp");*/
		return "main/mainTemp";
	}
	//2.保存数据
	@RequestMapping("save")
	public String save(News news){
		news.setPublishDate(new Date());
		newsService.save(news);
		//重定向查询方法
		return "redirect:listUI.action";
	}
	//3.查询数据
		@RequestMapping("listUI")
		public String listUI(String s_title,String s_bPublishDate,
				String s_aPublishDate,@RequestParam(required=true,defaultValue="1") Integer currentPage,Model model){
			
			if(currentPage<1){
				currentPage=1;
			}
			List<News> newss = newsService.getPage(s_title,s_bPublishDate,s_aPublishDate,currentPage);
			PageInfo<News> pageInfo = new PageInfo<News>(newss);
			if(currentPage>pageInfo.getPages()){
				currentPage=pageInfo.getPages();
				newss = newsService.getPage(s_title,s_bPublishDate,s_aPublishDate,currentPage);
				pageInfo = new PageInfo<News>(newss);
			}
			model.addAttribute("steps", PageUtils.getPageNav(5, pageInfo.getPages(), currentPage));
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("newss", newss);
			model.addAttribute("mainPage", "news/newsList.jsp");
			model.addAttribute("navCode", NavUtils.messageNavCode("护工管理", "护工信息查看"));
			return "main/mainTemp";
		}
}
