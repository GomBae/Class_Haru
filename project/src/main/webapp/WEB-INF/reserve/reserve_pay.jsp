<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
<style type="text/css">

.one_left{
  width:50%;
  float:left;
}
.one_right{
  width:50%;
  float:right:
}

h1,h2,h3,h4{
  margin:0;
  padding:0;
}

h4.one_left{
  width:40%;
}
.two_wrapper > *{
  margin: 15px 0;
}
</style>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
   let count=0

   $('#checkOk_btn').click(function(){
      count++
      $(this).css("color","#45c5c5")
      $('#reserve_btn').attr("disabled",false)
      $('#reserve_btn').css("background","#45c5c5")
      console.log(count)

      if(count==2)
      {
         $(this).css("color","lightgray")
         $('#reserve_btn').attr("disabled",true)
         $('#reserve_btn').css("background","#99dede")
         count=0
         console.log(count)
      }
   })

})
</script>
<body>
<div class="container" style="margin:0 auto;padding:50px; width:1200px;">
<%-- 세션아이디 : ${sessionScope.mvo.id }, 관리자여부 : ${sessionScope.mvo.admin } --%>
     
     <h2 style="margin:0 0 25px 0;font-weight:bold;font-size:24px;">클래스 신청</h2>
     <hr style="border-top:1px solid lightgray;">
     
     <%-- 왼쪽전체 : 클래스정보, 클래스일정 --%>
  
     <div style="width:55%;padding:40px;float:left;">
     
          
          <%-- 클래스 신청정보 확인 --%>
             
             <div class="classInfoBox" style="display:inline-block;width:90%;padding:40px;border:1px solid gray;border-radius:4px;">
                <h3 style="margin:0;">클래스 신청정보 확인</h3>
                 <hr style="margin:25px 0;width:100%;border-top:1px solid lightgray;">
                <div class="classInfo">
                  
                    <div class="two_wrapper">
                      <div style="width:35%;float:left">
                        <img :src="reserve_data.image" style="width:100px;height:80px;">
                     </div>
                     <div style="width:65%;float:right">
                       <h4 style="margin:0 0 10px 0;font-weight:bold;">{{reserve_data.title}}</h4>
                       <span>{{reserve_data.tutor}}</span>(<i style="color:#45c5c5;" class="fa-solid fa-star"></i>
                        <span >{{reserve_data.score}}</span>)
                     </div>
                   </div>
                   <div style="clear:both;">  
                      <div class="two_wrapper">
                        <h4 class="one_left">신청일정</h4>
                        <div class="one_left" ref="schedule">
                            {{reserve_data.schedule}}&nbsp;(<span ref="location">{{reserve_data.location}}</span>)
                        </div>
                      </div>
                      <div class="two_wrapper">
                        <h4 class="one_left">장소</h4>
                        <div class="one_left">
                            {{reserve_data.place}}
                        </div>
                      </div>
                      <div class="two_wrapper">
                        <h4 class="one_left">신청인원</h4>
                        <div class="one_left">{{reserve_data.inwon}}</div>
                      </div>
<!--                       <div class="two_wrapper">
                        <h4 class="one_left">클래스 횟수/시간</h4>
                        <div class="one_left">총 4회/2시간</div>
                      </div> -->
                      <div class="" style="display:inline-block;width:100%;">
                        <h4 style="margin:20px 0 15px 0;">튜터에게 남기는 메시지</h4>
                        <div style="padding:15px;width:100%;height:100px;border:1px solid #e0e0e0;overflow:auto;">{{reserve_data.tutorMsg}}</div>
                      </div>
                    </div>
                
                </div>
              </div>
     </div>
     
     <%-- 오른쪽전체 : 최종 결제금액 확인, 결제버튼 --%>
     <div style="width:45%;padding:40px;float:right;">
        <div class="payInfoBox" style="margin:0 0 30px 0;padding:40px;border:1px solid gray;border-radius:4px;">  
        
          <h3 style="margin:0;">최종 결제금액 확인</h3>
          <hr style="margin:25px 0;width:100%;border-top:1px solid lightgray;">
           
           <div style="display:inline-block;width:100%;">
              <div class="two_wrapper">
                 <h4 class="one_left">클래스 기본요금</h4>
                 <div class="one_left">{{reserve_data.totalperprice}}</div>
              </div>
              <div class="two_wrapper">
                 <h4 class="one_left">신청인원</h4>
                 <div class="one_left" ref="inwon">{{reserve_data.inwon}}</div>
              </div>
           </div>
           
           <div class="two_wrapper" style="margin:0 0 20px 0;display:inline-block;width:100%;">
             <hr style="width:100%;margin:25px 0 0 0;">
             <h3 class="one_left" style="color:#45c5c5;font-size:20px;font-weight:bold;">총 결제금액</h3>
             <h3 class="one_left" style="font-size:20px;font-weight:bold;">{{reserve_data.totalprice}}원</h3>
           </div>
           
           <div style="display:flex;align-items:center;">
             <%-- 체크버튼 클릭해야 결제하기 버튼 활성화됨 --%>
             <i id="checkOk_btn" class="fa-solid fa-square-check" style="margin-right:10px;cursor:pointer;font-size:32px;color:lightgray;"></i>
             <span>신청정보 및 총 결제금액(예정)을 확인하였습니다.</span>
           </div>
        </div>
        <input v-on:click="reserve()" disabled type=button id="reserve_btn" value="신청하기" style="width:100%;height:50px;background:#99dede;color:white;border:0;border-radius:4px;cursor:pointer;">  
     </div>
  

</div>
<script>
  new Vue({
     el:'.container',
     data:{
        reserve_data:{},
        schedule:'',
        place:'',
        inwon:'',
        tutorMsg:'',
        totalprice:''
     },
     mounted:function(){
        let _this=this
        axios.get('../reserve/reserve_pay_vue.do').then(function(response){
           _this.reserve_data=response.data
           _this.cno=response.data.cno
           _this.schedule=response.data.schedule
           _this.location=response.data.location //location 추가
           _this.place=response.data.place
           _this.inwon=response.data.inwon
           _this.tutorMsg=response.data.tutorMsg
           _this.totalprice=response.data.totalprice
        })
     }
      ,
     methods:{
        reserve:function(){
           let _this=this
           
           console.log(this.cno)
           console.log(this.schedule)
           console.log(this.inwon)
           console.log(this.location)
           console.log(this.place)
           console.log(this.tutorMsg)
           console.log(this.totalprice)
           
           //crno,cno,id,schedule,place,inwon,totalprice,tutormsg
             axios.get('../reserve/reserve_insert.do',{
              params:{
                 cno:this.cno,
                 schedule:this.schedule,
                 location:this.location, //location 추가
                 place:this.place,
                 inwon:this.inwon,
                 tutorMsg:this.tutorMsg,
                 totalprice:this.totalprice
              }
           })
            .then(function(response){
              location.href="../mypage/class.do"
           })
        }
     }
  })
</script>
</body>
</html>