<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
#select_board a{
  margin:0 10px 0 0;
  border:0;
  background:#f0f0f0;
}
.textBox{
  padding:15px;width:100%;height:400px;border:1px solid lightgray;border-radius:4px;resize:none;overflow:auto;
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
		    <a id="btype1" href="../board/board_insert.do?btype=1" class="all_btn">자유주제</a>
		    <a id="btype2" href="../board/board_insert.do?btype=2" class="all_btn">스터디 & 모임</a>
		    <a id="btype3" href="../board/board_insert.do?btype=3" class="all_btn">공지사항</a>
		    <input type=hidden id=btype :btype="btype">
		  </div>
		</div>
		
		<%-- 제목 입력란 --%>
		<div id="insert_title" style="margin:0 0 30px 0;">
		  <div class="input_name">제목</div>
		  <input type=text class="input_text" v-model="title">
		</div>
		
		<%-- 태그 입력란 --%>
		<div id="insert_tag" style="margin:0 0 30px 0;">
			  <div class="input_name">태그<span style="color:gray;">&nbsp;&nbsp;&nbsp;(최대 5개 입력)</span></div>
			  <input type="text" class="input_text" v-model="tag" placeholder="본문과 관련된 태그를 입력해보세요!">
			  <%-- 입력된 태그 출력 --%>
			  <div id="print_tag">
			  
			  </div>
		</div>
		
		<%-- 내용 입력란 --%>
		<div style="margin:0 0 15px 0;">본문</div>
		
		<textarea class="textBox" v-model="content" placeholder="게시글을 작성해주세요!">
		    
		</textarea>
		<div class="insert_btns" style="margin:20px 0 100px 0;float:right;">
		  <input type=hidden id=btype :btype="btype">
		  <a class="all_btn" :href="'../board/board_main.do?btype='+btype" style="padding:10px 25px;background:#eaeaea">취소</a>
		  <span class="all_btn" style="padding:10px 25px;background:#45c5c5;border:0;color:white;" v-on:click="write()">등록<span>
		</div>
		
		
  </div>
</div>
<script>

	new Vue({
		el:'.container',
		data:{
			btype:${btype}, 
			title:'',
			tag:'',
			content:''
		}, 
		methods:{
			write:function(){
				let _this=this
				axios.get('http://localhost/web/board/board_insert_vue.do',{
					params:{
						//public String board_insert_vue(BoardVO vo)
						btype:this.btype,
						title:this.title,
						tag:this.tag, 
						content:this.content
					}
				}).then(function(response){
					location.href="../board/board_main.do?btype="+_this.btype
				})
			}
		}
	})
	
	
	
	
	
  </script>
  
</body>
</html>