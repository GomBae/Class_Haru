<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <div class=rows>
	  	<div style="height:100px;margin:5px;padding:10px;border:2px solid #45c5c5;">
	  		<div style="height:50px;">
	  	  		<img src="${sessionScope.mvo.image }" style="height: 40px;border-radius: 50px">
	  	  		<span>${sessionScope.mvo.nickname }</span>
	  		</div>
	  		<div style="height:30px;text-align:center;margin:5px">
		  		<a href="../member/logout.do"><span class="mintBtn">로그아웃</span></a>
		  		<a href="#"><span class="mintBtn">정보수정</span></a>
	  		</div>
	  	</div>
	  </div>
	  <div style="height: 10px;"></div>
	  <div class=rows>
		<ul style="margin:5px;padding:10px;border:1px solid #45c5c5;border-radius:10px">
			<div class="my_li">
				<li id="my_menus"><a href="../adminpage/main.do">공지 수정</a></li>
		  	    <li class="my_menu">공지사항 관리</li>
		  	    <span><li class="my_menu2"><a href="../board/board_insert.do?btype=3">공지 등록</a></li></span>
		  	    <span><li class="my_menu2"><a href="../board/board_main.do?btype=3">공지 목록</a></span>
	  	    </div>
	  	    <div class="my_li">
	  	    	<li class="my_menu">강의 관리</li>
	  	    	<span><li class="my_menu2"><a href="../adminpage/class.do">강의 승인</a></li></span>
	  	    </div>
	  	    <div class="my_li">
		  	    <li class="my_menu">회원 관리</li>
		  	    <span><li class="my_menu2"><a href="../adminpage/member.do">일반회원 관리</a></li></span>
		  	    <span><li class="my_menu2"><a href="../adminpage/tutor.do">튜터 관리</a></li></span>
			</div>
		</ul>
	  </div>
</body>
</html>