package com.zh.news.po;

import java.util.Date;

public class News {
	/**newsId --新闻id*/
	private Integer newsId;
	/**title --新闻标题*/
	private String title;
	/**content --新闻内容*/
	private String content;
	/**publishDate --新闻发布时间*/
	private Date publishDate;
	/**author --新闻作者*/
	private String author;
	/**typeId --新闻类型id*/
	private Integer typeId=-1;
	/**typeName --新闻类型名字*/
	private String typeName;
	/**click --新闻的阅读数量*/
	private Integer click = 0;
	/**isHead --是否是头条新闻 1是 0否*/
	private Integer isHead = 0;
	/**isImage --是否是轮播图 1是 0否*/
	private Integer isImage =0;
	/**imageName --图片存储路径*/
	private String imgUrl;
	/**isHot --是否是最热新闻 1是 0否*/
	private Integer isHot = 0;
	
	private NewsType newsType;

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getClick() {
		return click;
	}

	public void setClick(Integer click) {
		this.click = click;
	}

	public Integer getIsHead() {
		return isHead;
	}

	public void setIsHead(Integer isHead) {
		this.isHead = isHead;
	}

	public Integer getIsImage() {
		return isImage;
	}

	public void setIsImage(Integer isImage) {
		this.isImage = isImage;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public Integer getIsHot() {
		return isHot;
	}

	public void setIsHot(Integer isHot) {
		this.isHot = isHot;
	}

	public NewsType getNewsType() {
		return newsType;
	}

	public void setNewsType(NewsType newsType) {
		this.newsType = newsType;
	}
	
	
}
