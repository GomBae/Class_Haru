<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<!-- <link type="text/css" rel="stylesheet" href="https://unpkg.com/bootstrap/dist/css/bootstrap.min.css"/> -->
<link type="text/css" rel="stylesheet" href="https://unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.css"/>
<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>
<script src="https://unpkg.com/babel-polyfill@latest/dist/polyfill.min.js"></script>
<script src="https://unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<link rel="stylesheet" href="../Content/app3/css/mypage.css">

</head>
<body>
<div class="container">
	<div style="margin-left:20px"> 
		<span style="font-size: 20px;font-weight: 700;line-height: 50px;">최선형</span>님 &gt; 
		클래스 하루와 <span style="font-size:18px;color:#45c5c5;font-weight:400">30</span>일째 성장 중!
	</div>
	
	<div style="width:20%;height:100%;padding:5px;float:left;">
	  <div class=rows>
	  	<div style="height:150px;margin:5px;padding:10px;border:2px solid #45c5c5;">
	  		<div style="height:50px;">
	  	  		<img src="../images/gtop.png" style="height: 40px">
	  	  		<span>최선형</span>
	  		</div>
	  		<div style="height:25px;">
		  	  	<img src="../images/letter.png" style="height: 20px">&nbsp;
				<template>
				  	<b-sidebar id="my-sidebar" title="쪽지함" shadow>
					    <div class="px-3 py-2">
					    	<div>
						   		받은 쪽지함
					    	</div>
					    	<div>
						   		보낸 쪽지함
					    	</div>
						</div>
					</b-sidebar>
					<b-button v-b-toggle.my-sidebar>쪽지함</b-button>&nbsp;(3)
				</template>
	  		</div>
	  		<div style="height:25px;">
		  	  	<img src="../images/letter.png" style="height: 20px">&nbsp;
		  	  	<span>수강중 강의</span>&nbsp;(3)
	  		</div>
	  		<div style="height:30px;">
		  		<span class="mintBtn" value="로그아웃">로그아웃</span>
		  		<span class="mintBtn">정보수정</span>
	  		</div>
	  	</div>
	  </div>
	  <div style="height: 10px;"></div>
	  <div class=rows>
		<ul style="margin:5px;padding:10px;border:1px solid #45c5c5;border-radius:10px">
			<div class="my_li">
		  	    <li id="my_menus"><a href="../mypage/main.do">대시보드</a></li>
		  	    <li class="my_menu">내 학습</li>
		  	    <span><li class="my_menu2"><a href="../mypage/myclass.do">내 강의실</a></li></span>
		  	    <span><li class="my_menu2"><a href="../mypage/myquestion.do">내가 남긴 질문</a></li></span>
	  	    </div>
	  	    <div class="my_li">
	  	    	<li class="my_menu">수강 관리</li>
	  	    	<span><li class="my_menu2"><a href="../mypage/myjjim.do">수강바구니</a></li></span>
	  	    </div>
	  	    <div class="my_li">
	  	    	<li class="my_menu">내 활동</li>
	  	    	<span><li class="my_menu2">커뮤니티</li></span>
	  	    	<span><li class="my_menu2">리뷰 & 댓글</li></span>
	  	    </div>
	  	    <div class="my_li">
		  	    <li class="my_menu">내 정보</li>
		  	    <span><li class="my_menu2">계정 정보</li></span>
			</div>
		</ul>
	  </div>
	</div>
	
	<div style="width:80%;float:left;">
	  <div class=rows>
<!-- 	    <template> -->
<!-- 	  		<recentStudy></recentStudy> -->
<!-- 	    </template> -->
	  	  <div class=my-card style="width:35%;">
	  	  	  <dl>
				<dt>최근 학습 강의</dt>
				<dd>
					<table>
					  <tr v-if="">
						<td>최근 학습한 강의가 없습니다.</td>
					  </tr>
					  <tr>
						<td>
							<input type=button value="강의 보러 가기" class="btn btn-sm btn-primary">
						</td>
					  </tr>
					</table>
			    </dd>
			  </dl>
		  </div>
		  <div class=my-card style="width:60%;">
			  <dl>
			  	<dt>주간 학습</dt>
			  	<dd>
					<table>
					  <tr>
					  	<td>달력 년 월 주</td>
					  </tr>
					  <tr>
					  	<td>
						  	동구랑미
					  	</td>
					  </tr>
					  <tr>
					  	<td>공부시간</td>
					  </tr>
					</table>
			  	</dd>
			  </dl>
		  </div>
		  <div class=my-card style="width:30%;">
			  <dl>
			  	<dt>스킬 태그</dt>
			  	<dd>
			  	</dd>
			  </dl>
		  </div>
		  <div class=my-card style="width:65%;">
			  <dl>
			  	<dt>연간 학습</dt>
			  	<dd>
					<table>
					  <tr>
					  	<td>달력 년 월 주</td>
					  </tr>
					  <tr>
					  	<td>
						  	동구랑미
					  	</td>
					  </tr>
					  <tr>
					  	<td>공부시간</td>
					  </tr>
					</table>
			  	</dd>
			  </dl>
		  </div>
	  </div>
	</div>
</div>
<script>
// 	Vue.component('recentStudy',{
// 		props:['data'],
// 		template:'<div class=my-card style="width:35%;">'
// 			+'<dl>'
// 			+'<dt>최근 학습 강의</dt>'
// 			+'<dd>'
// 			+'<table>'
// 			+'<tr>'
// 			+'<td>최근 학습한 강의가 없습니다.</td>'
// 			+'</tr>'
// 			+'<tr>'
// 			+'<td>'
// 			+'<input type=button value="강의 보러 가기" class="btn btn-sm btn-primary">'
// 			+'</td>'
// 			+'</tr>'
// 			+'</table>'
// 			+'</dd>'
// 			+'</dl>'
// 			+'</div>'
// 	})
	new Vue({
		el:'.container',
		data:{
			rec_s:''
		}
	})
</script>
</body>
</html>