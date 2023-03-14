<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
	<main class="container">
		<!-- visual -->
		<div class="visual">
			<!-- all_category -->
			<ul class="all_category">
				<!-- v-for 작성 -->
				<li class="depth1" v-for="vo in cate_list"
					@mouseover="onMouseOver(vo.cateno)">{{vo.catename}}
					<div class="sub_content">
						<ul>
							<li class="depth2" v-for="dvo in detail_cate_list"><a
								:href="'../class/class_list.do?cateno='+vo.cateno+'&detail_cateno='+dvo.detail_cateno">{{dvo.detail_catename}}</a></li>
							<!-- 							<li class="depth2"><a href="/Home/Search/?cateMain=45">자기계발</a></li> -->
							<!-- 							<li class="depth2"><a href="/Home/Search/?cateMain=47">취업·이직</a></li> -->
							<!-- 							<li class="depth2"><a href="/Home/Search/?cateMain=43">직무역량</a></li> -->
						</ul>
					</div>
				</li>
			</ul>
			<!-- // all_category -->
			<!-- roll_visual -->
			<div
				class="roll_visual swiper-container swiper-container-fade swiper-container-initialized swiper-container-horizontal">
				<h2 class="blind">롤링배너</h2>
				<ul class="swiper-wrapper" style="transition-duration: 0ms;">
					<li
						class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev"
						data-swiper-slide-index="3"
						style="width: 880px; opacity: 1; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
						<a href="#" onclick="traceClick('mainTopBanner', 257);"> <img
							class="img"
							src="https://img.taling.me/Content/Uploads/Images/42ad12cc026dede4fdcdcfac70429d39e89f3a25.png"
							alt="">
					</a>
					</li>
					<li class="swiper-slide" data-swiper-slide-index="1"
						style="width: 880px; opacity: 1; transform: translate3d(-1760px, 0px, 0px); transition-duration: 0ms;">
						<a href="#" onclick="traceClick('mainTopBanner', 260);"> <img
							class="img"
							src="https://img.taling.me/Content/Uploads/Images/48d8c3c037eef078baab7b9443fc61d4d0777d05.png"
							alt="">
					</a>
					</li>
					<li class="swiper-slide" data-swiper-slide-index="2"
						style="width: 880px; opacity: 1; transform: translate3d(-2640px, 0px, 0px); transition-duration: 0ms;">
						<a href="#" onclick="traceClick('mainTopBanner', 258);"> <img
							class="img"
							src="https://img.taling.me/Content/Uploads/Images/96bc7b892354f9cc05eb9c197575551955d16d23.png"
							alt="">
					</a>
					</li>
					<li
						class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next"
						data-swiper-slide-index="3"
						style="width: 880px; opacity: 1; transform: translate3d(-3520px, 0px, 0px); transition-duration: 0ms;">
						<a href="#" onclick="traceClick('mainTopBanner', 257);"> <img
							class="img"
							src="https://img.taling.me/Content/Uploads/Images/42ad12cc026dede4fdcdcfac70429d39e89f3a25.png"
							alt="">
					</a>
					</li>
					<li class="swiper-slide swiper-slide-duplicate swiper-slide-active"
						data-swiper-slide-index="0"
						style="width: 880px; opacity: 1; transform: translate3d(-4400px, 0px, 0px); transition-duration: 0ms;">
						<a href="#" onclick="traceClick('mainTopBanner', 263);"> <img
							class="img"
							src="https://img.taling.me/Content/Uploads/Images/6cc03f984146702e93d24606dd9cbf83dbc8ed10.png"
							alt="">
					</a>
					</li>
				</ul>
				<div class="swiper_btn_next" tabindex="0" role="button"
					aria-label="Next slide"></div>
				<div class="swiper_btn_prev" tabindex="0" role="button"
					aria-label="Previous slide"></div>
				<div
					class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
					<span
						class="swiper-pagination-bullet swiper-pagination-bullet-active"
						tabindex="0" role="button" aria-label="Go to slide 1"></span><span
						class="swiper-pagination-bullet" tabindex="0" role="button"
						aria-label="Go to slide 2"></span><span
						class="swiper-pagination-bullet" tabindex="0" role="button"
						aria-label="Go to slide 3"></span><span
						class="swiper-pagination-bullet" tabindex="0" role="button"
						aria-label="Go to slide 4"></span>
				</div>
				<span class="swiper-notification" aria-live="assertive"
					aria-atomic="true"></span>
			</div>
			<!-- // roll_visual -->
		</div>
		<!-- // visual -->
		<!-- category -->
		<div class="category" id="homeIconCuration">
			<ul class="list_category">
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/3bea9ebb29c4445a50c5719d669be5846e8d84e9.png)"></span>실시간랭킹</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/4e178e7f3b976d755554d38004d87bd370881cb9.png)"></span>신규클래스</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/5e4623a4053b7bfb84865bc2947dac29349471d3.png)"></span>도전!댄스</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/18cde21b43f8fd1f0331ad4fd2d05208cf1a83e9.png)"></span>헤메코</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/6869b8c8cab9ad327b7bb95f81e607d098ce8418.png)"></span>일상탈출</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/4199e05ef0f70409feb651237118ddd1d912f22e.png)"></span>N잡러</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/7280fa3f49f47a550e9f287331a53699df9400ed.png)"></span>사주/타로</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/44cb86fde1f60db71c68bced923bf37a61a69c9b.png)"></span>액세서리</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/9e0433a2911d0b11eb9569fc9477f6356865ebcb.png)"></span>쿠킹/베이킹</a></li>
				<li><a href="#"><span
						style="background-image: url(https://img.taling.me/Content/Uploads/Images/7356716c49a8d19a2fc4ece690cde60f3faa9d55.png)"></span>외국어</a></li>
			</ul>
		</div>
		<!-- // category -->
		<div class="main_content">
			<!-- colunm_left -->
			<section class="column_left">
				<!-- talents_area -->
				<div class="talents_area">
					<!-- curationSections -->
					<div class="talent_box">
						<h2 class="main_title">세상을 바꿀 ChatGPT, 이젠 배워야 할 때!</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/10034">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/2d31833949053aea44a76e6abd3efd397f60e770.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/2d31833949053aea44a76e6abd3efd397f60e770.png&quot;);">
										</div>
										<div class="card_cnt">
											<h3 class="talent_title">하루만에 정복하는 ChatGPT 영어공부 마스터 클래스</h3>
											<p class="cate_tutor">
												<span class="name">로이 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">28,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">54</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													2건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,10034);"></button></li>
							</ul>
							<button type="button"
								class="btn_swiper swiper-button-prev swiper-button-disabled"
								tabindex="0" role="button" aria-label="Previous slide"
								aria-disabled="true"></button>
							<button type="button" class="btn_swiper swiper-button-next"
								tabindex="0" role="button" aria-label="Next slide"
								aria-disabled="false"></button>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<!-- // curationSections -->

					<!-- content_Banner -->
					<div class="talent_box banner_area">
						<h2 class="main_title">요즘 사람들은 뭐 배운대?</h2>
						<div
							class="swiper-container style_contents swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
							<ul class="swiper-wrapper"
								style="transform: translate3d(0px, 0px, 0px);">
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://post.naver.com/viewer/postView.naver?volumeNo=35373530&amp;memberNo=33796646"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/c7f57e6a6354124f0f401e87cf5661115485b37f.jpg"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 일잘러의노트</span>
											<p class="title">알아두면 쓸데있는 PPT '숨겨진 기능'</p>
										</div>
								</a></li>
							</ul>
							<button type="button"
								class="btn_swiper swiper-button-prev swiper-button-disabled"
								tabindex="0" role="button" aria-label="Previous slide"
								aria-disabled="true"></button>
							<button type="button" class="btn_swiper swiper-button-next"
								tabindex="0" role="button" aria-label="Next slide"
								aria-disabled="false"></button>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<!-- // content_Banner -->


					<!-- mini_banner -->
					<!-- // mini_banner -->

					<!-- curationSections -->

					<div class="talent_box">
						<h2 class="main_title">평점 4.9 이상 명품클래스✔</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/16353">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/c1aec094d23ca5a1419063640072cba3f58f5a1b.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/c1aec094d23ca5a1419063640072cba3f58f5a1b.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<h3 class="talent_title">하루2021년 최고매출,카톡으로 만나는 일대일영어튜터</h3>
											<p class="cate_tutor">
												<span class="name">방인영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">120,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4174</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,16353);"></button></li>
							</ul>
							<button type="button"
								class="btn_swiper swiper-button-prev swiper-button-disabled"
								tabindex="0" role="button" aria-label="Previous slide"
								aria-disabled="true"></button>
							<button type="button" class="btn_swiper swiper-button-next"
								tabindex="0" role="button" aria-label="Next slide"
								aria-disabled="false"></button>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<!-- // curationSections -->

					<!-- line_banner -->
					<div class="talent_box banner_area">
						<h2 class="main_title blind">프로모션 띠 배너</h2>
						<div
							class="swiper-container style_line swiper-container-initialized swiper-container-horizontal">
							<ul class="swiper-wrapper"
								style="transform: translate3d(-1320px, 0px, 0px); transition-duration: 0ms;">
								<li class="swiper-slide" data-swiper-slide-index="0"
									style="width: 660px;"><a
									href="https://taling.me/tutor/Register/Manual"> <img
										src="https://img.taling.me/Content/Uploads/Images/fcc3acf199f2e86dbd3032be061b712acdae4cd7.png"
										alt="">
								</a></li>
							</ul>
							<button type="button" class="btn_swiper swiper-button-prev"
								tabindex="0" role="button" aria-label="Previous slide"></button>
							<button type="button" class="btn_swiper swiper-button-next"
								tabindex="0" role="button" aria-label="Next slide"></button>
							<div
								class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
								<span
									class="swiper-pagination-bullet swiper-pagination-bullet-active"
									tabindex="0" role="button" aria-label="Go to slide 1"></span>
							</div>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<!-- // line_banner -->

					<!-- curationSections -->
					<div class="talent_box">
						<h2 class="main_title">2023년, 올해 운세는? ✍</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/23650">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/06e56accfa2b51a685211c63e2962405514d6665.jpg">
										</div>
										<div class="card_cnt">
											<h3 class="talent_title">[파일 전송] 2023 사주&amp;자미두수로 보는
												타고난 운</h3>
											<p class="cate_tutor">
												<span class="name">치타 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">39,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1442</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,23650);"></button></li>
							</ul>
							<button type="button"
								class="btn_swiper swiper-button-prev swiper-button-disabled"
								tabindex="0" role="button" aria-label="Previous slide"
								aria-disabled="true"></button>
							<button type="button" class="btn_swiper swiper-button-next"
								tabindex="0" role="button" aria-label="Next slide"
								aria-disabled="false"></button>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<!-- // curationSections -->

				</div>
				<!-- // talents_area -->
			</section>
			<!-- // colunm_left -->
			<!-- column_right -->
			<section class="column_right" id="stick"
				style="transform: translate(0px, 0px);">
				<div class="wrapper">
					<!-- 로그인 전 -->
					<c:if test="${sessionScope.id==null }">
						<div class="login_box">
							<h2 class="blind">회원 로그인 영역</h2>
							<p class="login_msg">
								로그인 하시고 하루의<br>다양한 튜터를 만나보세요.
							</p>
							<a class="link_login" href="../member/loginpage.do">하루 로그인</a>
							<div class="box_btns">
								<a class="find_id" href="#">아이디 찾기</a> <a class="find_pw"
									href="#">비밀번호 찾기</a> <a class="link_join"
									href="../member/loginpage.do">회원가입</a>
							</div>
						</div>
					</c:if>
					<!-- //로그인 전 -->
					<!-- 로그인 후 -->
					<c:if test="${sessionScope.id!=null }">
						<div class="login_box status_logon">
							<div class="area_info_top">
								<a class="my_profile" href="#"> <img class="img_profile"
									src="${sessionScope.image }" onerror="profileImgError(this,);"
									alt="프로필 이미지">
								</a>
								<div class="logon_msg">
									<b><em class="level"></em>${sessionScope.name }님</b> <span>반가워요</span>
									<!-- 								<button class="btn_logout" type="button" id="btn-menu-logout">로그아웃</button> -->
									<button class="btn_logout" type="button" id="btn-menu-logout"
										onclick="location.href='../member/logout.do'">로그아웃</button>
								</div>
								<button class="btn_livechat " type="button" onclick="qPop(0)">
									<span class="blind">메시지💬</span>
								</button>
							</div>
							<div class="area_info_bottom">
								<div class="btn_coupon" id="coupon">
									<button type="button" class="coupon">
										쿠폰 <em>0</em>
									</button>
									<button type="button" class="point">
										포인트 <em>0P</em>
									</button>
								</div>
								<!-- pub -->
								<button class="tutor_mode" type="button" data-tutormode="">
									<b>튜터모드</b> <span class="toggle"><small></small></span>
								</button>
							</div>
							<ul class="lnb">
								<li claas="chat_tutee"><a onclick="qPop(0)"
									style="cursor: pointer;">메시지💬</a></li>
								<li class=""><a href="#">수업신청서</a></li>
								<li><a href="#">수강목록</a></li>
								<li class="link_wish"><a href="#">찜</a></li>
							</ul>
						</div>
					</c:if>
					<!-- // 로그인 후 -->
					<!-- hot_keyword -->
					<!-- // hot_keyword -->
					<!-- ad_banner -->
					<div class="ad_banner">
						<a href="https://taling.me/tutor/Register/Manual"> <img
							data-src="//front-img.taling.me/Content/app3/img/banner/every-talent-into-content06.png"
							class="lazyload" alt="여러분의 재능은 무엇인가요? 튜터 등록하러 가기">
						</a>
					</div>
					<!-- // ad_banner -->

					<!-- review_list -->
					<div
						class="review_list swiper-container swiper-container-initialized swiper-container-horizontal">
						<h2 class="main_title">실시간 리뷰</h2>
						<ul class="swiper-wrapper"
							style="transition-duration: 0ms; transform: translate3d(-5029.6px, 0px, 0px);">
							<li class="swiper-slide" data-swiper-slide-index="0"
								style="margin-right: 20px;"><a href="/Talent/Detail/40248">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/10a830d5244fd058777f220389c62013cdad5600.png"></div>
									<div class="text_box">
										<span class="write_time">3 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(153)</em></span>
										</div>
										<p class="review_text">정말 좋은 강의 였습니다.</p>
									</div>
							</a></li>
						</ul>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>
					<!-- // review_list -->
					<!-- ad_vod -->
					<div class="ad_vod">
						<div class="ad_vod_title">
							<h2 class="main_title">실시간 인기 클래스</h2>
							<!--<a href="/vod/list" class="btn_link">브오디홈</a>-->
						</div>
						<ul>
							<li><a href="/Talent/Detail/7624">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/b79d4954df95b35271d7116540336f22ab0e7d38.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b79d4954df95b35271d7116540336f22ab0e7d38.png&quot;);">
									</div>
									<div class="text_box">
										<h3 class="talent_title">실무에 가장 많이 쓰이는 PPT 디자인</h3>
										<div class="talent_info">
											<span class="user"><em>6,493명</em>이 찜했습니다!</span> <span
												class="average">4.9(347)</span>
										</div>
									</div>
							</a> <!-- <p class="earlybird">얼리버드 마감임박!</p> --></li>
							<li><a href="/Talent/Detail/37128">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/b07c81dbc82e5b5bb7ee58383e6e9a7f59e9117d.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b07c81dbc82e5b5bb7ee58383e6e9a7f59e9117d.png&quot;);">
									</div>
									<div class="text_box">
										<h3 class="talent_title">실무에 진짜 필요한 엑셀 노하우</h3>
										<div class="talent_info">
											<span class="user"><em>10,515명</em>이 찜했습니다!</span> <span
												class="average">4.9(568)</span>
										</div>
									</div>
							</a> <!-- <p class="earlybird">얼리버드 마감임박!</p> --></li>
							<li><a href="/Talent/Detail/40880">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/941d3e2967a1ac6840458355beb909cfd2282113.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/941d3e2967a1ac6840458355beb909cfd2282113.png&quot;);">
									</div>
									<div class="text_box">
										<h3 class="talent_title">투깝스 보컬의 정석 숨만 잘 쉬어도 고음 완성</h3>
										<div class="talent_info">
											<span class="user"><em>838명</em>이 찜했습니다!</span> <span
												class="average">5(82)</span>
										</div>
									</div>
							</a> <!-- <p class="earlybird">얼리버드 마감임박!</p> --></li>
							<li><a href="/Talent/Detail/42555">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/20d71f73087f7040b3429db9864cdf1164bbac1e.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/20d71f73087f7040b3429db9864cdf1164bbac1e.png&quot;);">
									</div>
									<div class="text_box">
										<h3 class="talent_title">150만원으로 30억을 만들어낸 비트코인 차트 분석의 기술</h3>
										<div class="talent_info">
											<span class="user"><em>605명</em>이 찜했습니다!</span> <span
												class="average">4.9(46)</span>
										</div>
									</div>
							</a> <!-- <p class="earlybird">얼리버드 마감임박!</p> --></li>
							<li><a href="/Talent/Detail/29848">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/s_174f25e8ef11cf06cfa4f5cb699b1e2659e52292.jpeg"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/s_174f25e8ef11cf06cfa4f5cb699b1e2659e52292.jpeg&quot;);">
									</div>
									<div class="text_box">
										<h3 class="talent_title">21년 최고매출, 22년 최다판매 친절한 쁨선생 케이팝</h3>
										<div class="talent_info">
											<span class="user"><em>2,703명</em>이 찜했습니다!</span> <span
												class="average">5(253)</span>
										</div>
									</div>
							</a> <!-- <p class="earlybird">얼리버드 마감임박!</p> --></li>

						</ul>
					</div>
					<!-- // ad_vod -->
					<!-- ad_app -->
					<div class="ad_app">
						<h2 class="logo">
							<img
								src="//front-img.taling.me/Content/app3/img/logo/app-logo@2x.png"
								alt="하루">
						</h2>
						<h3>언제 어디서나 하루하기!</h3>
						<a href="//play.google.com/store/apps/details?id=com.taling"
							target="_blank"> <img
							src="//front-img.taling.me/Content/app3/img/sns/sns-googleplay@2x.png"
							alt="ANDROID APP ON Google Play">
						</a> <a
							href="//apps.apple.com/kr/app/%ED%83%88%EC%9E%89-taling/id1153218962?l=en"
							target="_blank"> <img
							src="//front-img.taling.me/Content/app3/img/sns/sns-appstore@2x.png"
							alt="Download on th App Store">
						</a>
					</div>
					<!-- // ad_app -->
				</div>
			</section>
			<!-- // column_right -->
		</div>
	</main>
	<script>
		new Vue({
			el : '.all_category',
			data : {
				cate_list : [],
				detail_cate_list : []
			},
			mounted : function() {
				let _this = this;
				axios.get("http://localhost/web/class/class_cate_vue.do").then(
						function(response) {
							console.log(response.data)
							_this.cate_list = response.data
						})
			},
			methods : {
				onMouseOver : function(cateno) {
					let _this = this;
					axios.get(
							"http://localhost/web/class/class_detail_cate_vue.do?cateno="
									+ cateno).then(function(response) {
						console.log(response.data)
						_this.detail_cate_list = response.data
					})
				}

			}
		})
	</script>
</body>
</html>