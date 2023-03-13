package com.sist.web;
import java.util.*;
import com.sist.vo.*;
import com.sist.dao.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MypageRestController {
	@Autowired
	private MypageDAO dao;
	
	@GetMapping("mypage/text_insert_vue.do")
	public String text_insert_vue(TextVO vo) {
		dao.textInsert(vo);
		return "";
	}
	
	@GetMapping(value = "mypage/stext_list_vue.do", produces = "text/plain;charset=UTF-8")
	public String stext_vue(int page) {
		Map map=new HashMap();
		map.put("start", (page*10)-9);
		map.put("end", page*10);
		map.put("id", "hong@naver.com");
		List<TextVO> list=dao.myTextsList(map);
		int totalpage=dao.stextTotalPage(map);
		
		JSONArray arr=new JSONArray();
		int i=0;
		for(TextVO vo:list) {
			JSONObject obj=new JSONObject();
			obj.put("tno", vo.getTno());
			obj.put("id", vo.getId());
			obj.put("nickname", vo.getNickname());
			obj.put("msg", vo.getMsg());
			obj.put("receiver", vo.getReceiver());
			obj.put("dbday", vo.getDbday());
			obj.put("recvday", vo.getRecvday());
			if(i==0) {
				obj.put("curpage", page);
				obj.put("totalpage", totalpage);
			}
			i++;
			arr.add(obj);
		}
		return arr.toJSONString();
	}
	
	@GetMapping(value = "mypage/rtext_list_vue.do", produces = "text/plain;charset=UTF-8")
	public String rtext_vue(int page) {
		Map map=new HashMap();
		map.put("start", (page*10)-9);
		map.put("end", page*10);
		map.put("receiver", "떡볶이처돌이");
		List<TextVO> list=dao.myTextrList(map);
		int totalpage=dao.rtextTotalPage(map);
		
		JSONArray arr=new JSONArray();
		int i=0;
		for(TextVO vo:list) {
			JSONObject obj=new JSONObject();
			obj.put("tno", vo.getTno());
			obj.put("id", vo.getId());
			obj.put("nickname", vo.getNickname());
			obj.put("msg", vo.getMsg());
			obj.put("receiver", vo.getReceiver());
			obj.put("dbday", vo.getDbday());
			obj.put("recvday", vo.getRecvday());
			if(i==0) {
				obj.put("curpage", page);
				obj.put("totalpage", totalpage);
			}
			i++;
			arr.add(obj);
		}
		return arr.toJSONString();
	}
}
