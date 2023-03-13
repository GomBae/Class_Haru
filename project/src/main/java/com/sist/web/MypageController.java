package com.sist.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	@GetMapping("mypage/main.do")
	public String mypage_main() {
		return "mypage/main";
	}
	
	@GetMapping("mypage/myjjim.do")
	public String mypage_jjim() {
		return "mypage/myjjim";
	}
	
	@GetMapping("mypage/myclass.do")
	public String mypage_class() {
		return "mypage/myclass";
	}
	
	@GetMapping("mypage/myquestion.do")
	public String mypage_question() {
		return "mypage/myquestion";
	}
	
	@GetMapping("adminpage/main.do")
	public String adminpage_main() {
		return "adminpage/main";
	}
	
	@GetMapping("tutorpage/main.do")
	public String tutorpage_main() {
		return "tutorpage/main";
	}
}
