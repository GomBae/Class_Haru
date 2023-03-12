<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		  	  	<img src="../images/letter.png" style="height: 20px">&nbsp;<span>쪽지함</span>
	  		</div>
	  		<div style="height:25px;">
		  	  	<img src="../images/letter.png" style="height: 20px">&nbsp;<span>수강중 강의</span>
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
		<div class="mintBtn_m">
			<i></i>&nbsp;글쓰기
		</div>
		<div>
			<table class="table" style="table-layout: fixed;">
				<tr>
					<th width="15%" class="text-center">분류</th>
					<th width="45%" class="text-center">제목</th>
					<th width="15%" class="text-center">작성일</th>
					<th width="10%" class="text-center">조회수</th>
					<th width="15%" class="text-center">수정/삭제</th>
				</tr>
				<tr style="vertical-align: middle;">
					<td width="10%" class="text-center"><a href="#"></a></td>
					<td width="45%" class="text-center"><a href="#"></a></td>
					<td width="15%" class="text-center"><a href="#"></a></td>
					<td width="10%" class="text-center"><a href="#"></a></td>
					<td width="15%" class="text-center">
						<span><img src="#" style="height:20px;"></span>
						<span><img src="#" style="height:20px;"></span>
					</td>
				</tr>
			</table>
		</div>
	  </div>
	</div>
</div>
</body>
</html>