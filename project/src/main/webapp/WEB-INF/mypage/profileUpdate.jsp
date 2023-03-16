<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../Content/app3/css/common.css" media="all">
<link rel="stylesheet" href="../Content/app3/css/mypage_style.css" media="all">
</head>
<body>
<div class="container">
		<!--MyTItleBox head-->
		<div class="title-box">
			<h1>내 프로필</h1>
		</div>
		<!--MyTItleBox head 마무리-->
		<div class="profile-container">
			<div class="inner-cont" style="padding-top:0">
                				<div class="pf" style="background-image:url(${sessionScope.mvo.image})" id="picture-cover"><img class="camera" src="https://front-img.taling.me/Content/Images/Tutor/Images/btn_pfimg.png">
					<input type="file" id="picture" name="picture">	
				</div>
			</div>
			<div class="inner-cont">
				<div class="label-title">이메일(ID)</div>
				<div class="contents">${sessionScope.mvo.id }</div>
			</div>
            <div class="inner-cont">
                <div class="label-title">비밀번호</div>
                <div class="contents">
                    <a href="#" class="button_pink_background" style="padding: 11px 18px;">비밀번호 변경하기</a>
                </div>
            </div>
			<div class="inner-cont">
				<div class="label-title">전화번호</div>
				<div class="contents">
					<input type="hidden" id="IsPhone" value="0">
					<input id="Phone" name="Phone" type="text" placeholder="${sessionScope.mvo.tel }" value="${sessionScope.mvo.tel }" class="phone">
					<p class="regintxt01 clearbt redtxt">ex) 010-0000-0000</p>
				</div>
			</div>
			<div class="inner-cont">
				<div class="label-title">이름</div>
                <div class="contents">
                    <input type="text" placeholder="" id="userName" class="full" name="userName" value="${sessionScope.mvo.name }">
                    <p class="regintxt01 clearbt redtxt">ex) 김탈잉, 홍길동 (8자 이내)</p>
                </div>
			</div>
			<div class="inner-cont">
				<div class="label-title">별명</div>
				<div class="contents">
					<input type="text" placeholder="" id="nick" class="full" name="Description" value="${sessionScope.mvo.nickname }">
					<p class="regintxt01 clearbt redtxt">ex) 열정만수르, 요조숙녀, 열혈남 (8자 이내)</p>

				</div>
			</div>
			<div class="inner-cont" style="position: relative;">
				<div class="label-title">소개</div>
				<div class="contents">
					<textarea class="full" id="introduction" placeholder="${sessionScope.mvo.intro }" name="Intro" value="${sessionScope.mvo.intro }">${sessionScope.mvo.intro }</textarea>
				</div>
			</div>
			<div class="pink-submit" id="regInfo" v-on:click="memberUpdate()">저장하기</div>
			<div style="padding-top:400px"></div>
		</div>
	</div>
<script>
new Vue({
	
})
</script>
</body>
</html>