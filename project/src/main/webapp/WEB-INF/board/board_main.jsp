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
.view_btn{
  width:60%;
}

</style>
<script src="../Scripts/renewal2203/js/index.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
   let btype=$('#btype').attr("btype")
   if(btype==1)
   {
      $('#btype1').css("color","#45c5c5")
   }
   else if(btype==2)
   {
      $('#btype2').css("color","#45c5c5")
   }
   else if(btype==3)
   {
      $('#btype3').css("color","#45c5c5")
   }
   
})
</script>
</head>
<body>
<div id="app" class="container" style="padding:0;">

<%-- 세션아이디 : ${sessionScope.mvo.id }, 관리자여부 : ${sessionScope.mvo.admin } --%>

  <%-- 메뉴 --%>
  <div style="width:20%; float:left;">
  
     <%-- 선택된 게시판만 글씨 강조 --%>
     <%-- 게시판 메뉴 --%>
     <div class="board_menu" style="padding:50px 0 50px 30px;font-weight:bold;font-size:16px;">
        <input id="btype" type=hidden :btype="btype">
        <a id="btype1" href="../board/board_main.do?btype=1">자유주제</a>
        <a id="btype2" href="../board/board_main.do?btype=2">스터디 & 모임</a>
        <a id="btype3" href="../board/board_main.do?btype=3">공지사항</a>
     </div>
     
     <%-- 게시글 최다 작성 랭킹 --%>
      <div class="board_rank" style="padding:5px;">
         <div class="board_rank_box" style="padding:15px;border:1px solid lightgray;margin:0 0 70px 0;">
            <h4 style="margin:0 0 15px 0;font-size:14px;text-align:center;">올해 게시글 작성 랭킹</h4>
            
            <%-- 유저 1명(전체 반복) --%>
            <c:forEach var="wvo" items="${writerList }">
               <div class="rank_item" style="padding:5px 0;display:flex;justify-content:space-between;align-items:center;">
                 <div style="display:flex;align-items:center;">
                   <i class="fa-solid fa-crown" style="color:#ffc300;"></i>
                   <span style="margin:0 0 0 5px;width:85px;font-size:12px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">${wvo.name }</span>
                 </div>
                 <span style="margin:0 0 0 5px;font-size:12px;">${wvo.boardCnt }글</span>
               </div>
            </c:forEach>
         </div>
     </div>
     
     
     
  </div>
  
  
  <%-- 게시판 메인(컨텐트) --%>
  <div style="padding:50px 0 50px 50px;width:80%; float:right;margin:0 0 50px 0;">
  
      <%-- 기본 검색창 --%>
       <div class="board_search">
         <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
         <input type=text placeholder="궁금한 것을 검색해보세요!" ref="word" v-model="word" v-on:keyup.enter="search()">
         <button style="width:95px;height:45px;background:#45c5c5;border:0;color:white;" v-on:click="search()">검색</button>
       </div>
         
       <%-- 태그 검색창 --%>
<!--         <div class="board_search">
         <i class="fa-regular fa-hashtag"></i>
         <input type=text placeholder="태그로 검색해보세요!">
         <button style="width:95px;height:45px;background:#eaeaea;border:0;">초기화</button>
       </div> -->
        
       <%-- 정렬버튼, 글작성 버튼 --%>
       <div class="board_btns" style="margin: 15px 0;display:flex;justify-content:space-between;align-items:center;">
         <%-- 정렬 버튼 --%>
         <div class="view_btn" style="line-height:45px;border:0;">
           <a :href="'../board/board_main.do?btype='+btype+'&order=recent'" class="all_btn" style="padding:0 40px 0 0;border:0;">최신순</a>
           <a :href="'../board/board_main.do?btype='+btype+'&order=hit'" class="all_btn" style="padding:0 40px 0 0;border:0;">조회수순</a>
           <a v-if="btype==1 || btype==2" :href="'../board/board_main.do?btype='+btype+'&order=reply'" class="all_btn" style="padding:0 40px 0 0;border:0;">댓글많은순</a>
         </div>
         
        <%-- 글작성 버튼 --%>
         <c:if test="${sessionScope.mvo.id==null }">
             <span style="color:#45c5c5;">로그인 후 이용 가능합니다.</span>
             <a v-if="btype==1 || btype==2" class="all_btn write_btn" style="color:white;">글작성&nbsp;&nbsp;<i class="fa-solid fa-pencil" style="color:white;"></i></a>
         </c:if>
         <c:if test="${sessionScope.mvo.id!=null }">
            <c:if test="${sessionScope.mvo.admin!='y' }">
              <a v-if="btype==1 || btype==2" :href="'../board/board_insert.do?btype='+btype" class="all_btn write_btn">글작성&nbsp;&nbsp;<i class="fa-solid fa-pencil" style="color:white;"></i></a>
            </c:if> 
            
            <c:if test="${sessionScope.mvo.admin=='y' }">
              <a :href="'../board/board_insert.do?btype='+btype" class="all_btn write_btn">글작성&nbsp;&nbsp;<i class="fa-solid fa-pencil" style="color:white;"></i></a>
            </c:if>
         </c:if>
       </div>
       
       <%-- 게시글 목록 --%>
       <div class="board_item" v-for="(vo,index) in board_list" style="clear:both;">
      
            <hr style="margin:0 0 10px 0; border-top:1px solid lightgray;">
            <a :href="'../board/board_detail.do?bno='+vo.bno">
            <div style="padding:15px;">
               <h4 class="board_title" style="font-size:20px;">{{vo.title}}</h4>
               <p class="board_content">{{vo.content}}</p>
               
               <%-- 태그 (공백으로 잘라서 전체 출력하기)--%>
                 <div class="board_tag" style="margin: 10px 0;">
                 <div v-if="vo.tag!=null">
                   <span class="all_btn all_tag" v-for="t in vo.tag.split(' ')" style="background:#d1eeee;margin:0 10px 0 0;padding:5px 10px;border:0;border-radius:50px;">{{t}}</span>
                 </div>
               </div>
               
               <%-- 게시글 정보(작성자,작성일,조회수,댓글수) --%>
               <div class="board_bottom" style="display:flex;justify-content:space-between;align-items:center;">
                 <%-- 작성자, 작성일 --%>
                 <div style="margin: 10px 0;">
                   <span>{{vo.name}}&nbsp;&nbsp;|&nbsp;&nbsp;{{vo.dbday}}</span>
                 </div>
                 <%-- 조회수, 댓글수 --%>
                 <div style="margin:0;">
                   <i class="fa-regular fa-eye"></i>&nbsp;{{vo.hit}}&nbsp;&nbsp;
                   <i class="fa-regular fa-message"></i>&nbsp;{{vo.replyCnt}}
                 </div>
               </div>
            </div>
            </a>
          
        </div>
        <%-- 공지사항 목록 --%>
        
      
       <%-- 게시글 페이징 처리 --%>
      <div class="text-center" v-if="totalpage>0">
         <input type="button" class="all_btn" value="이전" style="margin:15px;border:1px solid gray;background:white;" @click="prev()">
         {{curpage}} / {{totalpage}} 
         <input type="button" class="all_btn" value="다음" style="margin:15px;border:1px solid gray;background:white;" @click="next()">
      </div>
       <div v-if="totalpage==0">
        <div v-if="btype==1 || btype==2">
          <hr style="margin:0 0 10px 0; border-top:1px solid lightgray;">
          <h3 style="margin:40px 0px 10px 0;font-size:20px;font-weight:bold;">아직 작성된 게시글이 없습니다. <i style="font-size:24px;"class="fa-regular fa-comment-dots"></i></h3>
          <h4 style="font-size:16px;">가장 먼저 게시글을 작성해보세요!</h4>
         </div>
         <div v-else>
          <hr style="margin:0 0 10px 0; border-top:1px solid lightgray;">
          <h3 style="margin:40px 0px 10px 0;font-size:20px;font-weight:bold;">
            <i style="font-size:24px;color:lightgray;" class="fa-solid fa-circle-exclamation"></i>
            &nbsp;&nbsp;아직 등록된 공지사항이 없습니다.
          </h3>
         </div>
       </div>
    
  </div>



</div>    
<script>
  new Vue({
     el:'.container',
     data:{ 
        btype:${btype},
        board_list:[],
        word:'',
        curpage:1,
        totalpage:0
        //,search_list:[] 
        
     }, 
     mounted:function(){
        this.send()
        let _this=this
        axios.get('http://localhost/web/board/board_main_vue.do',{
           params:{
              page:_this.curpage,
              btype:_this.btype
           }
        }).then(function(response){
           console.log(response.data)
           _this.board_list=response.data
        })
     },
     methods:{ 
        prev:function(){
           this.curpage=this.curpage>1?this.curpage-1:this.curpage
           this.send()
        },
        next:function(){
           this.curpage=this.curpage<this.totalpage?this.curpage+1:this.curpage
           this.send()               
        },
        send:function(){
           let _this=this
           axios.get('http://localhost/web/board/board_main_vue.do',{
              params:{
                 page:_this.curpage,
                 btype:_this.btype
              }
           }).then(function(response){
              console.log(response.data)
              _this.board_list=response.data
              _this.curpage=response.data[0].curpage 
              _this.totalpage=response.data[0].totalpage 
              _this.btype=response.data[0].btype
           }) 
        }
         ,
        search:function(){
           let _this=this
           axios.get('http://localhost/web/board/board_search_vue.do',{
              params:{
                 btype:this.btype,
                 word:this.word
              }
           })
             .then(function(response){
              console.log(response.data)
              _this.board_list=response.data //search_list
              _this.curpage=response.data[0].curpage 
              _this.totalpage=response.data[0].totalpage 
              _this.btype=response.data[0].btype
           })
        }
        
     }
  }) 

</script>
</body>
</html>