package com.zh.news.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zh.news.po.News;

public interface NewsMapper {

	void save(News news);

	List<News> findAll(@Param("s_title") String s_title, @Param("s_bPublishDate") String s_bPublishDate,
					   @Param("s_aPublishDate") String s_aPublishDate);

	List<News> getPage(String s_title, String s_bPublishDate,
					   String s_aPublishDate, Integer currentPage);

}
