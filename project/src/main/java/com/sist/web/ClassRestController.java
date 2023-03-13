package com.sist.web;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;
@RestController
public class ClassRestController {
	@Autowired
	private ClassDAO dao;
	
	@GetMapping(value="class/class_cate_vue.do",produces="text/plain;charset=utf-8")
	public String class_cate_vue() {
		List<CategoryVO> list=dao.classCateData();
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
		List<CategoryDetailVO> list=dao.classCateDetailData(cateno);
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
		List<ClassDetailVO> list=dao.classListData(map);
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
		}
		return arr.toJSONString();
	}
	
	
}
