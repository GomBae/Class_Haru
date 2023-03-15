package com.sist.web;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.sist.dao.*;
import com.sist.vo.*;

@RestController
public class BoardRestController {
	@Autowired
	private BoardDAO dao;
	
	//게시판 메인
	@GetMapping(value="board/board_main_vue.do",produces="text/plain;charset=utf-8")
	public String board_main(String btype,String page,Model model,HttpServletRequest request)
	{
		// 게시판 btype : 1번 자유주제, 2번 스터디&모임, 3번 공지사항 
		if(btype==null)
			btype="1";
		if(page==null)
			page="1";
		
		int curpage=Integer.parseInt(page);
		int type=Integer.parseInt(btype); 
		
		Map map=new HashMap();
		map.put("btype",type);
		map.put("start",(curpage*4)-3);
		map.put("end",curpage*4);
		
		//세션 id
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		List<BoardVO> list=dao.boardListData(map);
		int totalpage=dao.boardListTotalPage(type);
		int replyCnt=0;
		
		JSONArray arr=new JSONArray();
		int i=0;
		for(BoardVO vo:list)
		{
			JSONObject obj=new JSONObject();
			obj.put("bno",vo.getBno());
			obj.put("title",vo.getTitle());
			obj.put("content",vo.getContent());
			obj.put("tag",vo.getTag());
			obj.put("id",id); //세션id
			obj.put("nickname",vo.getNickname());
			obj.put("dbday",vo.getDbday());
			obj.put("hit",vo.getHit());
			replyCnt=dao.boardReplyCount(vo.getBno());
			obj.put("replyCnt",replyCnt);
			if(i==0)
			{
				obj.put("curpage",curpage);
				obj.put("totalpage",totalpage);
				obj.put("btype",type);
			}
			arr.add(obj);
			i++;
			
		}
		return arr.toJSONString();
	}
	
	//게시판 검색
	@GetMapping(value="board/board_main_search_vue",produces="text/plain;charset=utf-8")
	public String board_main_search(int btype,String page,String word,Model model)
	{
		if(word==null)
		{
			word="all";
		}
		
		
		if(page==null)
			page="1";
		
		int curpage=Integer.parseInt(page);
		
		Map map=new HashMap();
		map.put("btype",btype);
		map.put("start",(curpage*4)-3);
		map.put("end",curpage*4);
		map.put("word",word);
		
		List<BoardVO> list=dao.boardSearchList(map);
		
		int searchTotalpage=dao.boardSearchTotalPage(map);
		//int searchCnt=dao.boardSearchCount();
		
		JSONArray arr=new JSONArray();
		int i=0;
		for(BoardVO vo:list)
		{
			JSONObject obj=new JSONObject();
			obj.put("bno",vo.getBno());
			obj.put("title",vo.getTitle());
			obj.put("content",vo.getContent());
			obj.put("tag",vo.getTag());
			obj.put("id",vo.getId());
			obj.put("nickname",vo.getNickname());
			obj.put("dbday",vo.getDbday());
			obj.put("hit",vo.getHit());
			int replycount=vo.getReplyCnt();
			obj.put("replyCnt",replycount);
			if(i==0)
			{
				obj.put("curpage",curpage);
				obj.put("totalpage",searchTotalpage);
				//obj.put("searchCnt",searchCnt);
				obj.put("word",word);
				obj.put("btype",btype);
			}
			arr.add(obj);
			i++;
			
		}
		return arr.toJSONString();
	}
	
	//세션 id
	@GetMapping(value="board/idCheck_vue.do",produces="text/plain;charset=utf-8")
	public String idCheck(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		String sessionId=(String)session.getAttribute("id");
		
		JSONObject obj=new JSONObject();
		obj.put("id",sessionId);
		return obj.toJSONString();
	}
	
	//게시글 insert
	@GetMapping("board/board_insert_vue.do")
	public void board_insert_vue(BoardVO vo,HttpSession session)
	{
		String id=(String)session.getAttribute("id");
		vo.setId(id);
		dao.boardInsert(vo);
	}
	
	//게시글 상세보기
	@GetMapping(value="board/board_detail_vue.do",produces="text/plain;charset=utf-8")
	public String board_detail_vue(int bno,HttpSession session)
	{
		BoardVO vo=dao.boardDetailData(bno);
		//String id=(String)session.getAttribute("mvo.id");
		
//		String res="";
//		String sessionId=(String)session.getAttribute("mvo.id");
//		String id=vo.getId();
//		if(sessionId.equals(id))
//			res="ok";
//		else
//			res="no";
		
		int replyCnt=dao.boardReplyCount(bno);
		JSONObject obj=new JSONObject();
		//obj.put("sessionId",id); //세션id
		obj.put("id",vo.getId()); //게시글 작성자 id
		//obj.put("res",res);
		obj.put("bno",vo.getBno());
		obj.put("btype",vo.getBtype());
		obj.put("title",vo.getTitle());
		obj.put("nickname",vo.getNickname());
		obj.put("dbday",vo.getDbday());
		obj.put("image",vo.getImage());
		obj.put("content",vo.getContent());
		obj.put("hit",vo.getHit());
		obj.put("tag",vo.getTag());
		obj.put("replyCnt",replyCnt);
		return obj.toJSONString();
	}
	
	//게시글 수정용 상세보기
	@GetMapping(value="board/board_update_vue.do",produces="text/plain;charset=utf-8")
	public String board_update_vue(int bno)
	{
		BoardVO vo=dao.boardDetailForUpdate(bno);
		JSONObject obj=new JSONObject();
		obj.put("btype",vo.getBtype());
		obj.put("bno",vo.getBno());
		obj.put("title",vo.getTitle());
		obj.put("tag",vo.getTag());
		obj.put("content",vo.getContent());
		return obj.toJSONString();
	}
	
	//게시글 실제 수정
	@GetMapping("board/board_update_ok_vue.do")
	public void board_update_ok_vue(BoardVO vo)
	{
		dao.boardUpdate(vo);
	}
	
	//게시글 삭제
	@GetMapping("board/board_delete_vue.do")
	public void board_delete_vue(int bno)
	{
		dao.boardDelete(bno);
	}
}
