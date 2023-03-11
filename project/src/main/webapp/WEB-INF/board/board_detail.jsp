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
/* 상세보기 제목 */
h1.board_title{
  margin: 0 0 20px 0;
  font-size:32px;
}
.board_info{
  width:70%;
  float:left;
  display:flex;
  align-items:center;
}
/* 상단 게시글 작성자, 작성일, 조회수, 댓글수 */
.board_info,.board_info > *{
  color:gray;
}
.board_info span,.board_info i{
  /* margin:0 10px 0 0; */
}
/* 닉네임 */
.nickname{
  margin:0 20px 0 10px; width:130px;
}
/* 상단 수정, 삭제 버튼 */
div div a.all_btn{
  border: 1px solid gray;
}
/* 본문 내용 */
.board_allcontent{
  clear:both; display:inline-block;
  margin:50px 0; width:100%;
  font-size:16px;line-height:200%; white-space:pre-line;
}
/* 하단 댓글 관련 */
.reply_item:last-child>hr{
  display:none;
}
.reply_content{
  margin:20px 0; width:100%;
  font-size:16px; line-height:200%; white-space:pre;
}
</style>
</head>
<body>
<div id="app" class="container" style="margin:50px auto;padding:0;">
  
    <%-- 글, 댓글에 수정,삭제 버튼 추가하기 --%>
    <%-- 제목, 글정보 --%>
    
    <h1 class="board_title">{{bvo.title}}</h1>
    
    <div>
		<div class="board_info">
	        <img src="" style="width:40px;height:40px;background:pink;">
	        <span class="nickname">{{bvo.nickname}}</span>
	        <i class="fa-regular fa-file-lines"></i>&nbsp;{{bvo.dbday}}&nbsp;&nbsp;&nbsp;
	        <i class="fa-regular fa-eye"></i>&nbsp;{{bvo.hit}}&nbsp;&nbsp;&nbsp;
		    <i class="fa-regular fa-message"></i>&nbsp;{{bvo.replyCnt}}
	    </div>
	    
	    <%-- 상단 버튼 : 목록이동, 수정, 삭제 --%>
	    <div style="float:right;">
	       <a :href="'../board/board_main.do?btype='+bvo.btype" class="all_btn"><i class="fa-solid fa-angle-left" style="width:25px;text-align:center;"></i></a>
	       <%-- <c:if test="${sessionScope.id!=null }"> --%>
	          <a :href="'../board/board_update.do?bno='+bvo.bno" class="all_btn">수정</a>
	          <span class="all_btn" v-on:click="del()" style="border:1px solid gray;">삭제</span>
	       <%-- </c:if> --%>
	    </div>
    </div>
    
    <%-- 글내용 --%>
    <div class="board_allcontent" style="">{{bvo.content}}</div>
    
    <%-- 태그 --%>
    <div class="board_tag" style="margin: 20px 0 20px 0;">
	  <div v-if="bvo.tag!=null">
	    <span class="all_btn" v-for="t in bvo.tag.split(' ')" style="background:#eaeaea;margin:0 10px 0 0;padding:5px 10px;border:0;">{{t}}</span>
	  </div>
	</div>
			      
    <hr style="margin:30px 0;border-top:1px solid lightgray;">
    
    <%-- 댓글 영역 --%>
    <div class="replyArea" style="margin:0 0 50px 0;">
    
   
	    <%-- 댓글개수 --%>
	    <div style="margin:25px 0;font-size:20px;font-weight:bold;">댓글&nbsp;
	      <span style="font-size:24px;color:#45c5c5">{{bvo.replyCnt}}</span>
	    </div>
	    
	    <%-- 댓글입력란 --%>
	    <div class="replyInsertArea" style="width:100%;height:150px;margin:0 0 25px 0;">
	       <textarea class="msgBox"></textarea>
	       <button class="reply_btn" v-on:click="replyInsert()">댓글작성</button>
	    </div>
	    
	    <%-- 작성된 댓글 --%>
	    <div class="reply_all" style="clear:both;">
	        
	        <%-- 댓글 1개(전체 개수만큼 반복) --%>
		    <div class="reply_item">
			    <%-- 댓글정보 --%>
			    <div class="reply_info">
			        <img src="" style="width:40px;height:40px;background:pink;">
			        <span style="margin:0 10px 0 10px;width:120px;font-size:16px;">유저닉네임</span>&nbsp;&nbsp;
			        <span style="color:gray;font-size:14px;">2023-03-04</span>&nbsp;&nbsp;
			    </div>
			    <%-- 댓글내용 --%>
			    <div class="reply_content">저요!!</div>
		        <button class="all_btn" style="font-size:16px;padding:5px 10px;background:#eaeaea;">답글</button>
		        <hr style="margin:30px 0;border-top:1px solid lightgray;">
		    </div>
		    
	    </div>
	    
	    
    </div>
    
</div>
<script>
	new Vue({
		el:'.container',
		data:{
			bno:${bno}, 
			bvo:{} //게시글 1개
		},
		mounted:function(){
			  let _this=this
			  axios.get('http://localhost/web/board/board_detail_vue.do',{
				  params:{
					  bno:_this.bno
				  }
			  }).then(function(response){
				  console.log(response.data)
				  _this.bvo=response.data
			  })
		},
		methods:{
			del_check:function(){
				
			},
			del:function(){
				let _this=this
				axios.get('http://localhost/web/board/board_delete_vue.do',{
					params:{
						bno:this.bno
					}
				}).then(function(response){
					location.href="../board/board_main.do?btype="+_this.bvo.btype
				})
			} 
		}
	})
	

	
</script>
</body>
</html>