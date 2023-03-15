package com.sist.web;
import java.util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sist.vo.*;
import com.sist.dao.*;

@Controller
public class ClassController {
	@Autowired
	private ClassService service;
	
	@GetMapping("class/class_list.do")
	public String class_list(int cateno,int detail_cateno,Model model)
	{
		System.out.println(cateno);
		System.out.println(detail_cateno);

		Map map = new HashMap();

		map.put("cateno", cateno);
		map.put("detail_cateno", detail_cateno);
		List<ClassDetailVO> list=service.classListData(map);
		List<CategoryVO> cList=service.classCateData();

		
		  //Map map = new HashMap();
		  
		  //map.put("cateno", cateno); 
		  //map.put("detail_cateno", detail_cateno);
		 // map.put("start", map)
		  //List<ClassDetailVO> list=service.classListData(map);
		  List<CategoryVO> cList=service.classCateData();
		 
		
		model.addAttribute("cateno",cateno );
		model.addAttribute("detail_cateno",detail_cateno );
		model.addAttribute("cList",cList);
		
		return "class/class_list";
	}
	
	@GetMapping("class/class_before_detail.do")
	public String class_before_detail(int cno,HttpServletResponse response,RedirectAttributes ra)
	{
		Cookie cookie=new Cookie("classHaru"+cno,String.valueOf(cno));
		cookie.setPath("/");
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		ra.addAttribute("cno",cno);
		return "redirect:../class/class_detail.do";
	}
	
	@GetMapping("class/class_detail.do")
	public String class_detail(int cno,Model model,HttpSession session)
	{
		String id=(String)session.getAttribute("id");
		JJimVO vo=new JJimVO();
		vo.setAjno(cno);
		vo.setId(id);
		model.addAttribute("vo",vo);
		model.addAttribute("cno",cno);
		return "class/class_detail";
	}
	

	public String class_detail(int cno,Model model)
	{
		model.addAttribute("cno",cno);
		return "class/class_detail";
	}
}