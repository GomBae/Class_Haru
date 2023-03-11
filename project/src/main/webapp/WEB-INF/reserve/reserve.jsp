<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- 기본 css -->
<link rel="stylesheet" href="../css/all.css">
<title>Insert title here</title>
<style type="text/css">
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, form, fieldset, p, button, pre{
  font-size:16px;
}
.check_btn{
  width:25px;
  height:25px;
  background:lightgray;
  border:0;
  border-radius:50px;
  font-size:14px;
  color:white;
  cursor:pointer;
}
.schedule_item:last-child > hr{
  display:none;
}
.count_btn{
  margin:0 15px;
  width:40px;
  height:40px;
  background:#eaeaea;
  border:0;
  border-radius:50px;
  cursor:pointer;
}

/* 나중에 없애기 */
h1,h2,h3,h4{
  margin:0;
  padding:0;
}
.count_btn i{
  font-size:16px;
}
</style>

</head>
<body>
<div class="container" style="margin:50px auto;padding:0;">

  
  <%-- 왼쪽전체 : 클래스정보, 클래스일정 --%>
  <h2 style="margin:0 0 25px 0;font-weight:bold;font-size:24px;">클래스 신청</h2>
  <hr style="border-top:1px solid lightgray;">
  
  <div style="width:50%;padding:40px;float:left;">
  
	    <%-- 클래스정보 --%>
	    <div class="classInfo">
 	       <div style="width:35%;float:left">
 	         <img :src="cvo.image" style="width:120px;height:90px;">
	       </div>
	       <div style="width:65%;float:right">
	         <h4 style="margin:0 0 10px 0;font-weight:bold;">{{cvo.title}}</h4>
	         <span>{{cvo.tutor}}</span>(<i style="color:#45c5c5;" class="fa-solid fa-star"></i>
	         <span >{{cvo.score}}</span>)
	       </div>
	    </div>
	    
	    <%-- 클릭 시 버튼색 변경 코드 필요 --%>
	    <%-- 클래스일정 --%>
	    <div class="schedule_wrapper" style="clear:both;position:relative;top:50px;">
	       <h3 style="margin:0 0 15px 0;">클래스 일정을 선택해주세요.</h3>
	       <div style="padding:15px;max-height:350px;overflow:auto;border:1px solid gray;border-radius:4px;">
	         <%-- if : 일정 있는 경우 --%>
	         <%-- 일정 1개(반복대상) --%>
	         <div class="schedule_item">
		         <div style="margin:10px;float:left;">
		           <button class="check_btn"><i class="fa-solid fa-check" style="line-height:25px;"></i></button>
		         </div>
		         <div style="width:85%;float:right;">
		           <ul style="margin:0;">
		             <li v-for="s in cvo.schedule.split('^')">{{s}}</li>
		             <li v-for="p in cvo.place.split('^')"><h4 style="margin:10px 10px 15px 10px;color:gray;" >{{p}}</h4></li>
		           </ul>
		           
		         </div>
		         <hr style="margin:0 10px 15px 10px;clear:both;border:0.7px solid lightgray;">
	         </div>
	         
	         <%-- if : 일정 없는 경우  --%>
	         <!-- <div>
	            <div style="margin:10px;float:left;">
	               <button class="check_btn"><i class="fa-solid fa-check"></i></button>
	            </div>
	            <div style="width:85%;float:right;">
	               <h4 style="margin:10px;">협의 후 클래스 일정 및 장소 결정</h4>
	            </div>
	         </div> -->
	         
	      </div>
	    </div>
    
  </div>
  
  <%-- 오른쪽전체 : 신청인원, 연락처, 메시지 --%>
  <div style="width:50%;padding:40px;float:right;">
    
	    <%-- 신청인원 --%>
	    <div style="margin:0 0 80px 0;">
	      <h3 style="margin:0 50px 0 0;float:left;line-height:40px;">신청인원</h3>
	      <div style="float:left;">
	        <button class="count_btn"><i class="fa-solid fa-minus"></i></button>
	        <span style="font-size:24px;">1</span>
	        <button class="count_btn"><i class="fa-solid fa-plus"></i></button>
	      </div>
	    </div>
	    
	    <%-- 연락처 --%>
	    <div style="margin:0 0 45px 0;">
	      <h3 style="margin:0;width:45%;line-height:35px;float:left;">연락 받으실 전화번호</h3>
	      <input type=text style="padding:0 15px;width:40%;height:35px;border:1px solid gray;border-radius:4px;">
	    </div>
	    
	    <%-- 메시지 --%>
	    <div>
	      <h3 style="margin:0 0 15px 0;">튜터에게 남기는 메시지</h3>
	      <textarea id="tutorMsg" style="padding:15px;margin-bottom:30px;width:100%;height:90px;resize:none;border:1px solid gray;border-radius:4px;"></textarea>
	    </div>
	    <a :href="'../reserve/reserve_pay.do?cno='+cvo.cno" class="all_btn" style="display:block;width:100%;padding:15px;background:#45c5c5;color:white;cursor:pointer;border:0;text-align:center;">
    	다음
    	</a>
  </div>
  
  
</div>
<script>
  new Vue({
	  el:'.container',
	  data:{
		  cno:${cno},  
		  cvo:{}
	  },
	  mounted:function(){
		  let _this=this
		  axios.get('http://localhost/web/reserve/reserve_vue.do',{
			  params:{
				  cno:_this.cno
			  }
		  }).then(function(response){
			  console.log(response.data) 
			  _this.cvo=response.data
		  })
	  }

  })
</script>
</body>
</html>