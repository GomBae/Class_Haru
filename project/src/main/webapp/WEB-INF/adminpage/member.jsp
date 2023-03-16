<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<th width="15%" class="text-center">프로필</th>
					<th width="15%" class="text-center">닉네임</th>
					<th width="30%" class="text-center">아이디</th>
					<th width="20%" class="text-center">이름</th>
					<th width="10%" class="text-center">튜터</th>
					<th width="10%" class="text-center">관리</th>
				</tr>
				<tr style="vertical-align: middle;" v-for="vo in member_list">
					<td width="15%" class="text-center origin">
						<img :src="vo.image" style="height: 40px;border-radius: 50px">
					</td>
					<td width="15%" class="text-center origin">{{vo.nickname}}</td>
					<td width="30%" class="text-center origin">{{vo.id}}</td>
					<td width="20%" class="text-center origin">{{vo.name}}</td>
					<td width="10%" class="text-center origin" v-if="vo.tutor=='y'">튜터</td>
					<td width="10%" class="text-center origin" v-if="vo.tutor=='n'">
						<span v-on:click="tutorups(vo.id)">학생</span>
					</td>
					<td width="10%" class="text-center origin">
						<span><img src="#" style="height:20px;" v-on:click="memberDelete(vo.id)"></span>
					</td>
				</tr>
			</table>
		</div>
	  </div>
	</div>
	
	<template>
		<b-modal ref="tutor_up" title="튜터 신청 정보">
		  <div>
		  	<table class=table>
		  	  <tr>
		  	  	<td width=10%>이름</td>
		  	  	<td width=17%>{{member_detail.name}}</td>
		  	  	<td width=8%>ID</td>
		  	  	<td width=35%>{{member_detail.id}}</td>
		  	  	<td width=12%>닉넴</td>
		  	  	<td width=18%>{{member_detail.nickname}}</td>
		  	  </tr>
		  	  <tr>
		  	  	<td colspan=4>
		  	  		<img :src="member_detail.image">
		  	  	</td>
		  	  </tr>
		  	  <tr>
		  	  	<td colspan=4>
		  	  		<p>{{member_detail.intro}}</p>
		  	  	</td>
		  	  </tr>
		  	</table>
		  </div>
		  <div class="text-center">
		    <b-button variant="outline-warning" inline @click="tutorok">튜터 승인</b-button>
		    <b-button variant="outline-primary" inline @click="hide">취소</b-button>
		  </div>
		</b-modal>
	</template>
</div>
<script>
	new Vue({
		el:'.container',
		data:{
			member_list:[],
			curpage:1,
			totalpage:0,
			stu_id:'',
			member_detail:{}
		},
		mounted:function(){
			this.send()
		},
		methods:{
			send:function(){
				let _this=this
				axios.get("http://localhost/web/adminpage/member_list_vue.do",{
					params:{
						page:this.curpage
					}
				}).then(function(response){
					console.log(response.data)
					_this.member_list=response.data
					_this.curpage=response.data[0].curpage
					_this.totalpage=response.data[0].totalpage
				})
			},
			tutorups:function(stu){
				this.$refs['tutor_up'].show()
				this.stu_id=stu
				let _this=this
				axios.get("http://localhost/web/adminpage/member_detail_vue.do",{
					params:{
						id:stu
					}
				}).then(function(response){
					console.log(response.data)
					_this.member_detail=response.data
				})
			},
			tutorok:function(){
				let _this=this
				axios.get("http://localhost/web/adminpage/tutor_ok_vue.do",{
					params:{
						id:_this.stu_id
					}
				}).then(function(response){
					location.href="../adminpage/member.do"
				})
			},
			hide:function(){
				this.$refs['tutor_up'].hide()
			},
			memberDelete:function(id){
				if(confirm('정말로 삭제하시겠습니까?\n삭제 내역은 복구되지 않습니다')){
					axios.get('http://localhost/web/adminpage/member_delete_vue.do',{
						params:{
							id:id
						}
					}).then(function(response){
						location.href="../adminpage/member.do"
					})
				}
			}
		}
	})
</script>
</body>
</html>