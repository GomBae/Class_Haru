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
}
