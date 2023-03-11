package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.*;
import com.sist.dao.BoardDAO;
import com.sist.vo.BoardVO;

@Controller
public class BoardController {
	@Autowired
	private BoardDAO dao;
	
	// 게시판 type : 1번 자유주제, 2번 스터디&모임, 3번 공지사항
	
	@GetMapping("board/board_main.do")
	public String board_main(String btype,Model model)
	{
		if(btype==null)
			btype="1";
		
		BoardVO wvo=new BoardVO();
		
		List<BoardVO> writerList=dao.boardWriterTop5(wvo); //게시글수 0
				
		model.addAttribute("btype",btype);
		model.addAttribute("writerList",writerList);
		return "board/board_main";
	}
	
	@GetMapping("board/board_detail.do")
	public String board_detail(int bno,Model model)
	{
		model.addAttribute("bno",bno);
		return "board/board_detail"; 
	}
	
	@GetMapping("board/board_insert.do")
	public String board_insert(int btype,Model model)
	{
		model.addAttribute("btype",btype);
		return "board/board_insert";
	}
	@GetMapping("board/board_update.do")
	public String board_update(String bno,Model model)
	{
		model.addAttribute("bno",bno);
		return "board/board_update";
	}
}
