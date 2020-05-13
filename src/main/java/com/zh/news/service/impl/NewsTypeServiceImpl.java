package com.zh.news.service.impl;

import java.util.List;

import com.zh.news.po.Elder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zh.news.mapper.NewsTypeMapper;
import com.zh.news.po.NewsType;
import com.zh.news.service.NewsTypeService;
@Service
public class NewsTypeServiceImpl implements NewsTypeService {
    @Autowired
	private NewsTypeMapper newsTypeMapper;
	@Override
	public void save(Elder elder) {
		newsTypeMapper.save(elder);
	}
	@Override
	public List<Elder> findAll() {
		return newsTypeMapper.findAll();
	}

	@Override
	public Elder findNewsTypeById(String elderIdCard) {
		return newsTypeMapper.findNewsTypeById(elderIdCard);
	}
	@Override
	public void edit(Elder elder) {
		newsTypeMapper.edit(elder);
	}
	@Override
	public void delete(String elderIdCard) {
		newsTypeMapper.delete(elderIdCard);
	}

	@Override
	public boolean booleanNewsTypeByIdCard(String elderIdCard) {
		Boolean flag = false;
		List<Elder> elderList = newsTypeMapper.findElderByIdCard(elderIdCard);
		if(elderList.size()>0){
			flag = true;
		}
		return flag;
	}


}
