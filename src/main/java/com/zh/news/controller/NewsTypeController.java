package com.zh.news.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.zh.news.po.Elder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zh.news.po.NewsType;
import com.zh.news.service.NewsTypeService;
import com.zh.news.utils.NavUtils;
import com.zh.news.utils.Result;

@Controller
@RequestMapping("newsType")
public class NewsTypeController {
	@Autowired
	private NewsTypeService newsTypeService;

	@RequestMapping("/addUI")
    public String addUI(Model model){
		model.addAttribute("mainPage", "newsType/newsTypeSave.jsp");
		model.addAttribute("navCode",NavUtils.messageNavCode("老人管理", "老人信息添加"));
    	return "main/mainTemp";
    }
	@RequestMapping("save")
	public String save(String elderName, String elderGender, int elderAge, String elderHealthy, String elderHouseholdRegister,
					   String elderIdCard, String elderLinkman, String elderLinkphone, String elderAddress, int elderBedId,
					   String elderCheckinDate, String elderLeaveDate) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Elder elder = new Elder();
		elder.setElderName(elderName);
		elder.setElderGender(elderGender);
		elder.setElderAge(elderAge);
		elder.setElderHealthy(elderHealthy);
		elder.setElderHouseholdRegister(elderHouseholdRegister);
		elder.setElderIdCard(elderIdCard);
		elder.setElderLinkman(elderLinkman);
		elder.setElderLinkphone(elderLinkphone);
		elder.setElderAddress(elderAddress);
		elder.setElderBedId(elderBedId);
		Date elderCheckinD = sdf.parse(elderCheckinDate);
		elder.setElderCheckinDate(elderCheckinD);
		Date elderLeaveD = sdf.parse(elderLeaveDate);
		elder.setElderLeaveDate(elderLeaveD);
		// 身份证是否已录入
		boolean flag = false;
		flag = newsTypeService.booleanNewsTypeByIdCard(elderIdCard);
		if(flag == true){
			newsTypeService.edit(elder);
		}else{
			newsTypeService.save(elder);
		}
		return "redirect:listUI.action";
	}
	@RequestMapping("listUI")
	public String listUI(Model model){
		//1.查询新闻列表
		List<Elder> list = newsTypeService.findAll();
		model.addAttribute("list", list);
		model.addAttribute("mainPage", "newsType/newsTypeList.jsp");
		model.addAttribute("navCode",NavUtils.messageNavCode("老人管理", "老人信息管理"));
		return "main/mainTemp";
	}

	@RequestMapping("editUI")
	public String editUI(String elderIdCard,Model model){
		Elder elder = newsTypeService.findNewsTypeById(elderIdCard);
		model.addAttribute("elder", elder);
		model.addAttribute("mainPage", "newsType/newsTypeSave.jsp");
		model.addAttribute("navCode",NavUtils.messageNavCode("老人信息管理", "老人信息修改"));
		return "main/mainTemp";
	}
	@RequestMapping("delete")
	@ResponseBody
	public Result delete(String elderIdCard){
		Result result = new Result();
		try {
			newsTypeService.delete(elderIdCard);
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setErrorMsg("删除失败");
		}
		return result;
	}
}
