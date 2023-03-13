package com.sist.web;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sist.vo.*;
import com.sist.dao.*;

@Controller
public class ClassController {
	@Autowired
	private ClassDAO dao;
	
	@GetMapping("class/class_list.do")
	public String class_list(int cateno,int detail_cateno,Model model)
	{
		System.out.println(cateno);
		System.out.println(detail_cateno);
		Map map = new HashMap();

		map.put("cateno", cateno);
		map.put("detail_cateno", detail_cateno);
		List<ClassDetailVO> list=dao.classListData(map);
		List<CategoryVO> cList=dao.classCateData();
		
		model.addAttribute("cateno",cateno );
		model.addAttribute("detail_cateno",detail_cateno );
		model.addAttribute("cList",cList);
		
		return "class/class_list";
	}
	
}