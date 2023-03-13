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
public class AdminRestController {
	@Autowired
	private AdminDAO dao;
	
	@GetMapping(value = "adminpage/notice_list_vue.do", produces = "text/plain;charset=UTF-8")
	public String notice_list_vue(int page) {
		Map map=new HashMap();
		map.put("start", (page*10)-9);
		map.put("end", page*10);
		List<BoardVO> list=dao.noticeList(map);
		int totalpage=dao.noticeTotalPage();
		
		final int BLOCK=10;
		int startpage=(page-1)/BLOCK*BLOCK+1;
		int endpage=(page-1)/BLOCK*BLOCK+BLOCK;
		if(endpage>totalpage) endpage=totalpage;
		
		JSONArray arr=new JSONArray();
		int i=0;
		for(BoardVO vo:list) {
			JSONObject obj=new JSONObject();
			obj.put("bno", vo.getBno());
			obj.put("btype", vo.getBtype());
			obj.put("id", vo.getId());
			obj.put("title", vo.getTitle());
			obj.put("hit", vo.getHit());
			obj.put("tag", vo.getTag());
			if(i==0) {
				obj.put("curpage", page);
				obj.put("totalpage", totalpage);
				obj.put("startpage", startpage);
				obj.put("endpage", endpage);
			}
			i++;
			arr.add(obj);
		}
		return arr.toJSONString();
	}
}
