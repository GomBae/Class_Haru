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

</body>
</html>