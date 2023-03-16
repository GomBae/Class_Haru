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
                        <dd><input type="text" v-model="subject" :value="subject"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text" v-model="name" :value="name"></dd>
                    </dl>
                    <dl>
                        <dt>비밀번호</dt>
                        <dd><input type="password" v-model="pwd" ref="pwd"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea  v-model="content">
                      {{content}}
                    </textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a class="on" v-on:click="update()">수정</a>
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
		  ano:${ano}
	  },
	  mounted:function(){
			  let _this=this;
			  axios.get('http://localhost/web/faq/update_vue.do',{
				  params:{
					 ano:this.ano
				  }
			  }).then(function(response){
				  _this.name=response.data.name
				  _this.subject=response.data.subject
				  _this.content=response.data.content
			  })
	  },
	  methods:{
		  update:function(){
			  let _this=this;
			  axios.get('http://localhost/web/faq/update_ok_vue.do',{
				  params:{
					 ano:this.ano,
					 name:this.name,
					 subject:this.subject,
					 content:this.content,
					 pwd:this.pwd
				  }
			  }).then(function(response){
				  let res=response.data;
				  if(res==='yes')
				  {
					  location.href="../faq/detail.do?ano="+_this.ano
				  }
				  else
				  {
					  alert('비밀번호가 틀립니다!!')
					  _this.pwd='';
					  _this.$refs.pwd.focus() // $('#pwd').focus()
				  }
			  })
		  }
	  }
})
</script>
</body>
</html>