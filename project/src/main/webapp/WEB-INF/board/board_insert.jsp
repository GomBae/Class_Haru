<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- 기본 css -->
<link rel="stylesheet" href="../css/all.css">
<!-- 게시판 css -->
<link rel="stylesheet" href="../css/board_style.css">
<style type="text/css">
.all_tag{
  background:#d1eeee;
  margin:0 10px 0 0;padding:5px 10px;
  border:0;border-radius:50px;
}
/* 제목, 태그입력 관련 */
.input_text{
  padding: 0 20px;
  width:100%;
  height:45px;
  border:1px solid lightgray;
  font-size:16px;
}
.remove_btn{
  padding:0 10px;
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
var tag=''
var tagAll=''
var no=0
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
	
	//태그 입력 관련
	
	$('#insert_tag').keydown(function(e){
		if(e.keyCode==13)
		{
			no=no+1
			e.preventDefault()
			var tag=$(this).val()
			console.log(tag)
			//var inputLength=$(this).val().length //입력한 값의 글자수
			$('#print_tag').append('<span id="no'+no+'"class="all_btn all_tag">'+tag+" "+'<button class="remove_btn"><i class="fa-solid fa-xmark"></i></button></span>')
			$('#insert_tag').val('')
			
			//입력된 태그 전체 합치기
			tagAll=$('#print_tag').text().trim()
			console.log("1) tagAll:"+tagAll) //확인용
			
			//span태그에 묶은 태그값 넣기
			$('#tagAll').val(tagAll)
			
			//태그 삭제하기 (전체태그에서 뒤에서부터 제외할 문자길이만큼 자르기..?)
/* 			$('.remove_btn').click(function(){
				alert("삭제!")
				$('span').remove('#no'+no)
				no=no-1
				console.log(no)
			}) */
		}
		
		$('.remove_btn').click(function(){
			alert("삭제!")
			$('span').remove('#no'+no)
			no=no-1
			console.log(no)
		})
	})
	console.log("2) tahAll:"+tagAll) 


	//제목,내용 미입력 시 등록버튼 비활성화 처리하기
})
</script>
</head>
<body>
<div class="container" id="app">


  <div style="margin:50px auto;width:100%;">

		<%-- 게시글 작성 관련, 게시판 선택버튼 --%>
		<div id="select_board" style="margin:0 0 24px 0;">
		  <div>
		    <a id="btype1" href="../board/board_insert.do?btype=1" class="all_btn">자유주제</a>
		    <a id="btype2" href="../board/board_insert.do?btype=2" class="all_btn">스터디 & 모임</a>
		    <c:if test="${sessionScope.mvo.admin=='y' }">
		      <a id="btype3" href="../board/board_insert.do?btype=3" class="all_btn">공지사항</a>
		    </c:if>
		    <input type=hidden id=btype :btype="btype">
		  </div>
		</div>
		
		<%-- 공지사항 등록 관련 안내 --%>
<%-- 		<div v-if="btype==3">
        <c:if test="${sessionScope.mvo.admin=='n' }">
			  <h3 style="margin:60px 0 20px 0;font-size:24px;font-weight:bold;">
			    <i style="font-size:24px;color:#45c5c5;" class="fa-solid fa-circle-exclamation"></i>
			    공지사항은 관리자에 한해 등록 가능합니다.
			  </h3>
			  <h4 style="margin:0 0 60px 0;font-size:20px;">상단에서 다른 게시판을 선택해주세요!</h4>
		</c:if>
		</div> --%>

	<%-- 게시글 작성 영역 --%>
	<div>
		
		<%-- 제목 입력란 --%>
		<div id="insert_title" style="margin:0 0 30px 0;">
		  <div class="input_name">제목</div>
		  <input type=text class="input_text" v-model="title">
		</div>
		
		<%-- 태그 입력란 --%>
<%-- 		<div class="input_area" style="margin:0 0 30px 0;">
			  <div class="input_name">태그<span style="color:gray;">&nbsp;&nbsp;&nbsp;본문과 관련된 태그를 입력해보세요!</span></div>
			  <input type="text" class="input_text" id="insert_tag">
			  입력된 태그 출력
			  <div id="print_tag" style="margin:20px 0;">
			   
			  </div>
			  입력된 전체태그 하나로 모으기
			  <input id="tagAll" type=text ref="tag"/>
		</div> --%>
		
		<%-- 내용 입력란 --%>
		<div style="margin:0 0 15px 0;">본문</div>
		
		<textarea class="textBox" v-model="content" placeholder="게시글을 작성해주세요!">
		    
		</textarea>
		
		<%-- 등록, 취소 버튼 --%>
		<div v-if="btype==1 || btype==2">
			<div class="insert_btns" style="margin:20px 0 100px 0;float:right;">
			  <input type=hidden id=btype :btype="btype">
			  <a class="all_btn" :href="'../board/board_main.do?btype='+btype" style="padding:10px 25px;background:#eaeaea">취소</a>
			  <span class="all_btn" style="padding:10px 25px;background:#45c5c5;border:0;color:white;" v-on:click="write()">등록<span>
			</div>
		</div>
		<div v-if="btype==3">
			<c:if test="${sessionScope.mvo.admin=='y' }">
			    <div class="insert_btns" style="margin:20px 0 100px 0;float:right;">
				  <input type=hidden id=btype :btype="btype">
				  <a class="all_btn" :href="'../board/board_main.do?btype='+btype" style="padding:10px 25px;background:#eaeaea">취소</a>
				  <span class="all_btn" style="padding:10px 25px;background:#45c5c5;border:0;color:white;" v-on:click="write()">등록<span>
				</div>
			</c:if>
		</div>
	</div>	
		
		
  </div>
</div>
<script>

	new Vue({
		el:'.container',
		data:{
			btype:${btype}, 
			title:'',
			content:''
		},
		//
/* 		mounted:function(){
			let _this=this
			axios.get('http://localhost/web/board/idCheck_vue.do').then(function(response){
				console.log(response.data)
				_this.id=response.data
			})
		}, */
		methods:{
			write:function(){
				let _this=this
				axios.get('http://localhost/web/board/board_insert_vue.do',{
					params:{
						//public String board_insert_vue(BoardVO vo)
						btype:this.btype,
						title:this.title,
						tag:this.$refs.tag.value, 
						content:this.content
					}
				}).then(function(response){
					location.href="../board/board_main.do?btype="+_this.btype
				})
			}
/* 			,
			sendTag:function(){
				let _this=this
				axios.get('')
			} */
		}
	})
	
	
	
	
	
  </script>
  
</body>
</html>