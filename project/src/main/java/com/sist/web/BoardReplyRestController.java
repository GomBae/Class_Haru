package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.sist.dao.*;
import com.sist.vo.*;
import java.util.*;

@RestController
public class BoardReplyRestController {
	
	@Autowired
	private BoardReplyDAO dao;
	
	//댓글 리스트
	
	//댓글 insert
	@GetMapping(value="board/reply_insert_vue.do",produces="text/plain;utf-8")
	public void reply_insert_vue(BoardReplyVO vo)
	{
		dao.replyInsert(vo);
	}
	
	//댓글 update
	
	//댓글 delete
}
