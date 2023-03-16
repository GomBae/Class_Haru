package com.sist.web;

import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.ReserveDAO;
import com.sist.vo.ClassDetailVO;
import com.sist.vo.MemberVO;
import com.sist.vo.ReserveVO;

@RestController
public class ReserveRestController {
   
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
      String[] location=vo.getLocation().replace("^","#").split("#");
      JSONArray arr3=new JSONArray();
      for(String lo:location)
      {
         arr3.add(lo);
      }

      obj.put("image",image);
      obj.put("title",vo.getTitle());
      obj.put("totalprice",vo.getTotalprice());
      obj.put("totalprice_num",totalprice_num);
      obj.put("tutor",vo.getTutor_info_nickname());
      obj.put("score",vo.getTutor_info_grade_total());
      obj.put("schedule",arr1);
      obj.put("place",arr2);
      obj.put("location",arr3); //추가
      
      return obj.toJSONString();
   }

   @GetMapping("reserve/reserve_select.do")
   public String reserve_resreve_pay(ReserveVO vo,HttpSession session)
   {
      
      StringTokenizer st=new StringTokenizer(vo.getSche_info(),"|");
      vo.setSchedule(st.nextToken());
      vo.setLocation(st.nextToken());
      vo.setPlace(st.nextToken());
      vo.setTutorMsg(vo.getTutorMsg());
      vo.setTitle(vo.getTitle());
      vo.setTotalperprice(vo.getTotalperprice());
      
      session.setAttribute("rvo", vo);
      
      System.out.println(vo.getCno());
      System.out.println(vo.getSche_info());
      System.out.println(vo.getTutorMsg());
      System.out.println(vo.getInwon());
        
      return String.valueOf(vo.getCno());
   }
   
   @GetMapping(value="reserve/reserve_pay_vue.do",produces="text/plain;charset=utf-8")
   public String reserve_pay_vue(HttpSession session)
   {
      ReserveVO vo=(ReserveVO)session.getAttribute("rvo");
      ClassDetailVO cvo=dao.classScheduleInfo(vo.getCno());
      
      JSONObject obj=new JSONObject();
      obj.put("schedule",vo.getSchedule());
      obj.put("place",vo.getPlace());
      obj.put("inwon",vo.getInwon());
      obj.put("cno",vo.getCno());
      obj.put("tutorMsg",vo.getTutorMsg());
      obj.put("title",cvo.getTitle());
      obj.put("tutor",cvo.getTutor_info_nickname());
      obj.put("totalperprice",cvo.getTotalprice());
      obj.put("score",cvo.getTutor_info_grade_total());
      obj.put("location",vo.getLocation());
      
      //이미지
      String img=cvo.getImage();
      String image="";
      if(img.contains("^"))
      {
         image=img.substring(0,img.indexOf("^"));
      }
      
      obj.put("image",image);
      
      //총결제금액 구하기
      String totalperprice=cvo.getTotalprice();
      totalperprice=totalperprice.substring(0,totalperprice.indexOf("원"));
      int totalperprice_num=Integer.parseInt(totalperprice.replace(",", ""));
      int inwon=vo.getInwon();
      int totalprice_num=totalperprice_num*inwon;

      DecimalFormat df=new DecimalFormat("###,###");
      String totalprice=df.format(totalprice_num);
      
      obj.put("totalprice",totalprice);
      
      return obj.toJSONString();
   }
   
   @GetMapping("reserve/reserve_insert.do")
   public String reserve_insert(ReserveVO vo,HttpSession session)
   {
      //세션id 담기
      MemberVO mvo=(MemberVO)session.getAttribute("mvo");
      vo.setId(mvo.getId());
      dao.reserveInsert(vo);
      
      return "";
   }
}