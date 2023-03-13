<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <div class=rows>
		<div class="mintBtn_m" style="float: right">
			공지 등록
		</div>
		<div style="display: inline-block;height: 30px"></div>
		<div style="display: inline-block">
			<table class="table" style="table-layout: fixed;">
				<tr>
					<th width="15%" class="text-center">분류</th>
					<th width="45%" class="text-center">제목</th>
					<th width="15%" class="text-center">작성일</th>
					<th width="10%" class="text-center">조회수</th>
					<th width="15%" class="text-center">수정/삭제</th>
				</tr>
				<tr style="vertical-align: middle;" v-for="vo in notice_list">
					<td width="10%" class="text-center origin">{{vo.bno}}</td>
					<td width="45%" class="text-center origin"><a href="#">{{vo.title}}</a></td>
					<td width="15%" class="text-center origin"></td>
					<td width="10%" class="text-center origin">{{vo.hit}}</td>
					<td width="15%" class="text-center origin">
						<span><img src="#" style="height:20px;"></span>
						<span><img src="#" style="height:20px;"></span>
					</td>
				</tr>
			</table>
		</div>
<!-- 		<ul class="page_ul"> -->
<!--           <li class="page_li"><span class="page_a" style="font-size: 10px; width: 20px" v-on:click="prev()">◀</span></li> -->
<!--           <li class="page_li" v-for="i in range(startpage, endpage)"><span class="page_a" v-on:click="pageChange(i)">{{i }}</span></li>           -->
<!--           <li class="page_li"><span class="page_a" style="font-size: 10px; width: 20px" v-on:click="next()">▶</span></li> -->
<!--    		</ul> -->
	  </div>
<script>
	new Vue({
		el:'.container',
		data:{
			notice_list:[],
			curpage:1,
			totalpage:0,
			startpage:0,
			endpage:0
		},
		mounted:function(){
			this.send()
		},
		methods:{
			send:function(){
				let _this=this
				axios.get("http://localhost/web/adminpage/notice_list_vue.do",{
					params:{
						page:this.curpage
					}
				}).then(function(response){
					console.log(response.data)
					_this.notice_list=response.data
					_this.curpage=response.data[0].curpage
					_this.totalpage=response.data[0].totalpage
					_this.startpage=response.data[0].startpage
					_this.endpage=response.data[0].endpage
				})
			},
			prev:function(){
				this.curpage=this.startpage-1
				this.getData()
			},
			next:function(){
				this.curpage=this.endpage+1
				this.getData()
			},
			range:function(min, max){
				let array=[],
				j=0
				for(let i=min;i<=max;i++){
					array[j]=i
					j++
				}
				return array
			},
			pageChange:function(page){
				this.curpage=page
				this.getData()
			}
		}
	})
</script>
</body>
</html>