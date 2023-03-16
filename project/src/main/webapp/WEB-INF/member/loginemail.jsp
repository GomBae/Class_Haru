<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- login_main -->
	<section class="cont_login container">      
<!-- 		<form action="../member/login_vue.do" method="post" id="frm-login"> -->
		<div class="box_login login_email">
			<h2 class="tit">간편하게 로그인하고 하루의<br> 다양한 튜터를 만나보세요.</h2>
			<div class="box_inp">
				<div class="line_inp">
					<input type="text" id="id" name="id" placeholder="이메일 주소를 입력해주세요" v-model="id" ref="id">
<!-- 					<p class="info_error" id="emailError1" >이메일을 입력해주세요.</p> -->
						
				</div>                    
				<div class="line_inp line_pw">
					<input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력해주세요" v-model="pwd" ref="pwd">

				</div>  
				<p class="info_error" v-model="message">{{message}}</p>                  
			</div>                
			<div class="box_btn">
				<input type="button" value="로그인 하기" class="btn_submit" v-on:click="login()">
				<a class="btn" href="#">비밀번호 찾기</a>
				<a class="btn" href="../member/loginjoin.do">회원가입</a>
			</div>                
		</div>       
	</section>
	<!-- //login_main -->        
<script>
new Vue({
    el:'.login_email',
    data:{
       id:'',
       pwd:'',
       msg:'',
       message:''
    },
    methods:{
       login:function(){
       	let _this=this;
          if(this.id.trim()=="")
          {
             this.$refs.id.focus();
             this.message='이메일을 입력해주세요.';
             return
          }
          if(this.pwd.trim()=="")
          {
             this.$refs.pwd.focus();
             this.message='비밀번호를 입력해주세요.';
             return
          }
          
          axios.get('http://localhost/web/member/login_vue.do',{
             params:{
                id:this.id,
                pwd:this.pwd
             }
          }).then(function(response){
             let res=response.data.trim();
             if(res==='NOID')
             {
                _this.message='이메일 또는 비밀번호를 확인해주세요.';
                
             }
             else if(res==="NOPWD")
             {
           	  	_this.message='이메일 또는 비밀번호를 확인해주세요.';         
             }
             else
             {
                location.href="../main/main.do"
             }
          })
       }
    }
 })
</script>
</body>
</html>