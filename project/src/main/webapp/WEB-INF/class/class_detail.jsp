<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="styleSheet" href="../Content/app3/css/login/login_pc.css">
<link rel="styleSheet" href="../Content/app3/css/talent/detail.css">
<link rel="styleSheet"
	href="../Content/app3/css/talent/photo_review.css">
<link rel="styleSheet" href="../Content/app3/css/talent/respond.css">
<link rel="styleSheet" href="../Content/app3/css/aegrenner.css">
<link rel="styleSheet" href="../Content/app3/css/common.css">
<link rel="styleSheet" href="../Content/app3/css/footer_pc.css">
<link rel="styleSheet" href="../Content/app3/css/header.css">
<link rel="styleSheet" href="../Content/app3/css/index.css">
<link rel="styleSheet"
	href="../Content/app3/css/jquery.mCustomScrollbar.css">
<link rel="styleSheet" href="../Content/app3/css/notokr.css">
<link rel="styleSheet" href="../Content/app3/css/swiper.min.css">
<link rel="stylesheet" href="../Content/app3/css/class_detail.css">
<link rel="stylesheet" href="../Content/app3/css/class_detail2.css">
<style type="text/css">

.regi {
	width: 70%;
	height: 48px;
	margin-top: 10px;
	margin-right: 0px;
	padding: 10px 50px;
	background: #45c5c5;
	border-radius: 10px;
}

.regifont {
	color: white;
}

.chat {
	width: 80%;
	height: 48px;
	margin-top: 10px;
	margin-right: 0px;
	padding: 10px 80px;
	border: 1px solid #45c5c5;
	border-radius: 10px;
  }

</style>
</head>
<body>
	<!-- main -->
	<main id="wrap" class="detail">
		<!-- gnb -->
		<div class="p2p_class_nav">
			<ul>
				<li class="active"><a href="#">튜터 소개</a></li>
				<li><a href="#">클래스 소개</a></li>
				<li><a href="#">커리큘럼</a></li>
				<li><a href="#">리뷰</a></li>
			</ul>
		</div>
		<!--// gnb -->

		<div class="p2p_class_wrap">
			<div class="p2p_class_container">
				<!-- 수업명, 튜터이름, 별점 -->
				<section class="p2p_class_info">
					<!-- 오프라인, 온라인 라이브 수업 : 모든 정보 노출 -->
					<ul class="p_info_sum">
						<li id="regionAll">{{class_detail.onoff}}</li>
						<li>{{class_detail.inwon}}</li>
						<!-- 녹화영상, 전자책 수업 : 진행방식만 노출 -->
					</ul>
					<h1 class="p_title">{{class_detail.title}}</h1>

					<div class="p2p_tutor_info">
						<div class="tutor_img">
							<img wsrc="" alt="">
						</div>
						<div class="short_info">

							<em class="t_nickname">{{class_detail.tutor_info_nickname}}</em>
							<span class="class_review"> <i class="star_img"> <img
									src="../images/star.png" style="width: 10px; height: 10px">

							<em class="t_nickname">{{class_detail.tutor_info_nickname}}</em> <span
								class="class_review"> <i class="star_img"> 
								<img src="class/star.png" style="width:10px;height:10px">

							</i> <i class="grade_total">{{class_detail.tutor_info_grade_total}}</i>
							</span>
						</div>
					</div>
				</section>
				<!--// 수업명, 튜터이름, 별점 -->

				<!-- 수업 이미지 -->
				<section class="p2p_class_img">
					<!-- Swiper -->
					<div class="img_slied_area">
						<!-- gallery-thumbs -->

						<table class="table">
							<tr>
								<td><img :src="class_detail.image"></td>
							</tr>
						</table>

						 <table class="table">
					        <tr>
					         <td><img :src="class_detail.image1"></td>
					         <td><img :src="class_detail.image2"></td>
					        </tr>
					      </table>

						<!-- // gallery-thumbs -->
					</div>
					<!--//swiper_wrapper-->
				</section>
				<!--//p2p_class_img-->
				<!--// 수업 이미지 -->

				<div class="detail_wrap">
					<!-- 수업전 숙지해주세요. -->
					<section class="p2p_class_notice">
						<div class="p_col_left">
							<p class="col_title">클래스 전 숙지해주세요!</p>
						</div>
						<div class="p_col_right">
							<div class="text_wrap">
								<p class="text_area">{{class_detail.notice}}</p>
								<span class="badge_noti">튜터 공지</span>
							</div>

							<!-- 							<button class="btn_show" style="display: none;"> -->
							<!-- 								<span class="more">더보기</span> <span class="less">접기</span> -->
							<!-- 							</button> -->

<!-- 							<button class="btn_show" style="display: none;"> -->
<!-- 								<span class="more">더보기</span> <span class="less">접기</span> -->
<!-- 							</button> -->

						</div>
						<!--//p2p_class_notice-->
					</section>
					<!--// 수업전 숙지해주세요. -->

					<!-- 클래스 요약 -->
					<section class="sec_common">

						<div class="p_col_left">
							<p class="col_title">클래스 요약</p>
						</div>
						<div class="p_col_right">
							<div class="text_wrap">
								<p class="text_area">{{class_detail.summary}}</p>
							</div>
							<!--                         <button class="btn_show" style="display: none;"> -->
							<!--                             <span class="more">더보기</span><span class="less">접기</span> -->
							<!--                         </button> -->
						</div>
						<!--//p2p_class_notice-->
					</section>

                    <div class="p_col_left">
                        <p class="col_title">클래스 요약</p>
                    </div>
                    <div class="p_col_right">
                        <div class="text_wrap">
                            <p class="text_area">{{class_detail.summary}}</p>
                        </div>
<!--                         <button class="btn_show" style="display: none;"> -->
<!--                             <span class="more">더보기</span><span class="less">접기</span> -->
<!--                         </button> -->
                    </div><!--//p2p_class_notice-->
                </section>

					<!-- // 클래스 요약 -->

					<!-- 이런 분들이 들으면 좋아요. -->
					<section class="sec_common p2p_class_target">
						<div class="p_col_left">
							<p class="col_title">이런 분들이 들으면 좋아요.</p>
						</div>
						<!--//p_col_left-->
						<div class="p_col_right">
							<div class="text_wrap">
								<p class="text_area">{{class_detail.target}}</p>
							</div>

							<!-- 							<button class="btn_show" style="display: none;"> -->
							<!-- 								<span class="more">더보기</span> <span class="less">접기</span> -->
							<!-- 							</button> -->

<!-- 							<button class="btn_show" style="display: none;"> -->
<!-- 								<span class="more">더보기</span> <span class="less">접기</span> -->
<!-- 							</button> -->

						</div>
					</section>
					<!--// 이런 분들이 들으면 좋아요. -->

					<!-- 튜터님을 소개합니다. -->
					<section class="idx sec_common p2p_tutor_intro">
						<div class="p_col_left">
							<p class="col_title">튜터님을 소개합니다.</p>
						</div>
						<div class="p_col_right">
							<div class="tutor_info_profile">
								<div class="profile_img">
									<img src="#" onerror="profileImgError(this, 1)" alt="">
								</div>
								<div class="profile_text">
									<p class="name">{{class_detail.tutor_info_nickname}}</p>
								</div>
							</div>
							<div class="text_wrap toggle">
								<p class="text_area">{{class_detail.tutor_intro}}</p>
							</div>

							<!-- 							<button class="btn_show"> -->
							<!-- 								<span class="more">더보기</span> <span class="less">접기</span> -->
							<!-- 							</button> -->

<!-- 							<button class="btn_show"> -->
<!-- 								<span class="more">더보기</span> <span class="less">접기</span> -->
<!-- 							</button> -->

						</div>
					</section>
					<!--// 튜터님을 소개합니다. -->

					<!-- 어떤 수업인가요? -->
					<section class="idx sec_common p2p_class_intro">
						<div class="p_col_left">
							<p class="col_title">어떤 클래스 인가요?</p>
						</div>
						<!--//p_col_left-->
						<div class="p_col_right">
							<div class="text_wrap toggle">
								<p class="text_area">{{class_detail.class_intro}}</p>
							</div>
							<button class="btn_show">
								<span class="more">더보기</span> <span class="less">접기</span>
							</button>
						</div>
					</section>
					<!--// 어떤 수업인가요? -->

					<!-- 클래스 유의사항 -->
					<!-- // 클래스 유의사항 -->

					<!-- 수업은 이렇게 진행됩니다 -->
					<section class="idx sec_common p2p_class_curri">
						<div class="p_col_left">
							<p class="col_title">클래스는 이렇게 진행됩니다.</p>
						</div>
						<!--//p_col_left-->
						<div class="p_col_right">
							<div class="text_wrap toggle">
								<div class="text_area">
									<div class="multi_class_list">
										<p class="curri_details">{{class_detail.class_curri}}</p>
										<div class="curri_img"></div>
									</div>
								</div>
							</div>

						</div>
						<!-- 							<button class="btn_show"> -->
						<!-- 								<span class="more">더보기</span> <span class="less">접기</span> -->
						<!-- 							</button> -->

<!-- 							<button class="btn_show"> -->
<!-- 								<span class="more">더보기</span> <span class="less">접기</span> -->
<!-- 							</button> -->

					</section>
					<!--//수업은 이렇게 진행됩니다 -->

					<!-- 수강생 리뷰 -->

					<!-- 					<section class="idx sec_common p2p_class_cmt" id="review"> -->
					<!-- 						<div class="p_col_left"> -->
					<!-- 							<p class="col_title">실제 수강생의 리뷰입니다.</p> -->
					<!-- 						</div> -->
					<!-- 						//p_col_left -->
					<!-- 						<div class="p_col_right"> -->
					<!-- 							<div class="review_sum"> -->
					<!-- 								<ul class="review_list"> -->
					<!-- 									<li>커리큘럼<span class="avg">5.0</span></li> -->
					<!-- 									<li>전달력<span class="avg">4.0</span></li> -->
					<!-- 									<li>시간준수<span class="avg">4.5</span></li> -->
					<!-- 									<li>준비성<span class="avg">4.0</span></li> -->
					<!-- 									<li>친절도<span class="avg">3.5</span></li> -->
					<!-- 								</ul> -->
					<!-- 							</div> -->
					<!-- 							<button type="button" class="btn_cmt" -->
					<!-- 								onclick="writeReview(5547,'newReview',0,1);">리뷰 작성하기</button> -->
					<!-- 댓글 영역 -->
					<!-- 							<div id="innerReviewDiv"> -->
					<!-- 								<ul class="cmt_wrap"> -->
					<!-- 									<li class="list"><div class="tutee_info"> -->
					<!-- 											<span class="img"> -->
					<!-- 											  <img src="//img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg" -->
					<!-- 												onerror="profileImgError(this,0)" alt=""> -->
					<!-- 											</span> -->
					<!-- 											<div class="tutee"> -->
					<!-- 												<span class="name">yunjenna</span> -->
					<!-- 												<div class="date"> -->
					<!-- 													<p>2019-04-13 17:51:07</p> -->
					<!-- 												</div> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 										<div class="cmt"> -->
					<!-- 											<p>잘 들었습니다!</p> -->
					<!-- 										</div> -->
					<!-- 										<div class="btn_box"> -->
					<!-- 											<button class="btn_like" type="button" -->
					<!-- 												onclick="ReviewLikes(19559,5547,this)">0</button> -->
					<!-- 											<span class="reply">0</span> -->
					<!-- 										</div> -->
					<!-- 										<div class="reply_box" id="reply_box19559"> -->
					<!-- 											<form action="" name="re-insert" type="19559"> -->
					<!-- 												<div class="reply_inp"> -->
					<!-- 													<div class="text_inp"> -->
					<!-- 														<textarea name="ReplyContent" placeholder="답글을 작성해 주세요." -->
					<!-- 															id="ReplyContent19559"></textarea> -->
					<!-- 													</div> -->
					<!-- 													<div class="submit_box"> -->
					<!-- 														<button type="submit" class="btn_submit">등록</button> -->
					<!-- 													</div> -->
					<!-- 												</div> -->
					<!-- 											</form> -->
					<!-- 										</div></li> -->
					<!-- 									<li class="list"><div class="tutee_info"> -->
					<!-- 											<span class="img"><img -->
					<!-- 												src="//front-img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg" -->
					<!-- 												onerror="profileImgError(this,0)" alt=""></span> -->
					<!-- 											<div class="tutee"> -->
					<!-- 												<span class="name">익명</span> -->
					<!-- 												<div class="date"> -->
					<!-- 													<p>2018-10-15 18:17:24</p> -->
					<!-- 												</div> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 										<div class="cmt"> -->
					<!-- 											<p>강사님이 최선을 다해서 친절하게 알려주셨습니다. 자바 기초부터 시작해서 실제로 사용하고 있는 -->
					<!-- 												프로그램과 정보도 알려주시며 인생상담까지 친절하게 해주셨습니다. 돈이 아깝지 않았습니다. 꼭 들으십시오. -->
					<!-- 												강력추천합니다.</p> -->
					<!-- 										</div> -->
					<!-- 										<div class="btn_box"> -->
					<!-- 											<button class="btn_like" type="button" -->
					<!-- 												onclick="ReviewLikes(8957,5547,this)">0</button> -->
					<!-- 											<span class="reply">1</span> -->
					<!-- 										</div> -->
					<!-- 										<div class="reply_box" id="reply_box8957"> -->
					<!-- 											<form action="" name="re-insert" type="8957"> -->
					<!-- 												<div class="reply_inp"> -->
					<!-- 													<div class="text_inp"> -->
					<!-- 														<textarea name="ReplyContent" placeholder="답글을 작성해 주세요." -->
					<!-- 															id="ReplyContent8957"></textarea> -->
					<!-- 													</div> -->
					<!-- 													<div class="submit_box"> -->
					<!-- 														<button type="submit" class="btn_submit">등록</button> -->
					<!-- 													</div> -->
					<!-- 												</div> -->
					<!-- 											</form> -->
					<!-- 										</div> -->
					<!-- 										<ul class="re"> -->
					<!-- 											<li class="tutor_re"><div class="user_info"> -->
					<!-- 													<span class="img"><img -->
					<!-- 														src="//front-img.taling.me/Content/Images/tutor_no_img.png" -->
					<!-- 														onerror="profileImgError(this, 1)" alt=""></span> -->
					<!-- 													<div class="text"> -->
					<!-- 														<span class="name">{{class_detail.tutor_info_nickname}}</span> -->
					<!-- 														<p class="date">2018-10-01 13:52:41</p> -->
					<!-- 													</div> -->
					<!-- 												</div> -->
					<!-- 												<div class="cont cont_line cmt" id="content-box973"> -->
					<!-- 													<p>네. 감사합니다. 언제든지 필요한 내용 있으시면 문의부탁드립니다.</p> -->
					<!-- 												</div></li> -->
					<!-- 										</ul></li> -->
					<!-- 								</ul> -->
					<!-- 							</div> -->
					<!--// 댓글영역 -->
					<!-- 						</div> -->
					<!-- 					</section> -->

<!-- 					<section class="idx sec_common p2p_class_cmt" id="review"> -->
<!-- 						<div class="p_col_left"> -->
<!-- 							<p class="col_title">실제 수강생의 리뷰입니다.</p> -->
<!-- 						</div> -->
<!-- 						//p_col_left -->
<!-- 						<div class="p_col_right"> -->
<!-- 							<div class="review_sum"> -->
<!-- 								<ul class="review_list"> -->
<!-- 									<li>커리큘럼<span class="avg">5.0</span></li> -->
<!-- 									<li>전달력<span class="avg">4.0</span></li> -->
<!-- 									<li>시간준수<span class="avg">4.5</span></li> -->
<!-- 									<li>준비성<span class="avg">4.0</span></li> -->
<!-- 									<li>친절도<span class="avg">3.5</span></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<button type="button" class="btn_cmt" -->
<!-- 								onclick="writeReview(5547,'newReview',0,1);">리뷰 작성하기</button> -->
							<!-- 댓글 영역 -->
<!-- 							<div id="innerReviewDiv"> -->
<!-- 								<ul class="cmt_wrap"> -->
<!-- 									<li class="list"><div class="tutee_info"> -->
<!-- 											<span class="img"> -->
<!-- 											  <img src="//img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg" -->
<!-- 												onerror="profileImgError(this,0)" alt=""> -->
<!-- 											</span> -->
<!-- 											<div class="tutee"> -->
<!-- 												<span class="name">yunjenna</span> -->
<!-- 												<div class="date"> -->
<!-- 													<p>2019-04-13 17:51:07</p> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										<div class="cmt"> -->
<!-- 											<p>잘 들었습니다!</p> -->
<!-- 										</div> -->
<!-- 										<div class="btn_box"> -->
<!-- 											<button class="btn_like" type="button" -->
<!-- 												onclick="ReviewLikes(19559,5547,this)">0</button> -->
<!-- 											<span class="reply">0</span> -->
<!-- 										</div> -->
<!-- 										<div class="reply_box" id="reply_box19559"> -->
<!-- 											<form action="" name="re-insert" type="19559"> -->
<!-- 												<div class="reply_inp"> -->
<!-- 													<div class="text_inp"> -->
<!-- 														<textarea name="ReplyContent" placeholder="답글을 작성해 주세요." -->
<!-- 															id="ReplyContent19559"></textarea> -->
<!-- 													</div> -->
<!-- 													<div class="submit_box"> -->
<!-- 														<button type="submit" class="btn_submit">등록</button> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</form> -->
<!-- 										</div></li> -->
<!-- 									<li class="list"><div class="tutee_info"> -->
<!-- 											<span class="img"><img -->
<!-- 												src="//front-img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg" -->
<!-- 												onerror="profileImgError(this,0)" alt=""></span> -->
<!-- 											<div class="tutee"> -->
<!-- 												<span class="name">익명</span> -->
<!-- 												<div class="date"> -->
<!-- 													<p>2018-10-15 18:17:24</p> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										<div class="cmt"> -->
<!-- 											<p>강사님이 최선을 다해서 친절하게 알려주셨습니다. 자바 기초부터 시작해서 실제로 사용하고 있는 -->
<!-- 												프로그램과 정보도 알려주시며 인생상담까지 친절하게 해주셨습니다. 돈이 아깝지 않았습니다. 꼭 들으십시오. -->
<!-- 												강력추천합니다.</p> -->
<!-- 										</div> -->
<!-- 										<div class="btn_box"> -->
<!-- 											<button class="btn_like" type="button" -->
<!-- 												onclick="ReviewLikes(8957,5547,this)">0</button> -->
<!-- 											<span class="reply">1</span> -->
<!-- 										</div> -->
<!-- 										<div class="reply_box" id="reply_box8957"> -->
<!-- 											<form action="" name="re-insert" type="8957"> -->
<!-- 												<div class="reply_inp"> -->
<!-- 													<div class="text_inp"> -->
<!-- 														<textarea name="ReplyContent" placeholder="답글을 작성해 주세요." -->
<!-- 															id="ReplyContent8957"></textarea> -->
<!-- 													</div> -->
<!-- 													<div class="submit_box"> -->
<!-- 														<button type="submit" class="btn_submit">등록</button> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</form> -->
<!-- 										</div> -->
<!-- 										<ul class="re"> -->
<!-- 											<li class="tutor_re"><div class="user_info"> -->
<!-- 													<span class="img"><img -->
<!-- 														src="//front-img.taling.me/Content/Images/tutor_no_img.png" -->
<!-- 														onerror="profileImgError(this, 1)" alt=""></span> -->
<!-- 													<div class="text"> -->
<!-- 														<span class="name">{{class_detail.tutor_info_nickname}}</span> -->
<!-- 														<p class="date">2018-10-01 13:52:41</p> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 												<div class="cont cont_line cmt" id="content-box973"> -->
<!-- 													<p>네. 감사합니다. 언제든지 필요한 내용 있으시면 문의부탁드립니다.</p> -->
<!-- 												</div></li> -->
<!-- 										</ul></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
							<!--// 댓글영역 -->
<!-- 						</div> -->
<!-- 					</section> -->

					<!--//수강생 리뷰 -->
				</div>
				<!--//detail_wrap-->
			</div>
			<!--//p2p_class_container-->
			<!-- pc 수업 신청 부분 -->
			<aside class="sticky_area">
				<div class="sticky_navi">
					<h2>클래스 일정</h2>
					<ul
						class="schedule_list mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
						style="overflow: visible;">
						<div id="mCSB_1"
							class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
							style="max-height: none;" tabindex="0">
							<div id="mCSB_1_container"
								class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
								style="position: relative; top: 0; left: 0;" dir="ltr">
								<li>

									<p class="c_schedule">
										{{class_detail.schedule}} <span> </span>
									</p> <!--다회차 수업일 경우--> <span class="c_place">{{class_detail.place}}</span>

									<p class="c_schedule">{{class_detail.schedule}} <span> </span></p> 
									<!--다회차 수업일 경우--> 
									<span class="c_place">{{class_detail.place}}</span> 

									<b class="c_location">{{class_detail.location}}</b>
								</li>
							</div>
						</div>
						<div id="mCSB_1_scrollbar_vertical"
							class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
							style="display: none;">
							<div class="mCSB_draggerContainer">
								<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
									style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
									<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
								</div>
								<div class="mCSB_draggerRail"></div>
							</div>
						</div>
					</ul>
					<p class="price_info">

						<span class="per">{{class_detail.perprice}}</span> <span
							class="total"> <b>{{class_detail.totalprice}}</b></span>
					</p>

					<table class="table">
						<!-- 찜 -->
						<tr>
							<td class="text-center">
								<ul class="btn_area">
									<!-- 					  <li> -->
									<%-- 					  <c:if test="${sessionScope.mvo.id==null }"> --%>
									<button onclick="alert('로그인이 필요합니다');">
										<img src="../images/heartoff32px.png">
									</button>
									<%-- 					    </c:if> --%>
									<%-- 					    <c:if test="${sessionScope.mvo.id!=null }"> --%>
									<%-- 					      <c:if test="<%--찜안눌렀을때 --%>
									<%-- "> --%>
									<!-- 									<button onclick="location.href='../jjim/jjim_insert_vue.do?cno='+class_detail.cno"><img src="../images/heartoff32px.png"></button> -->
									<input type="button" ref="id" value="${sessionScope.mvo.id }"
										style="background-image: url(../images/heartoff32px.png)" v-on:click="jjim_insert()">
									<%-- 					      </c:if> --%>
									<%-- 					      <c:if test="<%--찜눌렀을때 --%>
									<%-- "> --%>
									<!-- 					        <img src="../images/hearton32px.png"> -->
									<%-- 					      </c:if> --%>
									<%-- 					    </c:if> --%>
									<!-- 					    </li> -->
									&nbsp;&nbsp;
									<!-- 수업신청 -->
									<li class="regi text-center"
										style="width: 100%; height: 48px; margin-top: 10px; margin-right: 0;">
										<c:if test="${sessionScope.mvo.id==null }">
											<button onclick="alert('로그인이 필요합니다');">
												<h3 class="regifont">클래스 신청하기</h3>
											</button>
										</c:if> <c:if test="${sessionScope.mvo.id!=null }">
											<a :href="'../reserve/reserve.do?cno='+cno"><button
													style="background-color: #45c5c5">클래스 신청하기</button></a>
										</c:if>
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<ul class="btn_area">
									<!-- 실시간채팅 -->
									<li class="chat"
										style="width: 100%; height: 48px; margin-top: 10px; margin-right: 0;">
										<c:if test="${sessionScope.mvo.id==null }">
											<button onclick="alert('로그인이 필요합니다');">
												<img src="../images/chat32px.png">&nbsp;&nbsp;실시간 채팅
											</button>
										</c:if> <c:if test="${sessionScope.mvo.id!=null }">
											<button onclick="location.href='#'">
												<img src="../images/chat32px.png">&nbsp;&nbsp;실시간 채팅
											</button>
										</c:if>
									</li>
								</ul>
							</td>
						</tr>

						<span class="per">{{class_detail.perprice}}</span> 
						<span class="total"> <b>{{class_detail.totalprice}}</b></span>
					</p>

					<table class="table">
					<!-- 찜 -->
					<tr>
					  <td class="text-center">
					  <ul class="btn_area">
					  <li>
					  <c:if test="${sessionScope.id==null }">
					    <button onclick="alert('로그인이 필요합니다');"><img src="../images/heartoff32px.png"></button>      
					    </c:if>
					    <c:if test="${sessionScope.id!=null }">
					      <c:if test="${jjim_count==0}">
					        <a href="../images/jjim_insert.do?cno=${vo.cno }"></a><img src="../class/heartoff32px.png">
					      </c:if>
					      <c:if test="${jjim_count!=0 }">
					        <img src="../images/hearton32px.png">
					      </c:if>
					    </c:if>
					    </li>
					    &nbsp;&nbsp;
					    <!-- 수업신청 -->
					    <li class="regi text-center" style="width: 100%; height: 48px; margin-top: 10px; margin-right: 0;">
					    <c:if test="${sessionScope.id==null }">
					      <button onclick="alert('로그인이 필요합니다');">클래스 신청하기</button>
					    </c:if>
					    <c:if test="${sessionScope.id!=null }">
					      <button style="background-color:#45c5c5" onclick="location.href='../reserve/reserve.do?cno='+cno">클래스 신청하기</button>
					    </c:if>
					    </li>
					    </ul>
					  </td>
					</tr>
					<tr>
					<td>
					<ul class="btn_area"> <!-- 실시간채팅 -->
					  <li class="chat" style="width: 100%; height: 48px; margin-top: 10px; margin-right: 0;">
						<c:if test="${sessionScope.id==null }">
					      <button onclick="alert('로그인이 필요합니다');"><img src="../images/bubble32px.png">&nbsp;&nbsp;실시간 채팅</button>
					    </c:if>
					    <c:if test="${sessionScope.id!=null }">
					      <button onclick="location.href='#'"><img src="../images/bubble32px.png">&nbsp;&nbsp;실시간 채팅</button>
					    </c:if>
					  </li>
					</ul>
					</td>
					</tr>

					</table>
				</div>
			</aside>
			<!--// pc 수업 신청 부분 끝-->
		</div>
		<!--//p2p_class_wrap-->

		<!-- alert 디자인 팝업 -->
		<div id="alreadyPopup" class="modal_popup_list" style="display: none;">
			<div class="pop_alert_msg">
				<h3>앗!</h3>
				<p>이미 작성하신 리뷰가 있어요.</p>
				<button type="button" class="btn_close">확인</button>
			</div>
		</div>
		<div id="deletePopup" class="modal_popup_list" style="display: none;">
			<div class="pop_alert_msg">
				<h3>정말 삭제하시겠어요?</h3>
				<p>리뷰를 삭제하시면, 해당 수업에 새로운 리뷰를 작성하실 수 없어요.</p>
				<div class="btn_area">
					<button type="button" class="btn_review_del"
						onclick="delReview(5547)">리뷰 삭제</button>
					<button type="button" class="btn_close cancle">취소</button>
				</div>
			</div>
		</div>
		<div id="donotPopup" class="modal_popup_list" style="display: none;">
			<div class="pop_alert_msg">
				<h3>앗!</h3>
				<p>최초 작성일로부터 60일이 경과하여 리뷰를 수정할 수 없어요.</p>
				<button type="button" class="btn_close">확인</button>
			</div>
		</div>
		<!-- // alert 디자인 팝업 -->
	</main>
	<script>
	  new Vue({
		  el:'.detail',
		  data:{
			  cno:${cno},
			  id:${id},
			  class_detail:{}
		  },
		  mounted:function(){
			  let _this=this
			  axios.get("http://localhost/web/class/class_detail_vue.do",{
				  params:{
					  cno:_this.cno
					  id:_this.$refs.id.value
				  }
			  }).then(function(response){
				  console.log(response.data)
				  _this.class_detail=response.data
			  })
		  },
			  methods : {
					jjim_insert : function() {
						let _this = this;
						this.id=this.$refs.id.value
						axios.get(
								"http://localhost/web/jjim/insert_vue.do",{
									params:{
										cno:_this.cno
										id:_this.id
									}
								}).then(function(response) {
							location.href="../jjim/insert_vue.do"
						})
					}

				}
// 		  methods:function(){
// 		       loginConfirm:function(){
// 		            if (confirm('로그인이 필요합니다')) location.href = '/Account/LoginPage.php';
// 		        }
// 		  }
	  })
	</script>
	<script>
    // 위시 추가(찜하기)
    $(document).on('click', '#wishBtn', function() {
        var btn = $(this);
        $.post('/Talent/AddWishList/5547', {}, function(res) {
            if (res=='0000') {
                btn.attr('id', 'btn-remove-wishlist').addClass('on');
                alert('찜에 등록 되었습니다');
                fbq('init', '666003960220481');
                fbq('track', 'AddToWishlist', {
                    currency: 'KRW',
                    value: 660000,
                    content_type: 'product',
                    content_ids: ['5547'],
                    content_category: '백엔드'
                },{eventID: 'c1c48a66fe9ab659d5d4ea9b4c54cfd15bd1d3a3e42516195e93f86c81c6eff5'});
            } else {
                alert('찜에서 등록 중 오류가 발생했습니다');
            }
        });
    });

    // 위시 삭제
    $(document).on('click', '#btn-remove-wishlist', function() {
        var btn = $(this);
        $.post('/Talent/RemoveWishList/5547', {}, function(res) {
            if (res=='0000') {
                btn.attr('id', 'wishBtn').removeClass('on');
                $("#wishsrc").attr("src","https://front-img.taling.me/Content/Images/class/icon_btn_wish.png");
                alert('찜에서 삭제 되었습니다');
            } else {
                alert('찜에서 삭제 중 오류가 발생했습니다');
            }
        });
    });
</script>
</body>
</html>