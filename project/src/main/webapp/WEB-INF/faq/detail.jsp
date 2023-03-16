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
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    {{faq_detail.subject}}
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>{{faq_detail.ano}}</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>{{faq_detail.name}}</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>{{faq_detail.dbday}}</dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>{{faq_detail.hit}}</dd>
                    </dl>
                </div>
                <div class="cont">
                    {{faq_detail.content}}
                </div>
            </div>
            <div class="bt_wrap">
                <a href="../faq/list.do" class="on">목록</a>
                <a :href="'../faq/update.do?ano='+faq_detail.ano">수정</a>
                <a :href="'../faq/delete.do?ano='+faq_detail.ano">삭제</a>
            </div>
        </div>
    </div>
    <script>
  new Vue({
	  el:'.rows',
	  data:{
		  ano:${ano},
		  faq_detail:{}
	  },
	  mounted:function(){
		  let _this=this
		  axios.get("http://localhost/web/faq/detail_vue.do",{
			  params:{
				  ano:this.ano
			  }
		  }).then(function(response){
			  _this.faq_detail=response.data
		  })
	  }
  })
</script>
</body>
</html>