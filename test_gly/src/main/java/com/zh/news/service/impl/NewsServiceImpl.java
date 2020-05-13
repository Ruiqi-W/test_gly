package com.zh.news.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.zh.news.mapper.NewsMapper;
import com.zh.news.po.News;
import com.zh.news.service.NewsService;
@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
	private NewsMapper newsMapper;
	@Override
	public void save(News news) {
		newsMapper.save(news);
	}
	@Override
	public List<News> findAll(String s_title, String s_bPublishDate,
			String s_aPublishDate) {
		
		return newsMapper.findAll(s_title,s_bPublishDate,s_aPublishDate);
	}
	@Override
	public List<News> getPage(String s_title, String s_bPublishDate,
			String s_aPublishDate, Integer currentPage) {
		PageHelper.startPage(currentPage, 8);
		List<News> list = newsMapper.getPage(s_title,s_bPublishDate,s_aPublishDate,currentPage);
		return list;
	}

}
