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
			<form action="../member/join_ok.do" method="post" id="frm-join">
            <div class="box_login box_join">
                <h2 class="tit">간편하게 가입하고 하루의<br/> 다양한 튜터를 만나보세요.</h2>
                <div class="box_inp">
                    <div class="line_inp">
                        <input type="text" name="name" id="userName" placeholder="이름(실명)을 입력해주세요">
						<p class="info_error" id="nameError1">이름(실명)을 입력해주세요.</p>
                    </div>
                    <div class="line_inp">
                        <input type="text" name="email" id="userEmail" placeholder="이메일 주소를 입력해주세요">
                        <p class="info_error" id="emailError1">이메일 형식에 맞지 않습니다.</p>
                        <p class="info_error" id="emailError2">이메일 주소를 입력해주세요.</p>
                    </div>                    
                    <div class="line_inp line_pw">
                        <input type="password" name="password" id="userPassword" placeholder="비밀번호를 입력해주세요">
                        <button type="button" class="type_pwd hide"></button>                        
                        <p class="info_error" id="passError1">비밀번호는 영문 숫자조합 8자리 이상 입력해주세요.</p>
                        <p class="info_error" id="passError2">비밀번호를 입력해주세요.</p>
                    </div>
                    <div class="line_inp line_pw">
                        <input type="password" name="confirm" id="confirm" placeholder="비밀번호를 재입력해주세요">
                        <button type="button" class="type_pwd hide"></button>
                        <p class="info_error" id="confirmError1">입력하신 비밀번호가 서로 다릅니다.</p>
                    </div>                   
                </div>                
                <div class="box_btn">
                    <button class="btn_submit" type="submit">다음</button>
                </div>                
            </div>       
			</form>
        </section>
        <section class="cont_login container" id="accountAgree"  style="display:none;">            
			<form action="#" method="post" id="frm-agree">
            <div class="box_login box_terms">
                <h2 class="tit"><b>환영합니다!</b>원활한 서비스 이용을 위해<br/>약관에 동의해주세요.</h2>
                <ul class="terms_lst">
                    <li class="terms_chk_all">
                        <div class="label_wrap">
                            <input class="blind inp_label all" type="checkbox" name="checkAll" id="checkAll">
                            <label for="checkAll" class="inp_chkbox">전체동의</label>
                        </div>                        
                    </li>
                    <li>
                        <div class="label_wrap">
                            <input class="blind inp_label" type="checkbox" name="checkTerms" id="termsService" value="termsService">
                            <label for="termsService" class="inp_chkbox">서비스 이용약관 (필수)</label>
                            <a href="/Support/Rule" class="link_more" target="_blank">보기</a>
                        </div>                        
                        <article><p>하루 서비스 이용과 관련하여 회사 및 이용자간의 권리, 의미 등을 안내해 드립니다.</p></article>                        
                    </li>
                    <li>
                        <div class="label_wrap">
                            <input class="blind inp_label" type="checkbox" name="checkTerms" id="termsPrivacy" value="termsPrivacy">
                            <label for="termsPrivacy" class="inp_chkbox">개인정보처리방침 (필수)</label>
                            <a href="/Support/Privacy" class="link_more" target="_blank">보기</a>
                        </div>                        
                        <article><p>서비스 이용과 관련하여 수집 이용하는 개인정보를 안내해 드립니다.</p></article>
                    </li>
                    <li>
                        <div class="label_wrap">
                            <input class="blind inp_label" type="checkbox" name="checkTerms" id="termsAge" value="termsAge">
                            <label for="termsAge" class="inp_chkbox">본인은 만 14세 이상입니다. (필수)</label>
                        </div>
                    </li>
                    <li>
                        <div class="label_wrap">
                            <input class="blind inp_label" type="checkbox" name="checkTerms" id="termsPush" value="1">
                            <label for="termsPush" class="inp_chkbox">이벤트 정보 수신 동의 (선택)</label>
                        </div>
                        <article><p>뉴스 및 이벤트, 관심 수업 소식 등 하루 서비스와 관련된 알림을 받을 수 있습니다.</p></article>
                        <p class="info_error act">서비스 이용약관과 개인정보처리방침에 모두 동의해주세요.</p>
                    </li>
                </ul>
                <div class="box_btn">
                    <button class="btn_submit" type="submit">시작 하기</button>
                </div>   
            </div>       
			</form>
        </section>
        <!-- //join -->
		<script>
		//비밀번호 숨기기
		$('.type_pwd').on('click',function() {
			var $this = $(this);
			$this.toggleClass('hide');
			if($this.hasClass('hide')){
				$this.prev('input').prop('type','password');
			}else{
				$this.prev('input').prop('type','text');
			}
		});

		//체크박스        
		function allCheckFunc(obj) {
			$("[name=checkTerms]").prop("checked", $(obj).prop("checked"));
		}
		/* 체크박스 체크시 전체선택 체크 여부 */
		function oneCheckFunc(obj) {
			var allObj = $("[name=checkAll]");
			var objName = $(obj).attr("name");

			if($(obj).prop("checked")){
				checkBoxLength = $("[name="+ objName +"]").length;
				checkedLength = $("[name="+ objName +"]:checked").length;                

				if(checkBoxLength == checkedLength){
					allObj.prop("checked", true);                    
				}else{
					allObj.prop("checked", false);
				}
			}else{
				allObj.prop("checked", false); 
			}
		}

		$(function(){
			$("[name=checkAll]").click(function(){
				allCheckFunc(this);
			});
			$("[name=checkTerms").each(function(){
				$(this).click(function(){
					oneCheckFunc($(this));
				});                
			});
			
		});        
	</script>
</body>
</html>