<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../Content/app3/css/faq.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- VueJs -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<!-- Script -->
<script src="../Scripts/app3/jquery-1.12.4.min.js"></script>
<script src="../Scripts/app3/lazysizes.min.js"></script>
<script src="../Scripts/app3/jquery-ui.js"></script>
</head>
<body>
    <div class="cover-container-rule all">
        <div class="rule_menu rule_menu2">
            <ul>
                <li><a href="/Support/Rule" >탈잉 서비스 이용약관</a></li>
                <li><a href="/Support/Privacy"><b style="text-decoration:underline;letter-spacing:0.7px;font-size:17px;">개인정보처리방침</b></a></li>
                <li><a href="/Support/Refund">환불규정</a></li>
                <li><a href="/Support/FAQ" class="on">FAQ</a></li>
            </ul>
        </div>
        <div class="rule_contents rule_contents2">
            <div class="title inline">
                <span class="main inline">
                    FAQ 자주 묻는 질문
                    <c:if test="${sessionScope.mvo.admin=='y' }">
                    <a href="list.do"><input type=button value="FAQ관리" class="btn btn-sm btn-default" style="margin-left: 788px"></a>
                    </c:if>
                </span>
            </div>

            <div class="faq_box">
                <div class="tab on" id="tutee" onclick="tutee()">
                    수강생
                </div>
                <div class="tab" id = "tutor" onclick="tutor()">
                    튜터
                </div>
                
                
            </div>


            <div class="faq_sub_box on" id="faq_sub_tutee">
                
                <div class="que" v-for="vo in tutee_list">
                    <span class="rule_bold_text3"><span class="pink">{{vo.no}}&nbsp;&nbsp;</span>  {{vo.subject}}</span>
                    <br />
                        {{vo.content}}

                </div>
            </div>
            <div class="faq_sub_box" id="faq_sub_tutor">
                <div class="que" v-for="tvo in tutor_list">
                    <span class="rule_bold_text3"><span class="pink">{{tvo.no}}&nbsp;&nbsp;</span>{{tvo.subject}}</span>
                    <br />
                    {{tvo.content}}
                </div>
                
                
            </div>
        </div>
    </div>
   <script>
      function tutee(){
         $('#tutee').addClass('on');
         $('#faq_sub_tutee').addClass('on');
         $('#tutor').removeClass('on');
         $('#faq_sub_tutor').removeClass('on');
      }
      function tutor(){
         $('#tutor').addClass('on');
         $('#tutee').removeClass('on');
         $('#faq_sub_tutor').addClass('on');
         $('#faq_sub_tutee').removeClass('on');
      }
   </script>
   <script>
  new Vue({
     el:'.all',
     data:{
        tutor_list:[],
        tutee_list:[]
     },
     mounted:function(){
        let _this=this
        axios.get('http://localhost/web/faq/tutee_list_vue.do'
        		).then(function(response){
           console.log(response.data) 
           _this.tutee_list=response.data
        })
        axios.get('http://localhost/web/faq/tutor_list_vue.do'
        		).then(function(response){
           console.log(response.data) 
           _this.tutor_list=response.data
        })
     }

  })
</script>
</body>
</html>