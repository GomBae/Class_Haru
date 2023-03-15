package com.sist.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sist.dao.MemberDAO;
import com.sist.vo.MemberVO;

@Controller
public class MemberController {
	
	
	@GetMapping("member/loginpage.do")
	public String member_login() {
		return "member/loginpage";
	}
	
//	@GetMapping("member/loginjoin.do")
//	public String member_join() {
//		return "member/loginjoin";
//	}
	
	@GetMapping("member/loginemail.do")
	public String member_loginEmail() {
		return "member/loginemail";
	}
	
	@GetMapping("member/logout.do")
	public String member_logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:main";
	}
	
}
