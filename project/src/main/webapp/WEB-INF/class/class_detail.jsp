<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="styleSheet" href="../Content/app3/css/login/login_pc.css">
<link rel="styleSheet" href="../Content/app3/css/talent/detail.css">
<link rel="styleSheet" href="../Content/app3/css/talent/photo_review.css">
<link rel="styleSheet" href="../Content/app3/css/talent/respond.css">
<link rel="styleSheet" href="../Content/app3/css/aegrenner.css">
<link rel="styleSheet" href="../Content/app3/css/commons.css">
<link rel="styleSheet" href="../Content/app3/css/footer_pc.css">
<link rel="styleSheet" href="../Content/app3/css/header.css">
<link rel="styleSheet" href="../Content/app3/css/index.css">
<link rel="styleSheet" href="../Content/app3/css/jquery.mCustomScrollbar.css">
<link rel="styleSheet" href="../Content/app3/css/notokr.css">
<link rel="styleSheet" href="../Content/app3/css/swiper.min.css">
</head>
<body>
<body>
	<!-- main -->
	<main id="wrap">
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
						<li>다회차</li>
						<li id="regionAll">강남</li>
						<li>최대 6명</li>
						<!-- 녹화영상, 전자책 수업 : 진행방식만 노출 -->
					</ul>
					<h1 class="p_title">IT 현직자가 알려주는 실전 JAVA</h1>

					<div class="p2p_tutor_info">
						<div class="tutor_img">
							<img src="" alt="">
						</div>
						<div class="short_info">
							<em class="t_nickname">Kim YeongJun 튜터</em> <span
								class="class_review"> <i class="star_img"> 
								<img src="https://front-img.taling.me/Content/Images/class/icon_star_new.png" alt="">
							</i> <i class="grade_total">4.2<sapn>(2)</sapn></i>
							</span>
						</div>
					</div>
				</section>
				<!--// 수업명, 튜터이름, 별점 -->

				<!-- 수업 이미지 -->
				<section class="p2p_class_img">
					<!-- Swiper -->
					<div class="img_slied_area">
						<!-- gallery-top -->
						<div
							class="swiper-container gallery-top swiper-container-fade swiper-container-initialized swiper-container-horizontal swiper-container-rtl">
							<div class="swiper-wrapper" style="transition-duration: 0ms;">
								<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev"
									style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/28b5e7a2772a822926b85fbf578d5bcfd1a503eb.jpg&quot;); width: 632px; transition-duration: 0ms; opacity: 0.00158228; transform: translate3d(1px, 0px, 0px);"
									data-swiper-slide-index="3"></div>
							</div>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
						<!-- // gallery-top -->
						<!-- gallery-thumbs -->
						<div
							class="swiper-container gallery-thumbs swiper-container-initialized swiper-container-vertical swiper-container-free-mode swiper-container-thumbs">
							<div class="swiper-wrapper"
								style="transition-duration: 0ms; transform: translate3d(0px, -113px, 0px);">
								<div
									class="swiper-slide swiper-slide-duplicate swiper-slide-prev"
									style="background-image: url(&quot;//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Images/28b5e7a2772a822926b85fbf578d5bcfd1a503eb.jpg&quot;); height: 103px; margin-bottom: 10px;"
									data-swiper-slide-index="3"></div>
							</div>
							<!-- swiper button -->
							<div class="swiper-button-prev" tabindex="0" role="button"
								aria-label="Previous slide"></div>
							<div class="swiper-button-next" tabindex="0" role="button"
								aria-label="Next slide"></div>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
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
								<p class="text_area">인터넷이 되는 스터디룸에서 강의하고자 합니다. 강의실 대여료는 수업료에
									포함됩니다.</p>
								<span class="badge_noti">튜터 공지</span>
							</div>
							<button class="btn_show" style="display: none;">
								<span class="more">더보기</span> <span class="less">접기</span>
							</button>
						</div>
						<!--//p2p_class_notice-->
					</section>
					<!--// 수업전 숙지해주세요. -->

					<!-- 클래스 요약 -->
					
					<!-- // 클래스 요약 -->

					<!-- 이런 분들이 들으면 좋아요. -->
					<section class="sec_common p2p_class_target">
						<div class="p_col_left">
							<p class="col_title">이런 분들이 들으면 좋아요.</p>
						</div>
						<!--//p_col_left-->
						<div class="p_col_right">
							<div class="text_wrap">
								<p class="text_area">
									※ 들으셔야 할 분 <br> - 자바만 봐도 울렁거리시는 분 <br> - 자바로 뭘 만들고
									싶은데 뭘 해야할지 모르시는 분<br> - 안드로이드 앱을 만들고 싶은데 자바를 모르시는 분 <br>
									- 어떻게 자바를 공부하실지 모르시는 분 <br> - 비전공자 출신으로 자바 공부하실 분 <br>
									<br> ※ 듣지 않아도 되실 분 <br> - 자바 프로젝트를 한번쯤 경험해 보신 분 <br>
									- 자바 책 10번은 봤다고 생각하시는 분 <br> - C나 C++은 쉽다고 생각하시는 분 <br>
									- 비전공자이지만 코딩이 체질이라 모든언어에 능통하신 분
								</p>
							</div>
							<button class="btn_show" style="display: none;">
								<span class="more">더보기</span> <span class="less">접기</span>
							</button>
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
									<p class="name">Kim YeongJun</p>
								</div>
							</div>
							<ul class="cert_list">
								<li>부경대학교 컴퓨터멀티미디어공학</li>


								<li class="com">CISA</li>
								<li class="com">OCP</li>
								<li class="com">SCJP</li>
								<li class="com">정보처리기사</li>
							</ul>
							<div class="text_wrap toggle">
								<p class="text_area">
									◎ 프로젝트 경력 <br> - 금융권 차세대 프로젝트 투입중<br> - 금융권
									인터넷뱅킹/스마트폰뱅킹 운영 <br> - 국내 최대 S통신사 차세대 경험 <br> -
									금융(은행, 카드, 저축은행) 차세대 프로젝트 다수 경험<br> <br> ◎ 이력 <br>
									- 3대 SI 대기업 현직자 <br> - Tmaxsoft 근무 경험<br> - 중소기업 연구소
									근무 경험<br> - 프리랜서 근무 경험<br> - 스타트업(벤처기업) 경험<br> -
									병역특례 경험 <br> <br> ◎ 자기 소개 <br> 저는 현직자이며 언제나 노력하는
									개발자 푸우 튜터입니다. <br> 탈잉을 보니 다양한 경험을 가지신 훌륭한 튜터님들이 많이 계신 걸로
									보입니다. <br> 이런 훌륭하신 튜터님들중에서 저만의 장점을 알려드린다면 금융 프로젝트 투입전 비전공자
									및 Java를 모르는 신입사원에게 교육을 담당했던 사람이라고 말씀드리고 싶습니다. <br> 그리고 실무
									경력이 어마어마하게 길지만 아직 젊습니다. ^^;<br> 그리고 여러분들처럼 언제나 공부하는 자세로
									저번달에도 Go 야간수업을 10시까지<br> 열심히 들었습니다. 노력하는 사람이 더 잘 가르킬 수
									있습니다. <br> <br> ◎ 사용가능언어 : VB, C, C++, Java,
									Javascript, Python, Go, Android, Objective-C <br> ◎ 사용가능DB
									: Oracle, MS-SQL, MySQL, MongoDB<br>
								</p>
							</div>
							<button class="btn_show">
								<span class="more">더보기</span> <span class="less">접기</span>
							</button>
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
								<p class="text_area">
									저의 수업은 실무에서 쓰는 군더더기 없는 내용을 가르쳐 드립니다. <br> 수업을 준비하기 위해서 다른
									튜터분들의 수업 내용을 보았을 때 제목은 거창하나 실제 업무에서 쓸 수 없는 정말 기초중에 기초인 내용만 훑고
									지나가는게 너무 안타까웠습니다. 실무 투입 전 Java를 전혀 모르는 사원 대리급에게 교육을 진행한 경험을
									바탕으로 하여 실무적인 내용을 중심으로 이해하기 쉽게 알려드립니다. <br> <br> ◎ 3시간
									수업(50분 수업 + 10분 휴식 + 50분 수업 + 10분 휴식 + 1시간 수업)<br> ◎
									2주차부터는 전주에 배운 내용에 대한 복습<br> ◎ 이론만 있는 수업은 No! 1시간동안 실습을 통해서
									실전능력을 기릅니다. <br> <br> ※수강한 뒤 얻을 수 있는 것 (수업과 관련된 내용)<br>
									- JAVA 웹 프로그래밍을 공부할 수 있겠어요. <br> - 간단한 자바 프로그램은 짤 수 있어요. <br>
									- 무언가를 만들때 어디서부터 해야할지 알것 같아요. <br> - 안드로이드 앱 만들기위한 JAVA를
									이해했어요. <br> - 자바 뿐만 아니라 다른 프로그래밍언어도 비교해서 이해할 수 있어요. <br>
									<br> ※수강한 뒤 얻을 수 있는 것 (수업외 내용)<br> - 실무에선 어떤 기술을 쓰는지
									알려드립니다. <br> - 자격증을 따야하나 말아야하나도 알려드립니다. <br> - 스타트업,
									중견기업, 대기업, 프리랜서 경험도 들을 수 있어요. <br> <br> ※자바 웹
									프로그래밍/안드로이드 과정도 준비중입니다. <br> <br> <br> ※수강생이
									두명이상이어야만 하고 미만일 경우에는 차주로 연기됩니다. <br> <br> <br>
								</p>
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
										<strong class="curri_heading">1회차 커리큘럼</strong>
										<p class="curri_details">
											□ 이론 <br> - JDK 설치 및 Java용 IDE설치(Eclipse)<br> - 자바
											소개 <br> - 자바 특징, 자바 클래스 작성 <br> - 자바 기초 문법 <br>
											<br> □ 실습 <br> - 퀴즈 및 실습 <br> - 실무에선 뭘 쓰나요? <br>
											- 다음주 예고
										</p>
										<div class="curri_img"></div>
									</div>
									</div>
								</div>
							</div>
							<button class="btn_show">
								<span class="more">더보기</span> <span class="less">접기</span>
							</button>
					</section>
					<!--//수업은 이렇게 진행됩니다 -->

					<!-- 수강생 리뷰 -->
					<section class="idx sec_common p2p_class_cmt" id="review">
						<div class="p_col_left">
							<p class="col_title">실제 수강생의 리뷰입니다.</p>
						</div>
						<!--//p_col_left-->
						<div class="p_col_right">
							<div class="review_sum">
								<ul class="review_list">
									<li>커리큘럼<span class="avg">5.0</span></li>
									<li>전달력<span class="avg">4.0</span></li>
									<li>시간준수<span class="avg">4.5</span></li>
									<li>준비성<span class="avg">4.0</span></li>
									<li>친절도<span class="avg">3.5</span></li>
								</ul>
							</div>
							<button type="button" class="btn_cmt"
								onclick="writeReview(5547,'newReview',0,1);">리뷰 작성하기</button>
							<!-- 댓글 영역 -->
							<div id="innerReviewDiv">
								<ul class="cmt_wrap">
									<li class="list"><div class="tutee_info">
											<span class="img">
											  <img src="//img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg"
												onerror="profileImgError(this,0)" alt="">
											</span>
											<div class="tutee">
												<span class="name">yunjenna</span>
												<div class="date">
													<p>2019-04-13 17:51:07</p>
												</div>
											</div>
										</div>
										<div class="cmt">
											<p>잘 들었습니다!</p>
										</div>
										<div class="btn_box">
											<button class="btn_like" type="button"
												onclick="ReviewLikes(19559,5547,this)">0</button>
											<span class="reply">0</span>
										</div>
										<div class="reply_box" id="reply_box19559">
											<form action="" name="re-insert" type="19559">
												<div class="reply_inp">
													<div class="text_inp">
														<textarea name="ReplyContent" placeholder="답글을 작성해 주세요."
															id="ReplyContent19559"></textarea>
													</div>
													<div class="submit_box">
														<button type="submit" class="btn_submit">등록</button>
													</div>
												</div>
											</form>
										</div></li>
									<li class="list"><div class="tutee_info">
											<span class="img"><img
												src="//front-img.taling.me/Content/Images/placeholders/profile-default.thumb.jpg"
												onerror="profileImgError(this,0)" alt=""></span>
											<div class="tutee">
												<span class="name">익명</span>
												<div class="date">
													<p>2018-10-15 18:17:24</p>
												</div>
											</div>
										</div>
										<div class="cmt">
											<p>강사님이 최선을 다해서 친절하게 알려주셨습니다. 자바 기초부터 시작해서 실제로 사용하고 있는
												프로그램과 정보도 알려주시며 인생상담까지 친절하게 해주셨습니다. 돈이 아깝지 않았습니다. 꼭 들으십시오.
												강력추천합니다.</p>
										</div>
										<div class="btn_box">
											<button class="btn_like" type="button"
												onclick="ReviewLikes(8957,5547,this)">0</button>
											<span class="reply">1</span>
										</div>
										<div class="reply_box" id="reply_box8957">
											<form action="" name="re-insert" type="8957">
												<div class="reply_inp">
													<div class="text_inp">
														<textarea name="ReplyContent" placeholder="답글을 작성해 주세요."
															id="ReplyContent8957"></textarea>
													</div>
													<div class="submit_box">
														<button type="submit" class="btn_submit">등록</button>
													</div>
												</div>
											</form>
										</div>
										<ul class="re">
											<li class="tutor_re"><div class="user_info">
													<span class="img"><img
														src="//front-img.taling.me/Content/Images/tutor_no_img.png"
														onerror="profileImgError(this, 1)" alt=""></span>
													<div class="text">
														<span class="name">Kim YeongJun</span>
														<p class="date">2018-10-01 13:52:41</p>
													</div>
												</div>
												<div class="cont cont_line cmt" id="content-box973">
													<p>네. 감사합니다. 언제든지 필요한 내용 있으시면 문의부탁드립니다.</p>
												</div></li>
										</ul></li>
								</ul>
							</div>
							<!--// 댓글영역 -->
							<!-- 수강생 리뷰 페이지네이션 -->
							<div id="innerPageDiv" class="pagination">
								<a class="navi left" onclick="inReviewDiv(5547,0)"><span
									class="blind">왼쪽</span></a><a class="active"
									onclick="inReviewDiv(5547, 1)">1</a><a class="navi right"
									onclick="inReviewDiv(5547,1)"><span class="blind">오른쪽</span></a>
							</div>
							<!--// 수강생 리뷰 페이지네이션 -->
						</div>
					</section>
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
										협의 후 날짜, 시간 결정 <span> </span>
									</p> <!--다회차 수업일 경우--> <span class="c_place">협의 후 결정</span> <b
									class="c_location">강남</b>
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
						<span class="per">55,000원 <span> / 시간</span></span> <span
							class="total"> <b>660,000원 /</b> <span class="time">총
								4회 12시간</span>
						</span>
					</p>

					<ul class="btn_area">
						<li class="wish"><a href="/Account/LoginPage.php"
							onclick="alert('로그인이 필요합니다')"><span class="blind">찜하기</span></a>
						</li>
						<li class="apply"><a onclick="alert('로그인이 필요합니다');"
							href="/Account/LoginPage.php">클래스 신청하기</a></li>
					</ul>
					<ul class="btn_area">
						<!-- 실시간톡 -->
						<li class="wish"
							style="width: 100%; height: 48px; margin-top: 10px; margin-right: 0;">
							<button
								onclick="alert('로그인이 필요합니다'); location.href='/Account/LoginPage.php'"
								style="background: url(https://front-img.taling.me/Content/app3/img/icon/icon_liveChat@2x.png) #fff no-repeat 17px center/18px; background-position: 15px center;">튜터에게
								문의하기</button>
						</li>
						<!--// 실시간톡 -->
					</ul>
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

	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","666003960220481");fbq("set","agent","tmgoogletagmanager","666003960220481");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=666003960220481&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="">_linkedin_partner_id="2781620";window._linkedin_data_partner_ids=window._linkedin_data_partner_ids||[];window._linkedin_data_partner_ids.push(_linkedin_partner_id);</script>
	<script type="text/javascript" id="">(function(){var b=document.getElementsByTagName("script")[0],a=document.createElement("script");a.type="text/javascript";a.async=!0;a.src="https://snap.licdn.com/li.lms-analytics/insight.min.js";b.parentNode.insertBefore(a,b)})();</script>
	<noscript>
		<img height="1" width="1" style="display: none;" alt=""
			src="https://px.ads.linkedin.com/collect/?pid=2781620&amp;fmt=gif">
	</noscript>
	<script type="text/javascript" id="">!function(d,e,f,a,b,c){d.twq||(a=d.twq=function(){a.exe?a.exe.apply(a,arguments):a.queue.push(arguments)},a.version="1.1",a.queue=[],b=e.createElement(f),b.async=!0,b.src="//static.ads-twitter.com/uwt.js",c=e.getElementsByTagName(f)[0],c.parentNode.insertBefore(b,c))}(window,document,"script");twq("init","o614t");twq("track","PageView");</script>

	<script type="text/javascript" id="">!function(d,g,e){d.TiktokAnalyticsObject=e;var a=d[e]=d[e]||[];a.methods="page track identify instances debug on off once ready alias group enableCookie disableCookie".split(" ");a.setAndDefer=function(b,c){b[c]=function(){b.push([c].concat(Array.prototype.slice.call(arguments,0)))}};for(d=0;d<a.methods.length;d++)a.setAndDefer(a,a.methods[d]);a.instance=function(b){b=a._i[b]||[];for(var c=0;c<a.methods.length;c++)a.setAndDefer(b,a.methods[c]);return b};a.load=function(b,c){var f="https://analytics.tiktok.com/i18n/pixel/events.js";
a._i=a._i||{};a._i[b]=[];a._i[b]._u=f;a._t=a._t||{};a._t[b]=+new Date;a._o=a._o||{};a._o[b]=c||{};c=document.createElement("script");c.type="text/javascript";c.async=!0;c.src=f+"?sdkid\x3d"+b+"\x26lib\x3d"+e;b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(c,b)};a.load("C4QT7T7M5GFN4SM6UOU0");a.page()}(window,document,"ttq");</script>

	<script type="text/javascript" id="">!function(d,g,e){d.TiktokAnalyticsObject=e;var a=d[e]=d[e]||[];a.methods="page track identify instances debug on off once ready alias group enableCookie disableCookie".split(" ");a.setAndDefer=function(b,c){b[c]=function(){b.push([c].concat(Array.prototype.slice.call(arguments,0)))}};for(d=0;d<a.methods.length;d++)a.setAndDefer(a,a.methods[d]);a.instance=function(b){b=a._i[b]||[];for(var c=0;c<a.methods.length;c++)a.setAndDefer(b,a.methods[c]);return b};a.load=function(b,c){var f="https://analytics.tiktok.com/i18n/pixel/events.js";
a._i=a._i||{};a._i[b]=[];a._i[b]._u=f;a._t=a._t||{};a._t[b]=+new Date;a._o=a._o||{};a._o[b]=c||{};c=document.createElement("script");c.type="text/javascript";c.async=!0;c.src=f+"?sdkid\x3d"+b+"\x26lib\x3d"+e;b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(c,b)};a.load("C4QT7T7M5GFN4SM6UOU0");a.page()}(window,document,"ttq");</script>

	<script type="text/javascript" id="">!function(d,g,e){d.TiktokAnalyticsObject=e;var a=d[e]=d[e]||[];a.methods="page track identify instances debug on off once ready alias group enableCookie disableCookie".split(" ");a.setAndDefer=function(b,c){b[c]=function(){b.push([c].concat(Array.prototype.slice.call(arguments,0)))}};for(d=0;d<a.methods.length;d++)a.setAndDefer(a,a.methods[d]);a.instance=function(b){b=a._i[b]||[];for(var c=0;c<a.methods.length;c++)a.setAndDefer(b,a.methods[c]);return b};a.load=function(b,c){var f="https://analytics.tiktok.com/i18n/pixel/events.js";
a._i=a._i||{};a._i[b]=[];a._i[b]._u=f;a._t=a._t||{};a._t[b]=+new Date;a._o=a._o||{};a._o[b]=c||{};c=document.createElement("script");c.type="text/javascript";c.async=!0;c.src=f+"?sdkid\x3d"+b+"\x26lib\x3d"+e;b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(c,b)};a.load("C51D6FALQH64DC0FLQE0");a.page()}(window,document,"ttq");</script>

	<script type="text/javascript" id=""
		src="https://www.googletagmanager.com/gtag/js?id=AW-876466920"></script>
	<script type="text/javascript" id="">+function(c,g,h,k,a){c.appboy={};c.appboyQueue=[];a="DeviceProperties Card Card.prototype.dismissCard Card.prototype.removeAllSubscriptions Card.prototype.removeSubscription Card.prototype.subscribeToClickedEvent Card.prototype.subscribeToDismissedEvent Banner CaptionedImage ClassicCard ControlCard ContentCards ContentCards.prototype.getUnviewedCardCount Feed Feed.prototype.getUnreadCardCount ControlMessage InAppMessage InAppMessage.SlideFrom InAppMessage.ClickAction InAppMessage.DismissType InAppMessage.OpenTarget InAppMessage.ImageStyle InAppMessage.Orientation InAppMessage.TextAlignment InAppMessage.CropType InAppMessage.prototype.closeMessage InAppMessage.prototype.removeAllSubscriptions InAppMessage.prototype.removeSubscription InAppMessage.prototype.subscribeToClickedEvent InAppMessage.prototype.subscribeToDismissedEvent FullScreenMessage ModalMessage HtmlMessage SlideUpMessage User User.Genders User.NotificationSubscriptionTypes User.prototype.addAlias User.prototype.addToCustomAttributeArray User.prototype.getUserId User.prototype.incrementCustomUserAttribute User.prototype.removeFromCustomAttributeArray User.prototype.setAvatarImageUrl User.prototype.setCountry User.prototype.setCustomLocationAttribute User.prototype.setCustomUserAttribute User.prototype.setDateOfBirth User.prototype.setEmail User.prototype.setEmailNotificationSubscriptionType User.prototype.setFirstName User.prototype.setGender User.prototype.setHomeCity User.prototype.setLanguage User.prototype.setLastKnownLocation User.prototype.setLastName User.prototype.setPhoneNumber User.prototype.setPushNotificationSubscriptionType InAppMessageButton InAppMessageButton.prototype.removeAllSubscriptions InAppMessageButton.prototype.removeSubscription InAppMessageButton.prototype.subscribeToClickedEvent display display.automaticallyShowNewInAppMessages display.destroyFeed display.hideContentCards display.showContentCards display.showFeed display.showInAppMessage display.toggleContentCards display.toggleFeed changeUser destroy getDeviceId initialize isPushBlocked isPushGranted isPushPermissionGranted isPushSupported logCardClick logCardDismissal logCardImpressions logContentCardsDisplayed logCustomEvent logFeedDisplayed logInAppMessageButtonClick logInAppMessageClick logInAppMessageHtmlClick logInAppMessageImpression logPurchase openSession registerAppboyPushMessages removeAllSubscriptions removeSubscription requestContentCardsRefresh requestFeedRefresh requestImmediateDataFlush resumeWebTracking setLogger setSdkAuthenticationSignature stopWebTracking subscribeToContentCardsUpdates subscribeToFeedUpdates subscribeToInAppMessage subscribeToNewInAppMessages subscribeToSdkAuthenticationFailures toggleAppboyLogging trackLocation unregisterAppboyPushMessages wipeData".split(" ");
for(var d=0;d<a.length;d++){for(var l=a[d],e=c.appboy,f=l.split("."),b=0;b<f.length-1;b++)e=e[f[b]];e[f[b]]=(new Function("return function "+l.replace(/\./g,"_")+"(){window.appboyQueue.push(arguments); return true}"))()}window.appboy.getCachedContentCards=function(){return new window.appboy.ContentCards};window.appboy.getCachedFeed=function(){return new window.appboy.Feed};window.appboy.getUser=function(){return new window.appboy.User};(a=g.createElement(h)).type="text/javascript";a.src="https://js.appboycdn.com/web-sdk/3.3/appboy.min.js";
a.async=1;(k=g.getElementsByTagName(h)[0]).parentNode.insertBefore(a,k)}(window,document,"script");window.appboy.initialize("0f16a1c6-2a4e-47f2-a8e9-848f130d7d1b",{baseUrl:"sdk.iad-05.braze.com"});window.appboy.display.automaticallyShowNewInAppMessages();window.appboy.openSession();</script>
	<img
		src="https://t.co/i/adsct?bci=3&amp;eci=2&amp;event_id=84b243d9-7361-4c44-a278-d71d3dcc5381&amp;events=%5B%5B%22pageview%22%2C%7B%7D%5D%5D&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=e79fa0f9-28cc-49cf-893b-fe3f43a5a9b1&amp;tw_document_href=https%3A%2F%2Ftaling.me%2FTalent%2FDetail%2F5547&amp;tw_iframe_status=0&amp;tw_order_quantity=0&amp;tw_sale_amount=0&amp;txn_id=o614t&amp;type=javascript&amp;version=2.3.29"
		height="1" width="1" style="display: none;">
	<img
		src="https://analytics.twitter.com/i/adsct?bci=3&amp;eci=2&amp;event_id=84b243d9-7361-4c44-a278-d71d3dcc5381&amp;events=%5B%5B%22pageview%22%2C%7B%7D%5D%5D&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=e79fa0f9-28cc-49cf-893b-fe3f43a5a9b1&amp;tw_document_href=https%3A%2F%2Ftaling.me%2FTalent%2FDetail%2F5547&amp;tw_iframe_status=0&amp;tw_order_quantity=0&amp;tw_sale_amount=0&amp;txn_id=o614t&amp;type=javascript&amp;version=2.3.29"
		height="1" width="1" style="display: none;">
	<script type="text/javascript" id="">kakaoPixel("1164066569979408845").pageView();</script>
	<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","AW-876466920");</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
</body>
</body>
</html>