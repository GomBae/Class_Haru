package com.sist.web;

import java.util.Arrays;

import org.json.simple.JSONArray;
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
	//테스트
	public static void main(String[] args) {
		String sche="협의 후 결정^3월 15일^협의 후 결정".replace("^", "#");
		String[] schedule=sche.split("#");
		JSONArray arr1=new JSONArray();
		for(String s:schedule)
		{
			arr1.add(s);
		}
		System.out.println(Arrays.toString(schedule));
		System.out.println(arr1.toJSONString());
	}
	
	@Autowired
	private ReserveDAO dao;
	
	@GetMapping(value="reserve/reserve_vue.do",produces="text/plain;charset=utf-8")
	public String reserve_reserve_vue(int cno)
	{
		ClassDetailVO vo=dao.classScheduleInfo(cno);

		JSONObject obj=new JSONObject();
		obj.put("cno",vo.getCno());
		
		//이미지 자르기
		String img=vo.getImage();
		String image="";
		if(img.contains("^"))
		{
			image=img.substring(0,img.indexOf("^"));
		}
		
		/*
		 *   v-for="(m,index) in fooddetail.menu"
		 *   {{m}}
		 *   {{fooddetail.poster[index]}}
		 *   
		 *   obj.put(,emi.arr1)
		 */
		//totalprice에서 숫자값만 가져오기
		
		String totalprice=vo.getTotalprice();
		totalprice=totalprice.substring(0,totalprice.indexOf("원"));
		int totalprice_num=Integer.parseInt(totalprice.replace(",", ""));
		
		String[] schedule=vo.getSchedule().replace("^","#").split("#");
		JSONArray arr1=new JSONArray();
		for(String s:schedule)
		{
			arr1.add(s);
		}
		String[] place=vo.getPlace().replace("^","#").split("#");
		JSONArray arr2=new JSONArray();
		for(String p:place)
		{
			arr2.add(p);
		}
		obj.put("image",image);
		obj.put("title",vo.getTitle());
		obj.put("totalprice",vo.getTotalprice());
		obj.put("totalprice_num",totalprice_num);
		obj.put("tutor",vo.getTutor_info_nickname());
		obj.put("score",vo.getTutor_info_grade_total());
		//obj.put("location",vo.getLocation());
		obj.put("schedule",arr1);
		obj.put("place",arr2);
		
		return obj.toJSONString();
	}

	
}
