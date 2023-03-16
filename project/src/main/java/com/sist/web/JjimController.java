package com.sist.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.sist.dao.JjimDAO;
import com.sist.vo.JJimVO;


@Controller
public class JjimController {
	@Autowired
	private JjimDAO dao;
	
	@GetMapping("jjim/insert.do")
	   public String jjim_insert()
	   {

	      return "jjim/insert";
//	      return "redirect:../class/class_detail.do?cno=";
	   }
	
	@GetMapping("jjim/delete.do")
	   public String jjim_delete()
	   {
	      return "jjim/delete";
//	      return "redirect:../class/class_detail.do?cno=";
	   }
}