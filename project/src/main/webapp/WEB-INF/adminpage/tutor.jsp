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
	
	<div style="width:40%;float:left;">
		<tutorlist :tutordata='tutor_list' :curpage='curpage' :totalpage='totalpage'></tutorlist>
	</div>
	<div style="width:40%;float:left;">
		
	</div>
</div>
<script>
	let eventBus=new Vue()
	Vue.component('tutorlist',{
		props:['tutordata','curpage','totalpage'],
		template:'<table class=table>'
			+'<tr>'
			+'<td>'
			+'<table class=table v-for="vo in tutordata">'
			+'<tr>'
			+'<td width=30% class=text-center rowspan=2>'
			+'<img :src="vo.image" style="width: 120px;height: 120px" class="img-circle images" v-on:click="showClass(vo.id)">'
			+'</td>'
			+'<td colspan=2><h3 style="color: orange">{{vo.nickname}}</h3></td>'
			+'</tr>'
			+'<tr>'
			+'<td class=text-center><img src="#" style="width: 20px"></td>'
			+'<td class=text-center><img src="#" style="width: 20px"></td>'
			+'</tr>'
			+'</table>'
			+'</td>'
			+'</tr>'
			+'<tr>'
			+'<td class=text-center>'
			+'<input type=button class="mintBtn" value="이전" v-on:click="this.$parent.prev">'
			+'{{curpage}} page / {{totalpage}} pages'
			+'<input type=button class="mintBtn" value="다음" v-on:click="this.$parent.next">'
			+'</td>'
			+'</tr>'
			+'</table>',
		methods:{
			showClass:function(id){
				eventBus.$emit('showClassEvent', id)
			}
		}
	})
	new Vue({
		el:'.container',
		data:{
			tutor_list:[],
			curpage:1,
			totalpage:0,
			tutor_id:'',
			tutor_class:[]
		},
		mounted:function(){
			this.send()
		},
		updated:function(){
			let _this=this
			eventBus.$on('showClassEvent', function(id){
				_this.tutor_id=id
				axios.get('http://localhost/web/adminpage/tutor_class_vue.do',{
					params:{
						id:_this.tutor_id
					}
				}).then(function(response){
					console.log(response.data)
					_this.tutor_class=response.data
				})
			})
		},
		methods:{
			send:function(){
				let _this=this
				axios.get("http://localhost/web/adminpage/tutor_list_vue.do",{
					params:{
						page:this.curpage
					}
				}).then(function(response){
					console.log(response.data)
					_this.tutor_list=response.data
					_this.curpage=response.data[0].curpage
					_this.totalpage=response.data[0].totalpage
				})
			},
			pageChange:function(page){
				this.curpage=page
				this.send()
			},
			prev:function(){
				this.curpage=this.curpage>1?this.curpage-1:this.curpage
				this.send()
			},
			next:function(){
				this.curpage=this.curpage<this.totalpage?this.curpage+1:this.curpage
				this.send()
			}
		}
	})
</script>
</body>
</html>