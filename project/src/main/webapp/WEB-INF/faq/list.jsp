<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../faq_css/css.css">
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
  <div class="board_wrap rows">
        <div class="board_title">
            <strong>자주묻는질문</strong>
            <p>수강생/튜터 자주묻는질문 관리페이지</p>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                </div>
                <div v-for="vo in faq_list">
                    <div class="num">{{vo.ano}}</div>
                    <div class="title"><a :href="'../faq/detail.do?ano='+vo.ano">{{vo.subject}}</a></div>
                    <div class="writer">{{vo.name}}</div>
                    <div class="date">{{vo.dbday}}</div>
                    <div class="count">{{vo.hit}}</div>
                </div>
                
            </div>
            <div class="board_page">
                <a v-on:click="prev()" v-if="startPage>1" class="bt prev"><</a>
                <a v-on:click="pageClick(i)" class="num on" v-for="i in range(startPage,endPage)" v-if="i===curpage">{{i}}</a>
                <a v-on:click="pageClick(i)" class="num" v-else>{{i}}</a>
                <a v-on:click="next()" class="bt next" v-if="endPage<totalpage">></a>
            </div>
            <div class="bt_wrap">
                <a href="../faq/insert.do" class="on">등록</a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>
    <script>
  new Vue({
	  el:'.rows',
	  // 멤버변수 
	  data:{
		  faq_list:[],
		  curpage:1,
		  totalpage:0,
		  startPage:0,
		  endPage:0
	  },
	  // _vue.do?page=1
	  mounted:function(){
		  this.pageChange();
	  },
	  /*
	       class A
	       {
		     A _this;
		     B b=new B(){
		    	 _this
		     }
		     public void display()
		     {
		         a=this
		     }
	       }
	       class B
	       {
	    	   
	       }
	  */
	  methods:{
		  pageChange:function(){
			  let _this=this;
			  axios.get("http://localhost/web/faq/list_vue.do",{
				  params:{
					  page:this.curpage
				  }
			  }).then(function(response){
				  console.log(response.data);
				  _this.faq_list=response.data;
				  _this.curpage=response.data[0].curpage
				  _this.totalpage=response.data[0].totalpage
				  _this.startPage=response.data[0].startPage
				  _this.endPage=response.data[0].endPage
			  })
		  },
		  range: function(min,max){
			  let array = [],
			  j = 0;
			  for(let i = min; i <= max; i++){
			    array[j] = i;
			    j++;
			  }
			  return array;
		  },
		  prev:function(){
			  // startPage  => 1,11,21....
			  this.curpage=this.startPage-1;
			  this.pageChange();
		  },
		  next:function(){
			  // endPage => 10,20,30...
			  this.curpage=this.endPage+1;
			  this.pageChange();
		  },
		  pageClick:function(page){
			  this.curpage=page
			  this.pageChange();
		  }
	  }
  })
</script>
</body>
</html>