package com.sist.web;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.sist.dao.*;
import com.sist.vo.*;
import java.util.*;

import javax.servlet.http.HttpSession;

@RestController
public class BoardReplyRestController {
	
	@Autowired
	private BoardReplyDAO dao;
	
	//수정, 삭제 시 id 확인용
	public String boardReplyData(List<BoardReplyVO> list,String id)
	{
		JSONArray arr=new JSONArray();
		int i=0;
		for(BoardReplyVO rvo:list)
		{
			JSONObject obj=new JSONObject();
			obj.put("brno",rvo.getBrno());
			obj.put("bno",rvo.getBno());
			obj.put("id",rvo.getId());
			obj.put("msg",rvo.getMsg());
			obj.put("dbday",rvo.getDbday());
			if(i==0)
			{
				obj.put("sessionId",id);
			}
			i++;
			arr.add(obj);
		}
		return arr.toJSONString();
	}
	
	//댓글 리스트
	@GetMapping(value = "board/reply_list.do",produces = "text/plain;charset=utf-8")
	public String board_reply_list(int bno,HttpSession session)
	{
		//아이디 세션에서 받아오기
		MemberVO mvo=(MemberVO)session.getAttribute("mvo");
	      
	    String sId = "no";
	    if(mvo!=null)
	    	sId=mvo.getId();

		String result="";
		
		BoardReplyVO vo=new BoardReplyVO();
		vo.setBno(bno);
		List<BoardReplyVO> list=dao.boardReplyList(vo);
		
		result=boardReplyData(list,sId);
		
		return result; //JSON 형식
	}
	
	// 댓글 작성 insert
	@GetMapping(value = "board/reply_insert.do", produces = "text/plain;charset=utf-8")
	public String reply_insert(BoardReplyVO vo,HttpSession session)
	{
		
		MemberVO mvo=(MemberVO)session.getAttribute("mvo");
	      
	    String sId="no";
	    String sName="no";
	    if(mvo!=null) //세션 있으면
	    {
	    	sId=mvo.getId();
	    	sName=mvo.getName();
	    }
		vo.setId(sId);
		vo.setName(sName);
		
		dao.boardReplyInsert(vo);
		List<BoardReplyVO> list=dao.boardReplyList(vo);
		String result=boardReplyData(list,sId);
		
		return result;
		
	}
	
	//댓글 update
	
	//댓글 delete
}
