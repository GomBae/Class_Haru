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
	public String class_list(String cateno,String detail_cateno,Model model)
	{
		Map map = new HashMap();
		int i_cateno = Integer.parseInt(cateno);
		int i_dcateno = Integer.parseInt(detail_cateno);
		map.put("cateno", i_cateno);
		map.put("detail_cateno", i_dcateno);
		List<ClassDetailVO> list=dao.classListData(map);
		
		model.addAttribute("cateno",i_cateno );
		model.addAttribute("detail_cateno",i_dcateno );
		model.addAttribute("list",list);
		
		return "class/class_list";
	}
}
