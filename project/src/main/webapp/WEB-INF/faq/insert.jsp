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
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력" v-model="subject"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text" placeholder="글쓴이 입력" v-model="name"></dd>
                    </dl>
                    <dl>
                        <dt>비밀번호</dt>
                        <dd><input type="password" placeholder="비밀번호 입력" v-model="pwd"></dd>
                    </dl>
                    <div style="height: 20px"></div>
                    <dl>
                        <dt>구분</dt>
                        
                        <dd>
                          <input type="radio" v-model="cate_no" name="cate-no" value=2>튜터&nbsp;&nbsp;&nbsp;
                          <input type="radio" v-model="cate_no" name="cate-no" value=1>수강생
                        </dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력" v-model="content"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a class="on" v-on:click="write()">등록</a>
                <a onclick="javascript:history.back()">취소</a>
            </div>
        </div>
    </div>
    <script>
  new Vue({
	  el:'.rows',
	  data:{
		  name:'',
		  subject:'',
		  content:'',
		  pwd:'',
		  cate_no:1
	  },
	  methods:{
		  write:function(){
			  let _this=this;
			  axios.get('http://localhost/web/faq/insert_vue.do',{
				  params:{
					  name:this.name,
					  subject:this.subject,
					  content:this.content,
					  pwd:this.pwd,
					  cate_no:this.cate_no
				  }
			  }).then(function(response){
				  location.href="../faq/list.do"
			  })
		  }
	  }
  })
</script>
</body>
</html>