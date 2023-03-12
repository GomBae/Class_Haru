package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminpageController {
	@GetMapping("adminpage/classCon.do")
	public String adminpage_classConfirm() {
		return "adminpage/classCon";
	}
	
	@GetMapping("adminpage/tutCon.do")
	public String adminpage_tutConfirm() {
		return "adminpage/tutCon";
	}
	
	@GetMapping("adminpage/member.do")
	public String adminpage_member() {
		return "adminpage/member";
	}
}
