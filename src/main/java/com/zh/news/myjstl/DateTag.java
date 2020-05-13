package com.zh.news.myjstl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class DateTag extends TagSupport{
	private Date date;
	private String pattern = "yyyy-MM-dd HH:mm:ss";
	@Override
	public int doStartTag() throws JspException {
		if(date!=null){
			//响应数据
			try {
				JspWriter out = pageContext.getOut();
				String str = new SimpleDateFormat(pattern).format(date);
				out.print(str);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return SKIP_BODY;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPattern() {
		return pattern;
	}
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}
    
}
