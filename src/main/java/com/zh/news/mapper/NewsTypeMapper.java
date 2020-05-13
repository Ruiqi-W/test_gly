package com.zh.news.mapper;

import java.util.List;

import com.zh.news.po.Elder;
import com.zh.news.po.NewsType;

public interface NewsTypeMapper {

	void save(Elder elder);

	List<Elder> findAll();

	Elder findNewsTypeById(String elderIdCard);

	void edit(Elder elder);

	void delete(String elderIdCard);

	List<Elder> findElderByIdCard(String elderIdCard);

}
