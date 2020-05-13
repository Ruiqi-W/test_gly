package com.zh.news.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zh.news.mapper.UserMapper;
import com.zh.news.po.User;
import com.zh.news.service.UserService;
import com.zh.news.utils.MD5Util;

@Controller
@RequestMapping("main")
public class UserController {
	@Autowired
	private UserService userService;
    //1.访问登陆页面
	@RequestMapping("loginUI")
	public String loginUI(){
		return "main/login";
	}
	//2.登陆访问
	@RequestMapping("loginSubmit")
	public String LoginSubmit(User user,HttpSession session,Model model){
		user.setUserPwd(MD5Util.getMD5Str(user.getUserPwd()));
		User currentUser = userService.findUserNameByNameAndPwd(user);
		//1.如果用户存在登陆成功，否则登陆失败
		if(currentUser!=null){
			session.setAttribute("currentUser", currentUser);
			return "redirect:mainUI.action";
		} else{
			model.addAttribute("error", "用户名或密码错误");
		    return "main/login";
		}
	}
	//3.创建访问后台界面
	@RequestMapping("mainUI")
	public String mainUI(){
		return "main/mainTemp";
	}
	//4.安全退出
	@RequestMapping("exit")
	public String exit(HttpSession session){
		//session失效
		session.invalidate();
		return "redirect:loginUI.action";
	}
}
