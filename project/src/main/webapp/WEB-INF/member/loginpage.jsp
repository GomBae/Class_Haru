<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<section class="cont_login container">            
		<div class="box_login login_main">
                        <h2 class="tit">간편하게 로그인하고<br>다양한 클래스를 만나보세요.</h2>
			<a class="btn_kakao" href="#">
				<img src="//front-img.taling.me/Content/app3/img/logo/logo-kakao@3x.png" width="19" alt="">
				카카오톡으로 로그인
			</a>
			<div class="box_btn">
				<a class="btn" href="../member/loginemail.do">이메일 로그인</a>
                <a class="btn" href="#">아이디 찾기</a>
			</div>                
		</div>            
	</section>
	<input type="hidden" name="redirectUrl" id="redirectUrl" value="/">
	<!-- //login_main -->
	<!-- 이메일 동기화 -->
    <div id="emailCombine" class="modal">
        <div class="layer">
            <div class="popup">
               <div class="cont email_combine">
					<h1 class="top_tit">기존 이메일 아이디를<br>카카오 로그인으로 통합해보세요.</h1>
					<p class="sub_tit">카카오톡에 등록된 정보와 같은 계정이 이미<br>등록되어 있습니다.</p>
					<div class="info">
						<p>최종 접속 이메일 : </p>
						<p>최초 가입일 : </p>
						<p>최근 접속일 : </p>
					</div>
					<p class="noti">기존 아이디를 카카오 로그인으로 통합해보세요.</p>
					<ul>
						<li>통합 시 기존 아이디에 있던 수업 신청서, 수업 목록 등 모든 데이터(신청/구매/검색/수업)가 연동됩니다.</li>
						<li>기존 아이디는 카카오톡으로 시작하기 로만 로그인이 가능합니다.</li>
						<li>가장 최근 접속한 이메일 아이디를 통합합니다.</li>
					</ul>
					<div class="btn_area">
						<a class="btn" href="https://kauth.kakao.com/oauth/authorize?client_id=b48bb08c53c5814c1dc3fb98f19e8a70&redirect_uri=https%3A%2F%2Ftaling.me%2FAccount%2FLoginKaKaoSync.php&response_type=code&state=5b3752d0efb189821bedeecfe25de3ee">카카오로그인으로 통합하기</a>
						<a class="btn_create" href="https://kauth.kakao.com/oauth/authorize?client_id=b48bb08c53c5814c1dc3fb98f19e8a70&redirect_uri=https%3A%2F%2Ftaling.me%2FAccount%2FLoginKaKao.php&response_type=code&state=5b3752d0efb189821bedeecfe25de3ee">통합하지 않고 새로운 아이디로 만들기</a>
					</div>
				</div>
                <button class="btn_close"><span class="blind">팝업 닫기</span></button>
            </div>
        </div>
    </div>
    <script>
		//이메일 동기화 팝업 열기
		function emailPopup() {
			$('#emailCombine').addClass('db');
			//바디 스크롤 금지
			$('body').addClass('on');
		}

        //팝업 닫기
        $('.modal .btn_close').on('click',function() {
            $(this).parents('.modal').removeClass('db');
            $('body').removeClass('on');
        });
    </script>
    <!-- //이메일 동기화 -->
</body>
</html>