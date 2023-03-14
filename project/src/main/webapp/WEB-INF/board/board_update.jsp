<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 기본 css -->
<link rel="stylesheet" href="../css/all.css">
<!-- 게시판 css -->
<link rel="stylesheet" href="../css/board_style.css">
<style type="text/css">

/* 제목, 태그입력 관련 */
.input_text{
  padding: 0 20px;
  width:100%;
  height:45px;
  border:1px solid lightgray;
  font-size:16px;
}
.input_name{
  margin:0 0 10px 0;
  font-size:16px;
}
.all_btn{
  display:inline-block;
}
/* update용 - cursor 디폴트 지정 */
#select_board a{
  margin:0 10px 0 0;
  border:0;
  background:#f0f0f0;
  cursor:default;
}
.textBox{
  padding:15px;
  width:100%;height:400px;
  line-height:200%;
  border:1px solid lightgray;border-radius:4px;
  resize:none;overflow:auto;
  font-size:16px;
}
.textBox:focus{
  outline:none;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	let btype=$('#btype').attr("btype")
	if(btype==1)
	{
		$('#btype1').css({"background":"#45c5c5","color":"white"})
	}
	else if(btype==2)
	{
		$('#btype2').css({"background":"#45c5c5","color":"white"})
	}
	else if(btype==3)
	{
		$('#btype3').css({"background":"#45c5c5","color":"white"})
	}
	
	//제목,내용 미입력 시 등록버튼 비활성화 처리하기
})
</script>
</head>
<body>
<div class="container" id="app">


  <div style="margin:50px auto;width:100%;">

		<%-- 게시글 작성 관련 게시판 구분 --%>
		<div id="select_board" style="margin:0 0 24px 0;">
		  <div>
		    <a id="btype1" class="all_btn">자유주제</a>
		    <a id="btype2" class="all_btn">스터디 & 모임</a>
		    <c:if test="${sessionScope.mvo.admin=='y'}">
		      <a id="btype3" class="all_btn">공지사항</a>
		    </c:if>
		    <input type=hidden id=btype :btype="btype">
		  </div>
		</div>
		
		<%-- 제목 입력란 --%>
		<div id="insert_title" style="margin:0 0 30px 0;">
		  <div class="input_name">제목</div>
		  <input type=text class="input_text" v-model="title">
		</div>
		
		<%-- 태그 입력란 --%>
<%-- 		<div id="insert_tag" style="margin:0 0 30px 0;">
			  <div class="input_name">태그<span style="color:lightgray;">&nbsp;&nbsp;&nbsp;본문과 관련된 태그를 입력해주세요.</span></div>
			  <input type="text" class="input_text" v-model="tag">
			  입력된 태그 출력
			  <div id="print_tag">
			  
			  </div>
		</div> --%>
		
		<div class="board_tag" style="margin: 20px 0 20px 0;">
		   <div v-if="tag!=null">
		      <span class="all_btn all_tag" v-for="t in tag.split(' ')" style="background:#d1eeee;margin:0 10px 0 0;padding:5px 10px;border:0;border-radius:50px;">{{t}}</span>
		   </div>
		</div>
		
		<%-- 내용 입력란 --%>
		<div style="margin:0 0 15px 0;">본문</div>
		
		<textarea class="textBox" v-model="content" placeholder="게시글을 작성해주세요!">
		    
		</textarea>
		<div class="insert_btns" style="margin:20px 0 100px 0;float:right;">
		  <input type=hidden id=btype :btype="btype">
		  <a class="all_btn" :href="'../board/board_detail.do?bno='+bno" style="padding:10px 25px;background:#eaeaea">취소</a>
		  <span class="all_btn" style="padding:10px 25px;background:#45c5c5;border:0;color:white;" v-on:click="update()">수정<span>
		</div>
		
		
  </div>
</div>
<script>

	new Vue({
		el:'.container',
		data:{
			bno:${bno},
			btype:'',
			title:'',
			tag:'',
			content:''
		}, 
		mounted:function(){ 
			let _this=this
			axios.get('http://localhost/web/board/board_update_vue.do',{
				params:{
					bno:this.bno
				}
			}).then(function(response){
				_this.btype=response.data.btype
				_this.title=response.data.title
				_this.tag=response.data.tag
				_this.content=response.data.content
			})
		},
		methods:{
			update:function(){
				let _this=this
				axios.get('http://localhost/web/board/board_update_ok_vue.do',{
					params:{
						bno:this.bno,
						title:this.title,
						tag:this.tag,
						content:this.content
					}
				}).then(function(response){
					location.href="../board/board_detail.do?bno="+_this.bno
				})
			}
		}
	})
	
	

  </script>
  
</body>
</html>