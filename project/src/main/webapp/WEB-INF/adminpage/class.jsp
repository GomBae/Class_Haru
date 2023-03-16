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
<div class="container">
	<jsp:include page="../adminpage/header.jsp"></jsp:include>
	
	<div style="width:20%;height:100%;padding:5px;float:left;">
		<jsp:include page="../adminpage/menu.jsp"></jsp:include>
	</div>
	
	<div style="width:80%;float:left;">
	  <div class=rows>
		<div>
			<table class="table" style="table-layout: fixed;">
				<tr>
					<th width="15%" class="text-center"></th>
					<th width="45%" class="text-center">제목</th>
					<th width="15%" class="text-center">장소</th>
					<th width="10%" class="text-center">가격</th>
					<th width="15%" class="text-center">수정/삭제</th>
				</tr>
				<tr style="vertical-align: middle;" v-for="vo in class_list">
					<td width="15%" class="text-center origin">
						<img :src="vo.image" style="height: 40px;border-radius: 50px">
					</td>
					<td width="45%" class="text-center origin"><a href="#">{{vo.title}}</a></td>
					<td width="15%" class="text-center origin">{{vo.location}}</td>
					<td width="10%" class="text-center origin">{{vo.perprice}}</td>
					<td width="15%" class="text-center origin">
						<span><img src="#" style="height:20px;"></span>
						<span><img src="#" style="height:20px;"></span>
					</td>
				</tr>
			</table>
		</div>
	  </div>
	</div>
</div>
<script>
	new Vue({
		el:'.container',
		data:{
			class_list:[],
			curpage:1,
			totalpage:0
		},
		mounted:function(){
			this.send()
		},
		methods:{
			send:function(){
				let _this=this
				axios.get("http://localhost/web/adminpage/class_list_vue.do",{
					params:{
						page:this.curpage
					}
				}).then(function(response){
					console.log(response.data)
					_this.class_list=response.data
					_this.curpage=response.data[0].curpage
					_this.totalpage=response.data[0].totalpage
				})
			}
		}
	})
</script>
</body>
</html>