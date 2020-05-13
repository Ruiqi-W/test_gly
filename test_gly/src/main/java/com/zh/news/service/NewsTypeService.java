package com.zh.news.service;

import java.util.List;

import com.zh.news.po.Elder;
import com.zh.news.po.NewsType;

public interface NewsTypeService {

	void save(Elder elder);

	List<Elder> findAll();

	Elder findNewsTypeById(String elderIdCard);

	void edit(Elder elder);

	void delete(String elderIdCard);

	boolean booleanNewsTypeByIdCard(String elderIdCard);

}
