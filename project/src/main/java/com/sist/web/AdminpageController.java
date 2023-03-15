package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminpageController {
	@GetMapping("adminpage/main.do")
	public String adminpage_main() {
		return "adminpage/main";
	}
//	@GetMapping("adminpage/main.do")
//	public String adminpage_main(Model model) {
//		model.addAttribute("admin_jsp", "../adminpage/home.jsp");
//		return "adminpage/main";
//	}
	
	@GetMapping("adminpage/class.do")
	public String adminpage_class() {
		return "adminpage/class";
	}
	
	@GetMapping("adminpage/tutor.do")
	public String adminpage_tutor() {
		return "adminpage/tutor";
	}
	
	@GetMapping("adminpage/member.do")
	public String adminpage_member() {
		return "adminpage/member";
	}
}
