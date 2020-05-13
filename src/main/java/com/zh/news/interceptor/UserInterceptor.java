package com.zh.news.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class UserInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp,
			Object arg2) throws Exception {
		//用户登录放行，用户没有登陆，拦截到登陆页面
		HttpSession session = req.getSession();
		Object currentUser = session.getAttribute("currentUser");
		if(currentUser!=null){
			return true;
		} else{
			resp.sendRedirect(req.getContextPath()+"/main/loginUI.action");
			return false;
		}
		
	}

}
