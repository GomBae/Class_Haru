package com.sist.web;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;


import com.sist.dao.*;
import com.sist.vo.*;
@RestController
public class ClassRestController {
	@Autowired
	private ClassService service;

	@Autowired
	private JjimDAO dao;

	
	@GetMapping(value="class/class_cate_vue.do",produces="text/plain;charset=utf-8")
	public String class_cate_vue() {
		List<CategoryVO> list=service.classCateData();
	     JSONArray arr=new JSONArray();
	     for(CategoryVO vo:list)
	     {
	        JSONObject obj=new JSONObject();
	        obj.put("cateno", vo.getCateno());
	        obj.put("catename", vo.getCatename());
	        arr.add(obj);
	     }
	    return arr.toJSONString();
	}
	
	@GetMapping(value="class/class_detail_cate_vue.do",produces="text/plain;charset=utf-8")
	public String class_detail_cate_vue(int cateno) {
		List<CategoryDetailVO> list=service.classCateDetailData(cateno);
		JSONArray arr=new JSONArray();
		for(CategoryDetailVO vo:list)
		{
			JSONObject obj=new JSONObject();
			obj.put("cateno", vo.getCateno());
			obj.put("detail_cateno", vo.getDetail_cateno());
			obj.put("detail_catename", vo.getDetail_catename());
			arr.add(obj);
		}
		return arr.toJSONString();
	}
	@GetMapping(value="class/class_list_vue.do",produces="text/plain;charset=utf-8")

	public String class_list_vue(int cateno,int detail_cateno)
	{
		Map map=new HashMap();
		map.put("cateno", cateno);
		map.put("detail_cateno", detail_cateno);
		List<ClassDetailVO> list=service.classListData(map);
  }
	public String class_list_vue(int cateno,int detail_cateno,String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		System.out.println("page="+page);
		System.out.println("detail_cateno"+detail_cateno);
		System.out.println("cateno"+cateno);
		Map map=new HashMap();
		map.put("cateno", cateno);
		map.put("detail_cateno", detail_cateno);
		map.put("start", (curpage*20)-19);
		map.put("end", curpage*20);
		System.out.println((curpage*20)-19);
		System.out.println(curpage*20);
		List<ClassDetailVO> list=service.classListData(map);
		int totalpage=service.classTotalPage();
		String count=service.classRowCount(map);
		map.put("count", count);
	    final int BLOCK=5;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalpage)
			  endPage=totalpage;
		  
		  int i=0;

		JSONArray arr=new JSONArray();
		for(ClassDetailVO vo:list)
		{
			//cno,title,image,location,perprice,jjim_count,cateno,
			//detail_cateno,onoff,tutor_info_nickname
			JSONObject obj=new JSONObject();
			obj.put("cno", vo.getCno());
			obj.put("title", vo.getTitle());
			obj.put("cateno", vo.getCateno());
			obj.put("detail_cateno", vo.getDetail_cateno());

			obj.put("location", vo.getLocation());

			String location=vo.getLocation();
			if(location==null)
			{
				location=location;
			}
			else
			{
				location=location.replace("^", ",");
			}
			
			obj.put("location", location);

			
			obj.put("perprice", vo.getPerprice());
			obj.put("jjim_count", vo.getJjim_count());
			obj.put("onoff", vo.getOnoff());
			obj.put("tutor_info_nickname", vo.getTutor_info_nickname());
			String image=vo.getImage();
			int size=image.indexOf("^");
			if(size<0)
			{
				image=image;
			}
			else
			{
				image=image.substring(0,image.indexOf("^"));
			}
			
			obj.put("image", image);

			
			arr.add(obj);

			if(i==0)
			{
				obj.put("curpage", curpage);
				  obj.put("totalpage", totalpage);
				  obj.put("startPage", startPage);
				  obj.put("endPage", endPage);
				  obj.put("count", count);
			}
			arr.add(obj);
			i++;

		}
		return arr.toJSONString();
	}
	
	@GetMapping(value="class/cookie_data_vue.do",produces = "text/plain;charset=UTF-8")
	public String class_cookie_data(HttpServletRequest request)
	{
		Cookie[] cookies=request.getCookies();
		List<ClassDetailVO> list=new ArrayList<ClassDetailVO>();
		if(cookies!=null)
		{
			for(int i=cookies.length-1;i>=0;i--)
			{
				if(cookies[i].getName().startsWith("classHaru"))
				{
					String cno=cookies[i].getValue();
					ClassDetailVO vo=service.classDetailData(Integer.parseInt(cno));
					list.add(vo);
				}
			}
		}
		JSONArray arr=new JSONArray();
		int i=0;
		for(ClassDetailVO vo:list)
		{
			if(i>5) break;
			JSONObject obj=new JSONObject();
			obj.put("cno", vo.getCno());
			obj.put("cateno", vo.getCateno());
			obj.put("detail_cateno", vo.getDetail_cateno());
			obj.put("title", vo.getTitle());
			obj.put("image", vo.getImage());

			arr.add(obj);
			i++;
		}
		return arr.toJSONString();
	}
	
	@GetMapping(value="class/class_detail_vue.do",produces = "text/plain;charset=UTF-8")
	public String class_detail_vue(int cno)
	{
		ClassDetailVO vo=service.classDetailData(cno);

		JSONObject obj=new JSONObject();
		obj.put("cno", vo.getCno());
		obj.put("cateno", vo.getCateno());
		obj.put("detail_cateno", vo.getDetail_cateno());
		obj.put("title", vo.getTitle());
		String image=vo.getImage();

		int size=image.indexOf("^");
		if(size<0)
		{
			image=image;
		}
		else
		{
			image=image.substring(0,image.indexOf("^"));
		}
		
		obj.put("image", image);


		String image1=image.substring(0,image.indexOf("^"));
		String image2=image.substring(image.indexOf("^")+1);
//        image=image.substring(0,image.indexOf("^"));
        obj.put("image1", image1);
        obj.put("image2", image2);

		obj.put("tno", vo.getTno());
		String place=vo.getPlace();
		place=place.substring(0,place.indexOf("^"));
		obj.put("place", place);
		String location=vo.getLocation();
		location=location.substring(0,location.indexOf("^"));
		obj.put("location", location);
		String schedule=vo.getSchedule();
        schedule=schedule.substring(0,schedule.indexOf("^"));
        obj.put("schedule", schedule);
		obj.put("notice", vo.getNotice());
		obj.put("time", vo.getTime());
		obj.put("perprice", vo.getPerprice());
		obj.put("totalprice", vo.getTotalprice());
		obj.put("summary", vo.getSummary());
		obj.put("target", vo.getTarget());
		obj.put("tutor_intro", vo.getTutor_intro());
		obj.put("class_intro", vo.getClass_intro());
		obj.put("class_curri", vo.getClass_curri());
		obj.put("class_video", vo.getClass_video());
		obj.put("onoff", vo.getOnoff());
		obj.put("inwon", vo.getInwon());
		obj.put("tutor_info_nickname", vo.getTutor_info_nickname());
		obj.put("tutor_info_img", vo.getTutor_info_img());
		obj.put("tutor_info_grade_total", vo.getTutor_info_grade_total());
		obj.put("jjim_count", vo.getJjim_count());
		
		return obj.toJSONString();
	}

}
