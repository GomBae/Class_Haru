package com.sist.web;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.ReserveDAO;
import com.sist.vo.ClassDetailVO;

@RestController
public class ReserveRestController {
	
	/*
		클래스1개={이름:'',일정:'1^2^3',place:'1^2^3'}
		         vo.title   vo.schedule     vo.place
		         
		         일정&장소={일정:1,place:1}
		
	*/
	
	@Autowired
	private ReserveDAO dao;
	
	@GetMapping(value="reserve/reserve_vue.do",produces="text/plain;charset=utf-8")
	public String reserve_reserve_vue(int cno)
	{
		ClassDetailVO vo=dao.classScheduleInfo(cno);

		JSONObject obj=new JSONObject();
		obj.put("cno",vo.getCno());
		
		String img=vo.getImage();
		String image="";
		if(img.contains("^"))
		{
			image=img.substring(0,img.indexOf("^"));
		}
		obj.put("image",image);
		obj.put("title",vo.getTitle());
		obj.put("tutor",vo.getTutor_info_nickname());
		obj.put("score",vo.getTutor_info_grade_total());
		obj.put("location",vo.getLocation());
		obj.put("schedule",vo.getSchedule());
		obj.put("place",vo.getPlace());
		
		return obj.toJSONString();
	}

	
}
