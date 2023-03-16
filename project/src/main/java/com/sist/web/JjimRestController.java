package com.sist.web;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.JjimDAO;
import com.sist.vo.BoardVO;
import com.sist.vo.ClassDetailVO;

import com.sist.vo.JJimVO;


@RestController
public class JjimRestController {
	@Autowired
	private JjimDAO dao;
	
	@GetMapping("jjim/insert_vue.do")
	public void jjim_insert_vue(int cno,HttpSession session)
	{
		String id=(String)session.getAttribute("id");

		Map map=new HashMap();
		map.put("id", id);
		map.put("cno", cno);
		System.out.println(id);
		System.out.println(cno);
		dao.jjimInsert(map);
	}
	

	@GetMapping("jjim/delete_vue.do")
	public void jjim_delete_vue(int cno)
	{
		dao.jjimDelete(cno);
	}
}