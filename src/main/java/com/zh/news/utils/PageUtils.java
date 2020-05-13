package com.zh.news.utils;

import java.util.ArrayList;
import java.util.List;

public class PageUtils {

	public static int[] getStep(int step,int pageNum,int currentPage){
		if(step>pageNum){
			return new int[]{1,pageNum};
		}
		if(currentPage<=step/2){
			return new int[]{1,step};
		}
		if(currentPage>pageNum-step/2){
			return new int[]{pageNum-step+1,pageNum};
		}
		int begin = currentPage-step/2;
		int end = currentPage+step/2;
		
		return new int[]{begin,end};
	}
	public static List<Integer> getPageNav(int step,int pageNum,int currentPage){
		List<Integer> list = new ArrayList<Integer>();
		int[] arr = getStep(step, pageNum, currentPage);
		for(int i=arr[0];i<=arr[1];i++){
			list.add(i);
		}
		return list;
	}

}
