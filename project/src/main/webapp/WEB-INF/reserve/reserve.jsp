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
  padding:0; width:25px; height:25px;
  background:lightgray;
  border:0; border-radius:50px;
  font-size:14px; color:white;
  cursor:pointer;
}
.schedule_item:last-child > hr{
  display:none;
}
.count_btn{
  margin:0 15px; padding:0;
  width:40px; height:40px;
  background:#eaeaea;
  border:0; border-radius:50px;
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

input[type='radio'],
input[type='radio']:checked{
  /*appearance: none;*/
  width: 30px;
  height: 30px;
  border-radius: 100%;
  margin-right: 0.1rem;
}


</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">


$(function(){
	let inwon=1
	
 	$('#plus').click(function() {
	    inwon=inwon+1
	    $('#inwon').text(inwon)    
	})
	
	$('#minus').click(function(){   	
		if(inwon>1)
		{
			inwon=inwon-1	
		}
		$('#inwon').text(inwon)	   	
	})

})
</script>
</head>
<body>
세션아이디 : ${sessionScope.mvo.id }, 관리자여부 : ${sessionScope.mvo.admin }
<div class="container" style="margin:50px auto;padding:0;">
  
  <%-- 왼쪽전체 : 클래스정보, 클래스일정 --%>
  <h2 style="margin:0 0 25px 0;font-weight:bold;font-size:24px;">클래스 신청</h2>
  <hr style="border-top:1px solid lightgray;">
  
  <div style="width:50%;padding:40px;float:left;">
  
	    <%-- 클래스정보 --%>
	    
	    <%-- 뷰컴포넌트 연습 --%>
<!--  	    <div>
	    <classinfo v-bind:info="cvo"></classinfo>
	    </div> -->
	    
  <form method="post" action="../reserve/reserve_check.do">
  
  
	    <%-- 원본 : 뷰컴포넌트 연습 전 원래 코드 --%>
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
<!-- 		         <div style="margin:10px;float:left;">
		           <button class="check_btn"><i class="fa-solid fa-check" style="line-height:25px;font-size:14px;color:white;"></i></button>
		         </div> -->
		         <div style="width:85%;float:right;">
		          
   		           <ul style="margin:0;" v-for="(s,index) in cvo.schedule">
  		             <li>{{s}}</li>
		             <li>
		               <h4 style="margin:10px 0;color:gray;" >{{cvo.place[index]}}</h4>
		             </li>
		           </ul>
		           
		         </div>
		         <hr style="margin:0 10px 15px 10px;clear:both;border:0.7px solid lightgray;">
	         </div>
	         
	      </div>
	    </div>
    
  </div>
  
  <%-- 오른쪽전체 : 신청인원, 연락처, 메시지 --%>
  <div style="width:50%;padding:40px;float:right;">
    
	    <%-- 신청인원 --%>
	    <div style="margin:0 0 100px 0;">
	      <h3 style="margin:0 115px 0 0;float:left;line-height:40px;">신청인원</h3>
	      <div style="float:left;">
	      
	        <button class="count_btn" id=minus><i class="fa-solid fa-minus"></i></button>
	          <span id="inwon" value="1" style="font-size:20px;">1</span>
	        <button class="count_btn" id="plus"><i class="fa-solid fa-plus"></i></button>
	      
	      </div>
	      <%-- totalprice컬럼값 가져오기 --%>
	      <input id="totalprice_num" type=hidden :value="cvo.totalprice_num">
	    </div>
	    
	    <%-- 연락처 --%>
	    <div style="margin:0 0 45px 0;">
	      <h3 style="margin:0;width:45%;line-height:35px;float:left;">연락 받으실 전화번호</h3>
	      <input type=text value="${sessionScope.mvo.tel }" style="padding:0 15px;width:40%;height:35px;border:1px solid gray;border-radius:4px;">
	    </div>
	    
	    <%-- 메시지 --%>
	    <div>
	      <h3 style="margin:0 0 15px 0;">튜터에게 남기는 메시지</h3>
	      <textarea id="tutorMsg" style="padding:15px;margin-bottom:30px;width:100%;height:90px;resize:none;border:1px solid gray;border-radius:4px;"></textarea>
	    </div>
	    <button type=submit class="all_btn" style="display:block;width:100%;padding:15px;background:#45c5c5;color:white;cursor:pointer;border:0;text-align:center;">
    	다음
    	</button>
  </div>
  
  </form>  
</div>
<script>

  Vue.component('classinfo',{
	  props:['info'],
	  template:'<div>'
		  		+'<div class="classInfo">'
				+'<div style="width:35%;float:left">'
				+'   <img :src="cvo.image" style="width:120px;height:90px;">'
				+'</div>'
				+'<div style="width:65%;float:right">'
				+'  <h4 style="margin:0 0 10px 0;font-weight:bold;">{{cvo.title}}</h4>'
				+'  <span>{{cvo.tutor}}</span>(<i style="color:#45c5c5;" class="fa-solid fa-star"></i>'
				+'  <span >{{cvo.score}}</span>)'
				+'</div>'
				+'</div>'
				+'</div>'

  })
  
  //클래스예약정보(결제 전 입력된 예약정보 확인용)
  Vue.component('reserveInfo',{
	  props:[],
	  template:'<div style="width:50%;padding:40px;float:left;">'
				+'     <div class="classInfoBox" style="display:inline-block;width:90%;height:490px;padding:40px;border:1px solid gray;border-radius:4px;">'
				+'        <h3 style="margin:0;">클래스 신청정보 확인</h3>'
				+' 		  <hr style="margin:25px 0;width:100%;border-top:1px solid lightgray;">'
				+'        <div class="classInfo">'
				+'	 	       <div class="two_wrapper">'
				+'	 	         <div style="width:35%;float:left">'
				+'	 	           <img src="" style="width:100px;height:80px;">'
				+'		         </div>'
				+'		         <div style="width:65%;float:right">'
				+'		           <h4 style="margin:0 0 10px 0;font-weight:bold;">클래스이름</h4>'
				+'		           <span>튜터이름</span>(<i style="color:#45c5c5;" class="fa-solid fa-star"></i>'
				+'   			   <span >튜터평점</span>)'
				+'		         </div>'
				+'		       </div>'
				+'		       <div style="clear:both;">'
				+'		          <div class="two_wrapper">'
				+'		            <h4 class="one_left">신청일정</h4>'
				+'		            <div class="one_left">'
				+'		                협의하여 날짜, 시간 결정'
				+'		            </div>'
				+'		          </div>'
				+'		          <div class="two_wrapper">'
				+'		            <h4 class="one_left">장소</h4>'
				+'		            <div class="one_left">'
				+'		                협의 후 결정'
				+'		            </div>'
				+'		          </div>'
				+'		          <div class="two_wrapper">'
				+'		            <h4 class="one_left">신청인원</h4>'
				+'		            <div class="one_left">1명</div>'
				+'		          </div>'
				+'		          <div class="two_wrapper">'
				+'		            <h4 class="one_left">클래스 횟수/시간</h4>'
				+'		            <div class="one_left">총 ?회/?시간</div>'
				+'		          </div>'
				+'           </div>'
				+'        </div>'
				+'    </div>'
				+'</div>'
		  
		  
  })
  
  //
  
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