package com.sist.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.MemberDAO;
import com.sist.vo.MemberVO;

@RestController
public class MemberRestController {
	@Autowired
	private MemberDAO dao;
	
	@GetMapping(value="member/login_vue.do", produces = "text/html;charset=UTF-8")
	public String member_login(String id,String pwd,HttpSession session)
	{
		String res="";
		MemberVO vo=dao.memberLogin(id, pwd);
		res=vo.getMsg(); //noid, ok, nopwd 넘어감
		if(res.equals("OK"))
		{
			//id,pwd,tel,name,nickname,intro,image,tutor,admin,msg
			session.setAttribute("id", vo.getId());
			session.setAttribute("pwd", vo.getPwd());
			session.setAttribute("tel", vo.getTel());
			session.setAttribute("name", vo.getName());
			session.setAttribute("nickname", vo.getNickname());
			session.setAttribute("intro", vo.getIntro());
			session.setAttribute("image", vo.getImage());
			session.setAttribute("tutor", vo.getTutor());
			session.setAttribute("admin", vo.getAdmin());
		}
		return res;
	}
	
}
