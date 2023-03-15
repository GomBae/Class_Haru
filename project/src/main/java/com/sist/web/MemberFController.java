package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.sist.dao.MemberDAO;

@Controller
public class MemberFController {
	@Autowired
	private MemberDAO dao;
	
	@GetMapping("member/loginjoin.do")
	public String member_join() {
		return "member/loginjoin";
	}
}
