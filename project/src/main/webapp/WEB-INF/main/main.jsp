<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title>클래스 하루</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- VueJs -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<!-- BootStrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../Content/app3/css/common.css" media="all">
<link rel="stylesheet" href="../Content/app3/css/notokr.css" media="all">
<link rel="stylesheet" href="../Content/app3/css/jquery.mCustomScrollbar.css" media="all">
<link rel="stylesheet" href="../Scripts/renewal2203/css/header.css">
<link rel="stylesheet" href="../Content/app3/css/footer_pc.css" media="all">
<link rel="stylesheet" href="../Content/app3/css/swiper.min.css">
<link rel="stylesheet" href="../Scripts/renewal2203/css/index.css">
<link rel="stylesheet" href="../Content/app3/css/login/login_pc.css" media="all">
<!-- Script -->
<script src="../Scripts/app3/jquery-1.12.4.min.js"></script>
<script src="../Scripts/app3/jquery-ui.js"></script>
<script src="../Scripts/app3/swiper.min.js"></script>
<script src="../Scripts/app3/lazysizes.min.js"></script>
<script src="../Scripts/renewal2203/js/index.js"></script>
<script src="../Scripts/renewal2203/js/header.js"></script>
<script src="../Scripts/topbar.js"></script>
<script src="../Scripts/app3/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- pc,mobile 공통 스크립트 -->
<script src="../Scripts/prototype.js"></script>
<script src="../Scripts/app3/controll.js"></script>
</head>
<body>
  <div class="wrap">
    <tiles:insertAttribute name="header"/>
    <tiles:insertAttribute name="content"/>
    <tiles:insertAttribute name="footer"/> 
  </div>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a> 
<!-- JAVASCRIPTS --> 
<!-- <script src="../layout/scripts/jquery.min.js"></script>  -->
<!-- <script src="../layout/scripts/jquery.backtotop.js"></script>  -->
<!-- <script src="../layout/scripts/jquery.mobilemenu.js"></script>  -->
<!-- <script src="../layout/scripts/jquery.flexslider-min.js"></script> -->

</body>
</html>