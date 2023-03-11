<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
<style type="text/css">



.one_left{
  width:50%;
  float:left;
}
.one_right{
  width:50%;
  float:right:
}
/* 나중에 없애기 */
h1,h2,h3,h4{
  margin:0;
  padding:0;
}

h4.one_left{
  width:40%;
}
.two_wrapper > *{
  margin: 15px 0;
}
</style>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

</script>
<body>
<div class="container" style="margin:0 auto;padding:50px; width:1200px;">


	  <%-- 왼쪽전체 : 클래스정보, 클래스일정 --%>
	  <h2 style="margin:0 0 25px 0;font-weight:bold;font-size:24px;">클래스 신청</h2>
	  <hr style="border-top:1px solid lightgray;">
	  
	  <div style="width:40%;padding:40px;float:left;">
	  
		    <%-- 클래스정보 --%>
		<!--<div class="classInfo">
	 	       <div style="width:25%;float:left">
	 	         <img src="" style="width:150px;height:120px;">
		       </div>
		       <div style="width:65%;float:right">
		         <h4 style="margin:0 0 10px 0;">[상위1%]1:1맞춤수업! 미국식 발음교정 & 말 잘하는 영어회화</h4>
		         <span>★★★★★</span>&nbsp;4.9
		       </div>
		    </div>-->
		    
		    <%-- 클래스 신청정보 확인 --%>
		       
		       
		       <div class="classInfoBox" style="width:90%;height:400px;padding:40px;border:1px solid gray;border-radius:4px;">
		          <h3 style="margin:0;">클래스 신청정보 확인</h3>
		   		  <hr style="margin:25px 0;width:100%;border:1px solid lightgray;">
		          <div class="classInfo">
			 	       <div class="two_wrapper">
			 	         <div style="width:25%;float:left">
			 	           <img src="" style="width:150px;height:120px;">
				         </div>
				         <div style="width:65%;float:right">
				           <h4 style="margin:0 0 10px 0;">[상위1%]1:1맞춤수업! 미국식 발음교정 & 말 잘하는 영어회화</h4>
				           <span style="color:#45c5c5;">★★★★★</span>&nbsp;<span id="score">4.9</span>
				         </div>
				       </div>
				       <div style="clear:both;">  
				          <div class="two_wrapper">
				            <h4 class="one_left">신청일정</h4>
				            <div class="one_left">
				                튜터와 일정을 협의하여 진행할 예정입니다.
				            </div>
				          </div>
				          <div class="two_wrapper">
				            <h4 class="one_left">신청인원</h4>
				            <div class="one_left">1명</div>
				          </div>
				          <div class="two_wrapper">
				            <h4 class="one_left">클래스 횟수/시간</h4>
				            <div class="one_left">총 4회/2시간</div>
				          </div>
		              </div>
				       
				  </div>
				  
		       </div>
		       
		       
	    
	  </div>
	  
	  <%-- 오른쪽전체 : 신청인원, 연락처, 메시지 --%>
	  <div style="width:40%;padding:40px;float:right;">
	     <div class="payInfoBox" style="margin:0 0 30px 0;padding:40px;height:320px;border:1px solid gray;border-radius:4px;">  
	     
		    <h3 style="margin:0;">최종 결제금액 확인</h3>
		    <hr style="margin:25px 0;width:100%;border:1px solid lightgray;">
	        
	        <div style="display:inline-block;width:100%;">
		        <div class="two_wrapper">
		           <h4 class="one_left">클래스 요금</h4>
		           <div class="one_left">600,000원 (총 4회, 2시간)</div>
		        </div>
		        <div class="two_wrapper">
		           <h4 class="one_left">신청인원</h4>
		           <div class="one_left">1명</div>
		        </div>
	        </div>
	        
	        <div class="two_wrapper" style="margin:0 0 20px 0;display:inline-block;width:100%;">
	          <hr style="width:100%;margin:25px 0 0 0;">
	          <h3 class="one_left" style="color:#45c5c5;font-size:20px;">총 결제금액</h3>
	          <h3 class="one_left" style="font-size:20px;font-weight:bold;">600,000원</h3>
	        </div>
	        
	        <div style="display:flex;align-items:center;">
	          <%-- 체크버튼 클릭해야 결제하기 버튼 활성화됨 --%>
	          <i id="checkOk_btn" class="fa-solid fa-square-check" style="margin-right:10px;cursor:pointer;font-size:32px;color:lightgray;"></i>
	          <span>위 내용을 확인하였으며, 결제에 동의합니다.</span>
	        </div>
	     </div>
	     <input type=button id="pay_btn" value="결제하기" style="width:100%;height:50px;background:#45c5c5;color:white;border:0;border-radius:4px;cursor:pointer;">  
	  </div>
  
  
</div>
</body>
</html>