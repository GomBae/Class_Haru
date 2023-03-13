package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.JjimDAO;
import com.sist.vo.BoardVO;
import com.sist.vo.ClassDetailVO;

@RestController
public class JjimRestController {
	@Autowired
	private JjimDAO dao;
	
	@GetMapping("jjim/insert_vue.do")
	public void jjim_insert_vue(ClassDetailVO vo)
	{
		dao.jjimInsert(vo);
	}
	
	@GetMapping("jjim/delete_vue.do")
	public void jjim_delete_vue(int cno)
	{
		dao.jjimDelete(cno);
	}
}
