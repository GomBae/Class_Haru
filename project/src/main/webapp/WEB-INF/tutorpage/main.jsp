<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link type="text/css" rel="stylesheet" href="https://unpkg.com/bootstrap/dist/css/bootstrap.min.css"/> -->
<!-- <link type="text/css" rel="stylesheet" href="https://unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.css"/> -->
<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>
<script src="https://unpkg.com/babel-polyfill@latest/dist/polyfill.min.js"></script>
<script src="https://unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<link rel="stylesheet" href="../Content/app3/css/mypage.css">

</head>
<body>
<main class="container">
	<jsp:include page="../tutorpage/header.jsp"></jsp:include>
	
	<div style="width:20%;height:100%;padding:5px;float:left;">
		<jsp:include page="../tutorpage/menu.jsp"></jsp:include>
	</div>
	
	<div style="width:80%;float:left;">
	  <div class=rows>
	  	<jsp:include page="${tutor_jsp }"></jsp:include>
	  </div>
	</div>
</main>
</body>
</html>