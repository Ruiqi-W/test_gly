package com.zh.news.service;

import java.util.List;

import com.zh.news.po.News;
import com.zh.news.po.Nurse;

public interface NewsService {

	void save(News news);

	List<News> findAll(String s_title, String s_bPublishDate,
						String s_aPublishDate);

	List<News> getPage(String s_title, String s_bPublishDate,
					   String s_aPublishDate, Integer currentPage);

}
