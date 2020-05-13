package com.zh.news.po;

public class NewsType {
	/**newsTypeId --新闻分类id*/
	private Integer newsTypeId;
	/**typeName --新闻分类名字*/
	private String typeName;

	public NewsType(String typeName) {
		this.typeName = typeName;
	}
	public NewsType() {
	}

	public Integer getNewsTypeId() {
		return newsTypeId;
	}
	public void setNewsTypeId(Integer newsTypeId) {
		this.newsTypeId = newsTypeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
}
