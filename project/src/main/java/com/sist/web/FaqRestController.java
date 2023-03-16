package com.sist.web;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.BoardVO;
import com.sist.vo.FAQVO;
@RestController
public class FaqRestController {
	@Autowired
	private FaqDAO dao;
	
	@GetMapping(value="faq/tutee_list_vue.do",produces = "text/plain;charset=utf-8")
	public String tuteeList() {
		List<FAQVO> list=dao.tutee_list();
		JSONArray arr=new JSONArray();
		
		for(FAQVO vo:list) {
			JSONObject obj=new JSONObject();
			obj.put("no", vo.getNo());
			obj.put("subject", vo.getSubject());
			obj.put("content", vo.getContent());
			arr.add(obj);
			
		}
		return arr.toJSONString();
	}
	@GetMapping(value="faq/tutor_list_vue.do",produces = "text/plain;charset=utf-8")
	public String totorList() {
		List<FAQVO> list=dao.tutor_list();
		JSONArray arr=new JSONArray();
		
		for(FAQVO vo:list) {
			JSONObject obj=new JSONObject();
			obj.put("no", vo.getNo());
			obj.put("subject", vo.getSubject());
			obj.put("content", vo.getContent());
			arr.add(obj);
			
		}
		return arr.toJSONString();
	}
	@GetMapping(value="faq/list_vue.do",produces = "text/plain;charset=UTF-8")
	   public String faq_list(int page) {
		   Map map=new HashMap();
		   map.put("start", (page*5)-4);
		   map.put("end", page*5);
		   List<FAQVO> list=dao.faqListData(map);
		   int totalpage=dao.faqTotalPage();
		   /*
		    *   [{ano:1,....,curpage:1,totalpage:3},{ano:2...},{ano:3..,curpage:1,totalpage:3}]
		    */
		   final int BLOCK=5;
			  int startPage=((page-1)/BLOCK*BLOCK)+1;
			  int endPage=((page-1)/BLOCK*BLOCK)+BLOCK;
			  if(endPage>totalpage)
				  endPage=totalpage;
		   //JSON변환 
		   
		   JSONArray arr=new JSONArray();
		   int i=0;
		   for(FAQVO vo:list)
		   {
			   JSONObject obj=new JSONObject();
			   obj.put("ano", vo.getAno());
			   obj.put("subject", vo.getSubject());
			   obj.put("name", vo.getName());
			   obj.put("dbday", vo.getDbday());
			   obj.put("hit", vo.getHit());
			   if(i==0)
			   {
				   obj.put("curpage", page);
				   obj.put("totalpage", totalpage);
				   obj.put("startPage", startPage);
				   obj.put("endPage", endPage);
			   }
			   
			   arr.add(obj);
			   i++;
		   }
		   return arr.toJSONString();
	   }
	   @GetMapping("faq/insert_vue.do")
	   public String faq_insert(FAQVO vo)
	   {
		   dao.faqInsert(vo);
		   return "";
	   }
	   
	   @GetMapping(value = "faq/detail_vue.do",produces = "text/plain;charset=UTF-8" )
	   public String faq_detail(int ano)
	   {
		   FAQVO vo=dao.faqDetailData(ano);
		   JSONObject obj=new JSONObject();
		   obj.put("ano", vo.getAno());
		   obj.put("subject", vo.getSubject());
		   obj.put("name", vo.getName());
		   obj.put("dbday", vo.getDbday());
		   obj.put("hit", vo.getHit());
		   obj.put("content", vo.getContent());
		   return obj.toJSONString();
	   }
	   
	   @GetMapping(value="faq/update_vue.do",produces = "text/plain;charset=UTF-8")
	   public String faq_update(int ano)
	   {
		   FAQVO vo=dao.faqDetailData(ano);
		   JSONObject obj=new JSONObject();
		   obj.put("ano", vo.getAno());
		   obj.put("subject", vo.getSubject());
		   obj.put("name", vo.getName());
		   obj.put("content", vo.getContent());
		   return obj.toJSONString();
	   }
	   @GetMapping("faq/update_ok_vue.do")
	   public String faq_update_ok(FAQVO vo)
	   {
		   String res=dao.faqUpdate(vo);
		   return res;
	   }
	   @GetMapping("faq/delete_vue.do")
	   public String faq_delete_ok(int ano,String pwd)
	   {
		   String res=dao.faqDelete(ano, pwd);
		   return res;
	   }
	

}
