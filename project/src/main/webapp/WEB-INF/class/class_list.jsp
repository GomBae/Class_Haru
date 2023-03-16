<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<link rel="stylesheet" href="../Content/app3/css/common.css" media="all">
<link rel="stylesheet" href="../Content/app3/css/class_list.css">
<script src="../Scripts/app3/jquery-1.12.4.min.js"></script>
<script src="../Scripts/app3/list.js"></script>
<script src="../Scripts/app3/jquery-ui.js"></script>
<script src="../Scripts/app3/swiper.min.js"></script>
<script src="../Scripts/app3/lazysizes.min.js"></script>

<script src="../Scripts/renewal2203/js/header.js"></script>
<script src="../Scripts/topbar.js"></script>
<script src="../Scripts/app3/jquery.mCustomScrollbar.concat.min.js"></script>


</head>
<body>
<main class="search container">
    <!-- select_list -->
    <ul class="select_list">
        <li>
          <button type="button" class="category_filed">카테고리</button>
            <div class="filter_contents filter_depth3 filter_category">
              <ul class="depth1_list" >
                <c:forEach var="vo" items="${cList }">
                <li class="depth1">${vo.catename }</li>  <!-- data-id="" -->
                </c:forEach>
              
              <!-- [D] depth1 개수만큼 .sub_contents 생성 -->
              <div class="sub_content">
                <ul>
                  <li data-tier2="44" class="cate_main ">필수역량</li>
                  <li data-tier3="288" class="cate_sub ">생산성 툴</li>
                </ul>
              </div>            
            </div>
          </li>
        <li>
          <button type="button" class="category_filed">클래스 진행 방식</button>
            <div class="filter_contents filter_depth2">
              <form action="">
                <div class="depth2">
                  <p class="filter_title">클래스 종류</p>
                    <ul>
                      <li class="list">
                        <input type="checkbox" class="blind" id="online" name="classType" value="2">
                        <label for="online" class="inp_chkbox">온라인 LIVE</label>
                      </li>
                      <li class="list">
                        <input type="checkbox" class="blind" id="offline" name="classType" value="1">
                        <label for="offline" class="inp_chkbox">오프라인</label>
                      </li>
                    </ul>
                </div>
                <div class="filter_search_area">
                  <button type="button" class="btn_reset" onclick="filterReset(this);" disabled="">선택 해제</button>
                  <button class="btn_search">필터 적용</button>
                </div>
              </form>
            </div>
        </li>
    </ul>
    <!-- // select_list -->

    <!-- selected_list -->
    <div class="selected_list">
        <button type="button" class="del_search_field">{{class_list.catename}}</button>        
        <button type="reset" class="btn_reset">초기화</button>
    </div>
    <!-- // selected_list -->

    <!-- category_path -->
    <div class="category_path">
      <span>요리·공예·취미</span>
      <span>공예/DIY</span>
   </div>
    <!-- result_count -->
    <p class="result_count">검색 결과 {{count}}개</p>
    <!-- // result_count -->
    <!-- search_result -->
    <!-- // category_path -->
    <section class="search_result">
      <!-- class_card_list -->
      <ul class="class_card_list" >
        <li class="swiper-slide" v-for="cvo in class_list">
            <a :href="'../class/class_detail.do?cno='+cvo.cno">
            <div class="thumb lazyloaded" data-bg="//img.taling.me/Content/Uploads/Images/24df302defe649078b32cd669fbada4fd9f6280e.png" style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/24df302defe649078b32cd669fbada4fd9f6280e.png&quot;);">        
            </div>      
          <div class="card_cnt">            
            <div class="badge_list">
              <span class="badge offline">{{cvo.location}}</span>            
            </div>            
            <h3 class="talent_title">{{cvo.title}}</h3>            
            <p class="cate_tutor">
              <span class="name">{{cvo.tutor_info_nickname}}</span>
            </p>            
            <p class="price_info">
              <span class="price">{{cvo.perprice}}</span>            
            </p>            
            <div class="talent_info">                
              <span class="user">{{cvo.jjim_count}}</span>
              <!-- <span class="reward_badge" style="background-image:url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">{{cvo.rivew}}</span>    리뷰 개수 출력   -->      
            </div>        
          </div>    
          </a>    
          <!-- <button type="button" class="btn_wish " onclick="updateWish(this,46331);"></button>-->
        </li>           
        <!-- <li class="swiper-slide">
          <a :href="'../class/class_list.do?cateno='+m.cateno'&detail_cateno='+m.detail_cateno">{{m.title}}      
          <div class="thumb lazyloaded" data-bg="#" style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/s_94b0c720d30d8368a581787427495aaaf9a2fa58.jpg&quot;);">
          </div>        
          <div class="card_cnt">            
            <div class="badge_list">
              <span class="badge offline">영등포</span>            
            </div>            
            <h3 class="talent_title">영등포 라탄 소품 만들기 택1 공방 데이트 혼자서 힐링</h3>            
            <p class="cate_tutor">
              <span class="name">SOO 튜터</span>
            </p>            
            <p class="price_info">
              <span class="price">52,000원</span>            
            </p>            
            <div class="talent_info">                
              <span class="user">76</span>
              <span class="reward_badge" style="background-image:url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰 1건</span>            
            </div>        
          </div>    
          </a>    
          <button type="button" class="btn_wish " onclick="updateWish(this,46331);"></button>
        </li>-->        
      </ul>
            <!-- // class_card_list -->
            <!-- pagination -->
            <div class="pagination">
              <ul>
                <li v-if="startPage>1">
                  <a v-on:click="prev()">&laquo; 이전</a>
                </li>
                <li class="current" v-for="i in range(startPage,endPage)" v-if="i===curpage">
                  <a v-on:click="pageClick(i)">{{i}}</a>
                </li>
                <li v-else>
                  <a v-on:click="pageClick(i)">{{i}}</a>
                </li>
                <li v-if="endPage<totalpage">
                  <a v-on:click="next()">다음 &raquo;</a>
                </li>
               </ul>
              <!-- <input type="button" value="이전"class="btn btn-sm btn-danger" v-on:click="prev()">
                {{curpage}} page / {{totalpage}} pages
              <input type="button" value="다음"class="btn btn-sm btn-warning" v-on:click="next()"> -->
              
               <!--  <a href="#" class="act">1</a><a href="/Home/Search/?page=2&amp;query=&amp;cateMain=&amp;cateSub=307&amp;region=&amp;day=&amp;time=&amp;tType=&amp;region=&amp;classTypeCode=&amp;regionMain=&amp;orderIdx=&amp;code=&amp;org=" class="">2</a>&nbsp;&nbsp;-->            
            </div> 
            
            <!-- // pagination -->
        </section>
        <!--// search_result -->
    </main>
    <script>
    new Vue({
       el:'.container',
       data:{
          cateno:${cateno},
          detail_cateno:${detail_cateno},
          class_list:[],
          cate_info:{},
          curpage:1,
          totalpage:0,
          startPage:0,
          endPage:0,
          count:0
          
       },
       mounted:function(){
          this.pageChange();
          /*let _this=this;
          axios.get("http://localhost/web/class/class_cate_vue.do",{
             cateno:_this.cateno,
             detail_cateno:_this.detail_cateno
            }).then(function(response){
             console.log(response.data)
             _this.cate_info=response.data
          })
          
          axios.get("http://localhost/web/class/class_list_vue.do",{
             params:{
                 cateno:this.cateno,
                detail_cateno:this.detail_cateno,
                page:_this.curpage
              }
          }).then(function(response){
             console.log(response.data)
             _this.class_list=response.data
             _this.curpage=response.data[0].curpage
                _this.totalpage=response.data[0].totalpage
                _this.startPage=response.data[0].startPage
                _this.endPage=response.data[0].endPage
                _this.count=response.data[0].count
          }) */
       },
       methods:{
           pageChange:function(){
                  let _this=this;
                  axios.get("http://localhost/web/class/class_list_vue.do",{
                     params:{
                       cateno:this.cateno,
                       detail_cateno:this.detail_cateno,
                        page:this.curpage
                        
                     }
                  }).then(function(response){
                     console.log(response.data);
                     _this.class_list=response.data
                     _this.curpage=response.data[0].curpage
                     _this.totalpage=response.data[0].totalpage
                     _this.startPage=response.data[0].startPage
                     _this.endPage=response.data[0].endPage
                     _this.count=response.data[0].count
                     
                  })
               },
               range:function(min,max){
                     let array=[],
                     j=0;
                     for(let i=min;i<=max;i++){
                        array[j]=i;
                        j++;
                     }
                     return array;
                  },
                  prev:function(){
                     this.curpage=this.startPage-1;
                     this.pageChange();
                  },
                  next:function(){
                     this.curpage=this.endPage+1;
                     this.pageChange();
                  },
                  pageClick:function(page){
                     this.curpage=page
                     this.pageChange();
                  }
            }
         })
    </script>
</body>
</html>