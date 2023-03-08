$(document).ready(function () {
    $(window).scroll(function () {
        var max = 435;
        var val = $(this).scrollTop();
        var cover = $('.cover');

        if (!cover) {
            return;
        }

        if (max > val) {
            cover.css('transform', "scale(" + (1 + 0.1 * val / max) + ", " + (1 + 0.1 * val / max) + ")");
        } else {
            cover.css('transform', "scale(1.1, 1.1)");
        }
    });
    $('[data-show]').click(function (e) {
        if (e.target === this) {
            var targetId = $(this).attr('data-show');
            $('#' + targetId).show();

            e.stopPropagation();
        }
    });
    $('[data-hide]').click(function (e) {
        if (e.target === this) {
            var targetId = $(this).attr('data-hide');
            $('#' + targetId).hide();

            e.stopPropagation();
        }
    });
    $('[data-toggle]').click(function (e) {
        if (e.target === this) {
            var targetId = $(this).attr('data-toggle');
            $('#' + targetId).toggle();

            e.stopPropagation();
        }
    });

    $('[data-flyout]').click(function(e) {
        var targetId = 'flyout-' + $(this).attr('data-flyout');
        $('#' + targetId).toggleClass('show');
    });

    $('#frm-login').submit(function (e) {
        e.preventDefault();
		
        var frm = $(this);

        var email = frm.find('[name=email]').val();
        var password = frm.find('[name=password]').val();
		if (email == '') {
			$("#emailError1").addClass("act");
			$("#emailError1").closest('.line_inp').find('input').addClass('error');
			$("#email").focus();			
            return false;
        }else{
			$("#emailError1").removeClass("act");
			$("#emailError1").closest('.line_inp').find('input').removeClass('error');
		}

		if (password == '') {
			$("#passError1").addClass("act");
			$("#passError1").closest('.line_inp').find('input').addClass('error');
			$("#password").focus();			
            return false;
        }else{
			$("#passError1").removeClass("act");
			$("#passError1").closest('.line_inp').find('input').removeClass('error');
		}

        var keepLogin = frm.find('[name=keepLogin]').is(':checked');
		var pURL = parse_url(document.location.href);	
		var tPage = '';
		if(pURL['path'] == '/tutor/Register/Manual')
		{
			tPage = '/tutor/regiInfo/';
		}
 
		if($("#redirectUrl").val() !=""){
			tPage = $("#redirectUrl").val();
		}

        var p = [];		
		p.push('email='+email);
		p.push('password='+password);

		var pars = p.join('&');

		var Ajax = new Ajax2();
		Ajax.init('/Account/Login.php', {
			method: 'post'
			, parameters: pars
			, idTarget: ''
			, oSelf: this
			, onCreate: function(){}
			, onComplete: function(oXHR)
			{				
				var ret = eval('(' + oXHR.responseText + ')');
				if(oXHR.responseText=='0000')
				{  
					if(tPage =='')
					{
						location.href = "/";
					}
					else
					{
						location.href = tPage;
					}
        } else if (oXHR.responseText == '0001') {
            if (confirm('회원 탈퇴 처리가 진행 중인 계정입니다.\n지금 로그인 시 회원 탈퇴 신청이 취소됩니다.\n계속 진행 하시겠습니까?')) {
                $.ajax({
                    type: 'POST',
                    url: '/Account/AccountLeaveCancelProc.php',
                    data: {
                        email: email,
                        password: password,
                    },
                    dataType: 'json',
                    success: function (data) {
                        if (!!data && data.result == 'success') {
                            alert('회원 탈퇴 신청이 성공적으로 취소되었습니다.\n로그인 후 정상적으로 서비스 이용이 가능합니다.')
                            location.reload();
                        } else {
                            alert('회원 탈퇴 취소 신청에 실패하였습니다.\n잠시 후 다시 시도해 주시기 바랍니다.');
                        }
                    },
                    error : function () {
                        alert('회원 탈퇴 취소 신청에 실패하였습니다.\n잠시 후 다시 시도해 주시기 바랍니다.');
                    }
                });
            } else {
                alert('로그인을 취소하셨습니다.');
                return false;
            }
        }
				else
				{
					if(oXHR.responseText=='false')
					{
						$("#passError2").addClass("act");
						$("#passError2").closest('.line_inp').find('input').addClass('error');
						return false;
					}
					else
					{
						alert('등록 중인 수업이 있습니다. 이동합니다.');
						location.href = "/tutor/regiInfo/"+oXHR.responseText;
					}
				}
			}
		});
    });
	
    $('#frm-join').submit(function (e) {
        e.preventDefault();

        var frm = $(this);

        var name = frm.find('[name=name]').val();
        var email = frm.find('[name=email]').val();
        var password = frm.find('[name=password]').val();
        var confirm = frm.find('[name=confirm]').val();

		if (name.replace(/\s/g, '').length === 0) {
			$("#nameError1").addClass("act");
			$("#nameError1").closest('.line_inp').find('input').addClass('error');
			return false;
		} else {
			$("#nameError1").removeClass("act");
			$("#nameError1").closest('.line_inp').find('input').removeClass('error');
		}
		if (email == '') {
			$("#emailError2").addClass("act");
			$("#emailError2").closest('.line_inp').find('input').addClass('error');
            return false;
        }
		if (password == '') {
            $("#passError2").addClass("act");
			$("#passError2").closest('.line_inp').find('input').addClass('error');
            return false;
        }

		var patternEmail=/^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()\.,;\s@\"]+\.{0,1})+[^<>()\.,;:\s@\"]{2,})$/;
		if(!patternEmail.test(email)){
			 $("#emailError1").addClass("act");
			 $("#emailError1").closest('.line_inp').find('input').addClass('error');
			return false;
		}
 		
		var patternPassNum = /[0-9]/; // 숫자 
		var patternPassStr = /[a-zA-Z]/; // 문자 
		var patternPassEtc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자 

		if(password.length < 8) { 
			$("#passError1").addClass("act");
			$("#passError1").closest('.line_inp').find('input').addClass('error');
			return false; 
		} 

		if(!patternPassNum.test(password) || !patternPassStr.test(password)) { 
			$("#passError1").addClass("act");
			$("#passError1").closest('.line_inp').find('input').addClass('error');
			return false; 
		} 

		if (password !== confirm) {
            $("#confirmError1").addClass("act");
			$("#confirmError1").closest('.line_inp').find('input').addClass('error');
            return false;
        }	
		
		$("#accountAgree").show();
		$("#accountJoin").hide();
		 
    });

	$('#frm-agree').submit(function (e) {
        e.preventDefault();

        var frm = $(this);
		
        var name = $("#userName").val();
        var email = $("#userEmail").val();
        var password = $("#userPassword").val();
        var termsService = $("input:checkbox[id='termsService']").is(":checked");
		var termsPrivacy = $("input:checkbox[id='termsPrivacy']").is(":checked");
		var termsAge = $("input:checkbox[id='termsAge']").is(":checked");
		var termsPush = $("input:checkbox[id='termsPush']").is(":checked");

		if (!termsService) {
			alert('서비스 이용약관(필수) 에 체크해주세요.');
			return false;
		}
		if (!termsPrivacy) {
			alert('개인정보처리방침(필수) 에 체크해주세요.');
			return false;
		}
		if (!termsAge) {
			alert('본인은 만 14세 이상입니다. (필수) 에 체크해주세요.');
			return false;
		}
		
		var p = [];	
		p.push('name='+name);
		p.push('email='+email);
		p.push('password='+password);
        if (termsPush) {
            p.push('push=1');
        } else {
            p.push('push=0');
        }

		var ref = encodeURIComponent(document.location.href);

		var pars = p.join('&');

		var Ajax = new Ajax2();
		Ajax.init('/Account/Join.php', {
			method: 'post'
			, parameters: pars
			, idTarget: ''
			, oSelf: this
			, onCreate: function(){}
			, onComplete: function(oXHR)
			{						
				if(oXHR.responseText =='0000')
				{
					//alert('회원 가입이 완료되었습니다');
					location.href = 'joinConv.php';
				}
				else
				{
					alert(oXHR.responseText);
					$("#accountAgree").hide();
					$("#accountJoin").show();
				}				
			}
		});
		
    });

	

	$('#frm-prof').submit(function (e) {
        e.preventDefault();

        var frm = $(this);
		
		if(frm.find('[name=year]').val()=='')
		{
			alert('출생년도를 정확히 입력하세요');
            return false;
		}

		if(frm.find('[name=man]').val()=='')
		{
			alert('성별을 정확히 입력하세요');
            return false;
		}

		if(frm.find('[name=level]').val()=='')
		{
			alert('직업을 정확히 입력하세요');
            return false;
		}

        var man = frm.find('[name=man]').val();
        var level = frm.find('[name=level]').val();
        var year = frm.find('[name=year]').val();

		var p = [];	
		p.push('man='+man);
		p.push('level='+level);
		p.push('year='+year);

	
		var pars = p.join('&');

		var Ajax = new Ajax2();
		Ajax.init('/Account/Save.php', {
			method: 'post'
		, parameters: pars
			, idTarget: ''
			, oSelf: this
			, onCreate: function(){}
			, onComplete: function(oXHR)
			{						
				if(oXHR.responseText =='0000')
				{
					alert('등록해 주셔서 감사합니다');
					location.reload();
				}
				else
				{
					alert(oXHR.responseText);
				}				
			}
		});
    });
    $('#btn-menu-logout, #btn-flyout-menu-logout').click(function() {
		var p = [];	
		logout = '';
		p.push('logout='+logout);
		var pars = p.join('&');
        var Ajax = new Ajax2();
		Ajax.init('/Account/Logout.php', {
			method: 'post'
			, parameters: pars
			, idTarget: ''
			, oSelf: this
			, onCreate: function(){}
			, onComplete: function(oXHR)
			{				
				location.reload();
			}
		});    
    });

    $('#btn-popup-join-facebook, #btn-popup-login-facebook').click(function() {

		var ref = encodeURIComponent(document.location.href);
		var tPage = '';

        FB.login(function(response) {
            if (response.authResponse
                && response.status === 'connected') {

                var userId = response.authResponse.userID;
                var accessToken = response.authResponse.accessToken;
                FB.api('/me?fields=name,email,picture.redirect(false).width(200){url}', function (response) {
                    if(!response.email || response.email.replace(/\s/g, '').length === 0) {
                        alert('페이스북에 이메일 정보가 없습니다.\n페이스북 로그인 > 계정 설정 > \n연락처에 새로운 이메일을 추가 > 기본 연락처로 설정\n혹은 이메일로 회원가입을 해주세요.');
                        return;
                    }

                  $.post('/Account/LoginFacebook.php', {
                    name: response.name,
                    email: response.email,
                    userId: userId,
                    accessToken: accessToken,
                    picture: response.picture.data.url,
                  }).done(function(response) {
                    if (response == '0000') {
                      //location.reload();
                      if ($('#redirectUrl').val() != '') {
                        location.href = decodeURIComponent($('#redirectUrl').val());
                      } else {
                        location.href = '/';
                      }

                    } else if (response == '1111') {
                      location.href = '/joinConv.php?ref=' + ref;
                    } else if (response == '0001') {
                      if (confirm('회원 탈퇴 처리가 진행 중인 계정입니다.\n지금 로그인 시 회원 탈퇴 신청이 취소됩니다.\n계속 진행 하시겠습니까?')) {
                        $.ajax({
                          type: 'POST',
                          url: '/Account/AccountLeaveCancelProc.php',
                          data: {
                            facebookId: userId,
                          },
                          dataType: 'json',
                          success: function (data) {
                            if (!!data && data.result == 'success') {
                              alert('회원 탈퇴 신청이 성공적으로 취소되었습니다.\n로그인 후 정상적으로 서비스 이용이 가능합니다.')
                              location.reload();
                            } else {
                              alert('회원 탈퇴 취소 신청에 실패하였습니다.\n잠시 후 다시 시도해 주시기 바랍니다.');
                            }
                          },
                          error : function () {
                            alert('회원 탈퇴 취소 신청에 실패하였습니다.\n잠시 후 다시 시도해 주시기 바랍니다.');
                          }
                        });
                      } else {
                        alert('로그인을 취소하셨습니다.');
                        return false;
                      }
                    } else {
                      alert('등록 중인 수업이 있습니다. 이동합니다.');
                      location.href = '/tutor/regiInfo/' + response;
                    }


                    }).fail(function(rawResponse) {
                        alert(rawResponse.responseJSON.message);
                    });
                });
            } else {
                alert('페이스북 연동 중에 오류가 발생했습니다');
            }
        }, { scope: 'email, user_friends', return_scopes: true, auth_type: 'rerequest' });
    });

    $('#btn-resend-email').click(function() {
        $.post('/Account/Confirm/Resend', null)
         .done(function (response) {
             if (response=='0000') {
                 alert('인증 메일이 전송되었습니다');
             } else {
                 alert(response);
             }
		})
    });
	
    $("#chkAllInfo").click(function(){
		if($("#checkVal").val() == "false"){
			$("input[name=accept]").prop("checked",true);
			$("input[name=accept2]").prop("checked",true);
			$("#checkVal").val("true");
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=accept]").prop("checked",false);
			$("input[name=accept2]").prop("checked",false);
			$("#checkVal").val("false");
        }

	});
 
	 //gnb menu
    $('.depth2').on('click',function(e){
        var $this = $(this);
        if($this.hasClass('act')) {
            $('.depth2').removeClass('act');
        }else{
            $('.depth2').removeClass('act');
            $this.toggleClass('act');
        }
    });

    $(document).on('click',function(e) {
        var $trigger = $('.depth2');
        if($trigger !== e.target && !$trigger.has(e.target).length) {
            $('.depth2').removeClass('act');
        }
    });

});

/*모르겠음 시작*/
function parse_url(str, component) {
	var  o   = {
		strictMode: false,
		key: ["source","protocol","authority","userInfo","user","password","host","port","relative","path","directory","file","query","anchor"],
		q:   {
			name:   "queryKey",
			parser: /(?:^|&)([^&=]*)=?([^&]*)/g
		},
		parser: {
			strict: /^(?:([^:\/?#]+):)?(?:\/\/((?:(([^:@]*):?([^:@]*))?@)?([^:\/?#]*)(?::(\d*))?))?((((?:[^?#\/]*\/)*)([^?#]*))(?:\?([^#]*))?(?:#(.*))?)/,
			loose:  /^(?:(?![^:@]+:[^:@\/]*@)([^:\/?#.]+):)?(?:\/\/\/?)?((?:(([^:@]*):?([^:@]*))?@)?([^:\/?#]*)(?::(\d*))?)(((\/(?:[^?#](?![^?#\/]*\.[^?#\/.]+(?:[?#]|$)))*\/?)?([^?#\/]*))(?:\?([^#]*))?(?:#(.*))?)/ // Added one optional slash to post-protocol to catch file:/// (should restrict this)
		}
	};

	var m   = o.parser[o.strictMode ? "strict" : "loose"].exec(str),
	uri = {},
	i   = 14;
	while (i--) uri[o.key[i]] = m[i] || "";
	switch (component) {
		case 'PHP_URL_SCHEME':
			return uri.protocol;
		case 'PHP_URL_HOST':
			return uri.host;
		case 'PHP_URL_PORT':
			return uri.port;
		case 'PHP_URL_USER':
			return uri.user;
		case 'PHP_URL_PASS':
			return uri.password;
		case 'PHP_URL_PATH':
			return uri.path;
		case 'PHP_URL_QUERY':
			return uri.query;
		case 'PHP_URL_FRAGMENT':
			return uri.anchor;
		default:
			var retArr = {};
			if (uri.protocol !== '') retArr.scheme=uri.protocol;
			if (uri.host !== '') retArr.host=uri.host;
			if (uri.port !== '') retArr.port=uri.port;
			if (uri.user !== '') retArr.user=uri.user;
			if (uri.password !== '') retArr.pass=uri.password;
			if (uri.path !== '') retArr.path=uri.path;
			if (uri.query !== '') retArr.query=uri.query;
			if (uri.anchor !== '') retArr.fragment=uri.anchor;
			return retArr;
	}
}
/*모르겠음 끝*/
/*회원가입 후 회원 정보 조사 - 직업,출생년도,성별*/
	function boxclick(val)
	{
		var area = $('#box1');
		area.find('div').removeClass('on');
		
		$('#man1').find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_man_off.png');
		$('#man2').find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_woman_off.png');				

		$('#man'+val).addClass('on');
		if(val==1)
		{
			$('#man'+val).find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_man_on.png');
		}
		else
		{
			$('#man'+val).find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_woman_on.png');
		}
		$('#man').val(val);
	}

	function boxclick2(val)
	{
		var area = $('#box2');
		area.find('div').removeClass('on');
		
		$('#level1').find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_unv_off.png');
		$('#level2').find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_worker_off.png');
		$('#level3').find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_youths_off.png');
		$('#level4').find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_homemaker_off.png');


		$('#level'+val).addClass('on');
		if(val==1)
		{
			$('#level'+val).find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_unv_on.png');
		}
		else if(val==2)
		{
			$('#level'+val).find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_worker_on.png');
		}
		else if(val==3)
		{
			$('#level'+val).find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_youths_on.png');
		}
		else if(val==4)
		{
			$('#level'+val).find('img').attr('src', 'https://front-img.taling.me/Content/Images/icon_homemaker_on.png');
		}
		$('#level').val(val);
	}
	 

/*회원가입 후 회원 정보 조사 - 직업,출생년도,성별 - 끝*/
/*헤더 서브 메뉴 - 로그인,아웃,회원탈퇴 등 */
function mySub(){
	if($('#mySub').css('display')!='block'){
		$('#mySub').show();
	}else{
		$('#mySub').hide();
	}
}
/*주간 베스트 수업
$(document).mouseup(function (e){
	if($(e.target).attr('datasearch') != 'yes'){	
		$('.weekly_best').hide();
		$('.inner_area','.weekly_best').hide();
		$('div','.weekly_best').removeClass("inner_area");	
	}
});*/

// live shortcut 닫기
$(document).ready(function(){
    let btnLiveClose = $('.shortcut_cnt .btn_close')
    btnLiveClose.on('click', function(){
        $(this).parents('.live_shortcut').hide();
    });
});

function profileImgError(el, isMode) {
	let replaceImgPath = '//front-img.taling.me/Content/Images/tutee_no_img.png';
	if (isMode == 1) {
		replaceImgPath = '//front-img.taling.me/Content/Images/tutor_no_img.png';
	} else if (isMode == 2) {
		replaceImgPath = '//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/518c97d6514e2e9b73b8647c0a52ea3dd5d51ed0.png';
	}
	$(el).attr('src',  replaceImgPath);
}