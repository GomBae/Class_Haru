package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.sist.dao.JjimDAO;

@Controller
public class JjimController {
	@Autowired
	private JjimDAO dao;
	
	@GetMapping("jjim/insert.do")
	   public String jjim_insert()
	   {
	      return "redirect:../class/class_detail.do?cno=";
	   }
	
	@GetMapping("jjim/delete.do")
	   public String jjim_delete()
	   {
	      return "redirect:../class/class_detail.do?cno=";
	   }
}
