<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- join -->
	<section class="cont_login container" id="accountJoin">
		<div class="box_login box_join">
			<h2 class="tit">
				간편하게 가입하고 하루의<br /> 다양한 튜터를 만나보세요.
			</h2>
			<div class="box_inp">
				<div class="line_inp">
					<input type="text" name="name" ref="name" v-model="name" placeholder="이름(실명)을 입력해주세요">
				</div>
				<div class="line_inp">
					<input type="text" name="id" ref="id" v-model="id" placeholder="이메일 주소를 입력해주세요">
				</div>
				<div class="line_inp line_pw">
					<input type="password" name="password" ref="pwd" v-model="pwd" placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="line_inp line_pw">
					<input type="password" name="confirm" ref="confirm" v-model="confirm" placeholder="비밀번호를 재입력해주세요">
				</div>
				<div class="line_inp">
					<p class="info_error" v-model="message">{{message}}</p>
				</div>
			</div>
			<div class="box_btn">
				<input type="button" value="회원가입" class="btn_submit" v-on:click="memberJoin()">
			</div>
		</div>
		<!-- 		</form> -->
	</section>

	<!-- //join -->
	<script>
new Vue({
	el:'.box_join',
	data:{
		id:'',
		pwd:'',
		confirm:'',
		name:'',
		message:''
	},
	// 이벤트 처리 
	methods:{
		memberJoin:function(){
			if(this.name==="")
			{
				this.message='이름을 입력해주세요.'
				this.$refs.name.focus();
				return 
			}
			if(this.id==="")
			{
				this.message='아이디를 입력해주세요.'
				this.$refs.id.focus();
				return;
			}
			if(this.pwd==="")
			{
				this.message='비밀번호를 입력해주세요.'
				this.$refs.pwd.focus();
				return
			}
			if(this.confirm==="")
			{
				this.message='비밀번호를 확인해주세요.'
				this.$refs.pwd.focus();
				return 
			}
			if(this.confirm!==this.pwd)
			{
				this.message='입력하신 비밀번호가 서로 다릅니다.'
				this.$refs.confirm.focus();
				return 
			}
			this.idCheck();
			let _this=this
			axios.get('http://localhost/web/member/insert_vue.do',{
				params:{
					id:_this.id,
					pwd:_this.pwd,
					name:_this.name
				}
			}).then(function(response){
				let result=response.data
				if(result==="yes")
				{
					location.href="../main/main.do"
				}
				else
				{
					alert("회원 가입에 실패하셨습니다")
					_this.id='';
					_this.pwd='';
					_this.confirm='';
					_this.name='';
					_this.$refs.name.focus()
				}
			})
		},
		idCheck:function(){
			if(this.id==='')
		    {
				this.$refs.id.focus()
				return
		    }
			let _this=this
			axios.get('http://localhost/web/member/idcheck_vue.do',{
				params:{
					id:this.id
				}
			}).then(function(response){
				let result=response.data
				if(result==='no')
				{
					_this.message=_this.id+'는(은) 이미 사용중인 이메일입니다.'
					_this.$refs.id.focus()
				}else{
					result='yes'
				}
			})
		}
	}
})
</script>
</body>
</html>