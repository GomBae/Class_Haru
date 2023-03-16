package com.sist.web;


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
		return "mypage/main";
	}
	
	@GetMapping("mypage/myclass.do")
	public String mypage_class() {
		return "mypage/main";
	}
	
	@GetMapping("mypage/myquestion.do")
	public String mypage_question() {
		return "mypage/main";
	}
	
	@GetMapping("mypage/profileUpdate.do")
	public String mypage_profileUpdate() {
		return "mypage/profileUpdate";
	}
}
