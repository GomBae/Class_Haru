<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../faq_css/delete.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
<div class="login rows">
    
  <input type="password" placeholder="password" id="password" ref="pwd" v-model="pwd">  
 
  <input type="submit" value="삭제하기" v-on:click="del()">
  <div style="height: 20px"></div>
  <input type=button value="취소" class="btn btn-sm btn-default"  onclick="javascript:history.back()" style="margin-left: 220px">
</div>
<div style="height: 30px"></div>
      
<script>
  new Vue({
	  el:'.rows',
	  data:{
		  ano:${ano},
		  pwd:''
	  },
	  methods:{
		  del:function(){
			 let _this=this
			 axios.get('http://localhost/web/faq/delete_vue.do',{
				 params:{
					 ano:this.ano,
					 pwd:this.pwd
				 }
			 }).then(function(response){
				 if(response.data==='yes')
				 {
					 location.href="../faq/list.do"
				 }
				 else
				 {
				     alert("비밀번호가 틀립니다!!")
				     _this.pwd='';
				     _this.$refs.pwd.focus();
				 }
			 })
		  }
	  }
  })
</script>
</body>
</html>