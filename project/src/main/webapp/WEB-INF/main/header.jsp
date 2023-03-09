<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
	<header id="header" class="pof" style="border-bottom:1px solid #eeeeee;">
		<div class="header_wrapper">
			<!-- logo -->
			<h1 class="logo">
				<a href="../main/main.do"><span class="blind">클래스하루</span></a>
			</h1>
			<!-- // logo -->
			<!-- gnb -->
			<div class="gnb">
				<a href="../main/main.do" class="act">홈HOME</a>
			</div>
			<!-- // gnb -->
			<!-- search_area -->
			<div class="search_area">
				<form class="" action="#" name="search">
					<fieldset>
						<legend class="blind">통합검색</legend>
						<input type="text" class="search_input" name="query"
							id="searchcss" autocomplete="off" placeholder="배우고 싶은 재능을 찾아보세요."
							value="">
						<button type="submit" class="btn_search" onclick="searchQuery2();">
							<span class="blind">검색</span>
						</button>
					</fieldset>
				</form>
			</div>
			<!-- // search_area -->
			<!-- nav_gnb -->
			<nav class="nav_gnb">
				<ul>
					<li><a href="#">튜터등록</a></li>
					<li><a href="../board/board_main.do">커뮤니티</a></li>
					<c:if test="${sessionScope.id!=null }">
						<li class="depth"><a onclick="qPop(0)">메시지💬</a></li>
						<li><a href="#">수업신청서</a></li>
						<li class="depth">
							<p role="button" class="depth1">수강목록</p>
							<ul class="lnb">
								<li><a href="#">VOD 수강목록</a></li>
								<li><a href="#">VOD Q&amp;A</a></li>
								<li><a href="#">도서/준비물 배송정보</a></li>
							</ul>
						</li>
						<li><a href="#">찜</a></li>
						<li class="depth mypage">
							<p role="button" class="depth1">
								<img class="profile" src="#" onerror="profileImgError(this,);"
									alt="프로필 이미지">
							</p>
							<ul class="lnb">
								<li><a href="#">내 프로필</a></li>
								<li><a href="javascript:void(0)" id="btn-menu-logout">로그아웃</a></li>
							</ul>
						</li>
					</c:if>
					<c:if test="${sessionScope.id==null }">
						<li><a href="#">로그인</a></li>
					</c:if>
				</ul>
			</nav>
			<!-- // nav_gnb -->
		</div>
	</header>
</body>
</html>