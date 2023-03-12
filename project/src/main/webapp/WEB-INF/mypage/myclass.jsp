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
				<span>쪽지함</span>&nbsp;(3)
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
	  	    	<span><li class="my_menu2"><a href="../mypage/main.do">수강바구니</a></li></span>
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
		  <p><strong>신청한 강의</strong>를 수강할 수 있는 공간이에요.
		   클래스 중에 궁금한 점이 있으면 <strong>Q&amp;A</strong>로 물어보세요.<br>
		  </p>
		  <ul class="tutee_list">
		    <li>
		     <div class="thumb_box">
		      <a href="../class/class_detail.do?cno="><img src="https://img.taling.me/Content/Uploads/Images/f751e30c61b31ef9e9b63e0b59537904e22e5697.png" alt=""></a>
		     </div>
		     <div class="text_box">
		      <a href="../class/class_detail.do?cno=" class="title">매일 가고 싶은 호텔 인테리어의 비밀</a>
		      <div class="course_info">
		       <p class="tutor"><span class="profile"><img src="https://s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_1077c649d31a6a3dde112f75b085a151c7b568ff.jpg" alt=""></span>최유정(오꾸제이) 튜터</p>
		      </div>
		      <div class="progress_box">
		       <div class="progress_bar">
		        <div class="bar" style="width: 0%;"></div>
		       </div><span class="play_time">0% 수강</span><span class="due_date ">만료까지 71일 남았어요!</span>
		      </div>
		      <div class="btn_box">
		       <a href="/vod/view/39910" class="btn btn_intro">강의소개</a><a href="/vod/review/39910" class="btn btn_write"><i class="icon"></i>리뷰작성</a>
		      </div>
		     </div></li>
		  </ul><button type="button" class="btn_more" id="btnMore" style="display: none;">더보기</button>
	  </div>
	</div>
</div>
</body>
</html>