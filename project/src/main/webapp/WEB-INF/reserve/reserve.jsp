<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- 기본 css -->
<link rel="stylesheet" href="../css/all.css">
<title>Insert title here</title>
<style type="text/css">
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, form, fieldset, p, button, pre{
  font-size:16px;
}
.check_btn{
  padding:0; width:25px; height:25px;
  background:lightgray;
  border:0; border-radius:50px;
  font-size:14px; color:white;
  cursor:pointer;
}
.schedule_item:last-child > hr{
  display:none;
}
.count_btn{
  margin:0 15px; padding:0;
  width:40px; height:40px;
  background:#eaeaea;
  border:0; border-radius:50px;
  cursor:pointer;
}

/* 나중에 없애기 */
h1,h2,h3,h4{
  margin:0;
  padding:0;
}
.count_btn i{
  font-size:16px;
}

input[type='radio'],
input[type='radio']:checked{
  /*appearance: none;*/
  width: 20px;
  height: 20px;
  border-radius: 100%;
  margin-right: 0.1rem;
}
.beactive{
  background:red;
}

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

$(function(){
   let inwon=1
   let count=0
   
    $('#plus').click(function() {
       inwon=inwon+1
       $('#inwon').val(inwon)    
   })
   
   $('#minus').click(function(){      
      if(inwon>1)
      {
         inwon=inwon-1   
      }
      $('#inwon').val(inwon)         
   })
   
   console.log(count)
   
   $(document).on('click','.sel_btn',function(e){
      e.preventDefault() //
      
      count=1
      
      $(this).css("background","#45c5c5")
      $('.sel_btn').not($(this)).css("background","lightgray")
      $('#next_btn').css("background","#45c5c5")
      $('#next_btn').attr("disabled",false)
      
   })
   
 
})
</script>
</head>
<body>
<div class="container" style="margin:50px auto;padding:0;">
<%-- 세션아이디 : ${sessionScope.mvo.id }, 관리자여부 : ${sessionScope.mvo.admin } --%>
  
  <%-- 왼쪽전체 : 클래스정보, 클래스일정 --%>
  <h2 style="margin:0 0 25px 0;font-weight:bold;font-size:24px;">클래스 신청</h2>
  <hr style="border-top:1px solid lightgray;">
  
  <div style="width:50%;padding:40px;float:left;">
  
       <%-- 클래스정보 --%>
       

       <%-- 원본 : 뷰컴포넌트 연습 전 원래 코드 --%>
         <div class="classInfo">
           <div style="width:35%;float:left"> 
             <%-- cno값 :value="cvo.cno" 처럼 주면 되는지 --%>
             <input id="cno" type=hidden :value="cvo.cno">
             <img :src="cvo.image" name=image style="width:120px;height:90px;">
          </div>
          <div style="width:65%;float:right">
            <h4 style="margin:0 0 10px 0;font-weight:bold;">{{cvo.title}}</h4>
            <span >{{cvo.tutor}}</span>(<i style="color:#45c5c5;" class="fa-solid fa-star"></i>
            <span >{{cvo.score}}</span>)
          </div>
       </div>
       
       <%-- 클릭 시 버튼색 변경 코드 필요 --%>
       <%-- 클래스일정 --%>
       <div class="schedule_wrapper" style="clear:both;position:relative;top:50px;">
          <h3 style="margin:0 0 15px 0;">클래스 일정을 1개 선택해주세요.</h3>
          <div style="padding:20px 20px 20px 30px;max-height:350px;overflow:auto;border:1px solid gray;border-radius:4px;">
            <%-- if : 일정 있는 경우 --%>
            <%-- 일정 1개(반복대상) --%>
            <div class="schedule_item">

               <div style="">
                
                    <ul style="margin:20px 0;" v-for="(s,index) in cvo.schedule">
                     
                     <li >
                       <button class="sel_btn all_btn" v-on:click="select_sche(s+'|'+cvo.location[index]+'|'+cvo.place[index])" style="padding:0;width:30px;height:30px;border:0;background:lightgray;">
                         <i class="fa-solid fa-check" style="color:white;"></i>
                       </button>
                       &nbsp;{{s}}&nbsp;({{cvo.location[index]}})
                     </li>
                   <li>
                     <h4  style="margin:0 0 0 40px;color:gray;" >{{cvo.place[index]}}</h4>
                   </li>
                 </ul>
                 
               </div>
               <hr style="margin:0 10px 15px 10px;clear:both;border:0.7px solid lightgray;">
            </div>
            
         </div>
       </div>
    
  </div>
  
  <%-- 오른쪽전체 : 신청인원, 연락처, 메시지 --%>
  <div style="width:50%;padding:40px;float:right;">
    
       <%-- 신청인원 --%>
       <div style="margin:0 0 100px 0;">
         <h3 style="margin:0 125px 0 0;float:left;line-height:40px;">신청인원</h3>
         <div style="">
         
           <button class="count_btn" id=minus><i class="fa-solid fa-minus"></i></button>
             <input id="inwon" value="1" style="width:10%;font-size:20px;border:0;" ref="inwon">
             <!-- <span id="inwon" value="1" style="font-size:20px;" ref="inwon">1</span> -->
           <button class="count_btn" id="plus"><i class="fa-solid fa-plus"></i></button>
         
         </div>
         <%-- totalprice컬럼값 가져오기 --%>
         <input id="totalprice_num" type=hidden :value="cvo.totalprice_num">
       </div>
       
       <%-- 메시지 --%>
       <div>
         <h3 style="margin:0 0 15px 0;">튜터에게 남기는 메시지</h3>
         <textarea v-model="tutorMsg" id="tutorMsg" style="padding:15px;margin-bottom:30px;width:100%;height:90px;resize:none;border:1px solid gray;border-radius:4px;"></textarea>
       </div>
       <input v-on:click="send_all()" disabled id="next_btn" type=submit value="다음" class="all_btn" style="display:block;width:100%;padding:15px;background:#99dede;color:white;cursor:pointer;border:0;text-align:center;"/>
  </div>
  
  </form>  
</div>
<script>
  
  new Vue({
     el:'.container',
     data:{
        cno:${cno},  
        cvo:{},
        inwon:1,
        sche_info:'',
        tutorMsg:''
     },
     mounted:function(){
        let _this=this
        axios.get('http://localhost/web/reserve/reserve_vue.do',{
           params:{
              cno:_this.cno
           }
        }).then(function(response){
           console.log(response.data) 
           _this.cvo=response.data
        })
     },
     methods:{

        select_sche:function(msg){
           this.sche_info=msg
           
           //확인용
           //console.log(this.sche_info)
           //console.log(this.inwon)
           //console.log(this.sche_info)
           //console.log(this.tutorMsg)

        },
        send_all:function(){
           let _this=this
           this.inwon=this.$refs.inwon.value
           //넘겨야할 데이터 : cno, sche_info, inwon, tutorMsg
           
           //확인용
           //console.log(this.inwon)
           //console.log(this.sche_info)
           //console.log(this.tutorMsg)
           axios.get('../reserve/reserve_select.do',{
              params:{
                  cno:_this.cno,
                 sche_info:this.sche_info, 
                 inwon:this.inwon, 
                 tutorMsg:this.tutorMsg
              }
           }).then(function(response){
              location.href="../reserve/reserve_pay.do?cno="+response.data
           })
        }
           
           
     }

  })
</script>
</body>
</html>