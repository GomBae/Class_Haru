<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<li class="depth1">실무·취업·자기계발
					<div class="sub_content">
						<ul>
							<li class="depth2"><a
								href="../class/class_list.do?cateno=1&detail_cateno=1">필수역량</a></li>
							<li class="depth2"><a href="/Home/Search/?cateMain=45">자기계발</a></li>
							<li class="depth2"><a href="/Home/Search/?cateMain=47">취업·이직</a></li>
							<li class="depth2"><a href="/Home/Search/?cateMain=43">직무역량</a></li>
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
					<li class="swiper-slide swiper-slide-duplicate-active"
						data-swiper-slide-index="0"
						style="width: 880px; opacity: 1; transform: translate3d(-880px, 0px, 0px); transition-duration: 0ms;">
						<a href="#" onclick="traceClick('mainTopBanner', 263);"> <img
							class="img"
							src="https://img.taling.me/Content/Uploads/Images/6cc03f984146702e93d24606dd9cbf83dbc8ed10.png"
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
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
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
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51237">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/5f34cfb455b7e85a2e5179dff2c2ca672df2687f.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/5f34cfb455b7e85a2e5179dff2c2ca672df2687f.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">챗봇 연구원이 설명하는 누구나 ChatGPT 응용하기</h3>
											<p class="cate_tutor">
												<span class="name">김진원 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">19,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">6</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													2건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51237);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51164">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/6fd804b681526cfc543622d4d5f2d528b6aca7cf.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/6fd804b681526cfc543622d4d5f2d528b6aca7cf.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">ChatGPT 재테크 비서로 고용하기</h3>
											<p class="cate_tutor">
												<span class="name">권혁민 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51164);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50511">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/78731763907fdf511180664b9d1d65bd589c6ec4.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/78731763907fdf511180664b9d1d65bd589c6ec4.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">ChatGPT 이용자 가이드, AI 커뮤니케이션의 길</h3>
											<p class="cate_tutor">
												<span class="name">최동녘 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">28</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50511);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50732">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/097a98f330d3f9d322f9a4011d23ef7d1d095be1.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/097a98f330d3f9d322f9a4011d23ef7d1d095be1.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">2023년, AI로 돈을 버는 13가지 방법</h3>
											<p class="cate_tutor">
												<span class="name">신비한 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">19,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">24</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50732);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50562">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/dea9239ce81a3d93cccb82770b6cf6dbdc9ccd9e.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/dea9239ce81a3d93cccb82770b6cf6dbdc9ccd9e.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">ChatGPT 원클릭 자동 포스팅 구축하기 AI부업</h3>
											<p class="cate_tutor">
												<span class="name">원어라운드 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">129,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">46</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50562);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50939">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/1c7c8870ff72ca7bedaf3ae7f6dcd9c9f340e5bd.jpeg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/1c7c8870ff72ca7bedaf3ae7f6dcd9c9f340e5bd.jpeg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">Chat GPT 한권으로 끝내는 수익화 방법</h3>
											<p class="cate_tutor">
												<span class="name">블랙홀 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">99,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">7</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50939);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51163">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/74ea1dffb2794a5568fbd5c437c048f20ac844f0.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/74ea1dffb2794a5568fbd5c437c048f20ac844f0.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">ChatGPT 마스터링 북, 역대급 활용 방법과 수익화</h3>
											<p class="cate_tutor">
												<span class="name">최우철 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">49,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51163);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51042">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/fa5280dab412cf345558ae8f5eef905f633b06fa.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/fa5280dab412cf345558ae8f5eef905f633b06fa.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">ChatGPT로 인공지능 텍스트 분류기 통과하기</h3>
											<p class="cate_tutor">
												<span class="name">김정환 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51042);"></button></li>
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
								<li class="swiper-slide swiper-slide-active"
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
								<li class="swiper-slide swiper-slide-next"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/whitepaper___/222933849342"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/f6d53d810a96a4e1d852d8c0a040606bfc793724.png"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 영어로드맵</span>
											<p class="title">내년에는 나 정말 영어 제대로 할거야</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/803gom/222901631302"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/d82034efcc7b85403317c025754c85567a1b3530.jpg"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 부동산경매</span>
											<p class="title">500만원만 있으면 건물주가 될 수 있다고?</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/gof3447/222946336702"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/ccf1df474e362a7a92f6c04d2e78eff4ae76e24b.jpg"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 원목도마</span>
											<p class="title">남편과 안주 도마 직접 만들기</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/gjtjdnjs/222422701210"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/62c2761b07711e4c18554d6dcf32c4e398035592.jpg"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 셀프경영</span>
											<p class="title">매번 실패하던 새해 목표 성공하는 비법</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/taling_me/222941390059"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/768d8b3bdbe4dfbbe39b5077c81a5c8f2b562e0d.png"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 영어발음</span>
											<p class="title">영어는 '앙' 발음이 되냐 안 되냐의 차이</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/gem-star/222939795462"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/13b12e6a82ec02691e6ad9118492fec781aa7cd2.png"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 사주운세</span>
											<p class="title">친구가 완전 잘 맞는다고 해서 본 사주 후기</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/taling_me/222935844158"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/566218f0b27e9fb588b67b0bf9b7c67ef93c23e3.jpg"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 커플댄스</span>
											<p class="title">저는 그저 여자친구를 사랑했을 뿐입니다</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/seoaa05/222616858760"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/d6b8d09e14366b536717bf478a72a955794e7dc1.jpg"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 완강후기</span>
											<p class="title">영화계 찐 현장 이야기에 대하여</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="https://blog.naver.com/taling_me/222913853620"
									class="content_item"> <img
										src="https://img.taling.me/Content/Uploads/Images/cd78ce38ea87cc81d0088b6fda37b7679b521bee.jpg"
										alt="" style="height: 181px; margin: auto auto;">
										<div class="content_text">
											<span class="hashtag"># 무료부트캠프</span>
											<p class="title">새벽 3시에 수영하는 사람 본 적 있어요?</p>
										</div>
								</a></li>
								<li class="swiper-slide"
									style="width: 322px; margin-right: 16px;"><a
									href="/Home/Content/"> <img
										src="https://front-img.taling.me/Content/app3/img/banner/PC-Contents_Main_more.png"
										alt="더보기">
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
						<h2 class="main_title">⭐ 모두 무료! 0원 VOD가 한 곳에! ⭐</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a
									href="/vod/view/35015">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Images/10d04018b2c7b41a82d4c3c633e4c234d9a395bd.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/10d04018b2c7b41a82d4c3c633e4c234d9a395bd.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge vod original ">VOD</span>
											</div>
											<h3 class="talent_title">엔스케이프로 파노라마 VR 이미지 만들기</h3>
											<p class="cate_tutor">
												<span class="name">신기연 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">0원</span>
												<del class="origin_price">4,000원</del>
												<span class="sale">100%</span>
											</p>
											<div class="talent_info">
												<span class="user">87</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													5건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,35015);"></button></li>
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a
									href="/vod/view/34374">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Images/75b222a09ce9e22dfe0d164b4a63fc5a88d903c0.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/75b222a09ce9e22dfe0d164b4a63fc5a88d903c0.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge vod original ">VOD</span>
											</div>
											<h3 class="talent_title">취업에 필수! 포트폴리오 10분만에 노션으로 만들기</h3>
											<p class="cate_tutor">
												<span class="name">제레미 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">0원</span>
											</p>
											<div class="talent_info">
												<span class="user">672</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													17건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,34374);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/vod/view/34931">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Images/1f8fb3935fc6ab3dbb23b0f6f702fc234bc2421f.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/1f8fb3935fc6ab3dbb23b0f6f702fc234bc2421f.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge vod ">VOD</span>
											</div>
											<h3 class="talent_title">마케터&amp;비개발자를 위한 GA4 미니 클래스</h3>
											<p class="cate_tutor">
												<span class="name">Grace 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">0원</span>
												<del class="origin_price">4,000원</del>
												<span class="sale">100%</span>
											</p>
											<div class="talent_info">
												<span class="user">260</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													6건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,34931);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/vod/view/35279">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Images/b6f421c209cffee982292ae14890aa8501bf41cd.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b6f421c209cffee982292ae14890aa8501bf41cd.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge vod original ">VOD</span>
											</div>
											<h3 class="talent_title">퍼스널 브랜딩을 위한 SNS 콘텐츠 제작 노하우</h3>
											<p class="cate_tutor">
												<span class="name">학영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">0원</span>
											</p>
											<div class="talent_info">
												<span class="user">465</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													18건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,35279);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/vod/view/39910">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Images/f751e30c61b31ef9e9b63e0b59537904e22e5697.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/f751e30c61b31ef9e9b63e0b59537904e22e5697.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge vod original ">VOD</span>
											</div>
											<h3 class="talent_title">매일 가고 싶은 호텔 인테리어의 비밀</h3>
											<p class="cate_tutor">
												<span class="name">최유정 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">0원</span>
											</p>
											<div class="talent_info">
												<span class="user">191</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													21건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,39910);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/vod/view/35323">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Images/41fbf4850e0066f3c3558437706213038ef08ba5.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/41fbf4850e0066f3c3558437706213038ef08ba5.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge vod original ">VOD</span>
											</div>
											<h3 class="talent_title">예제로 배우는 스케치업! 식물소스 활용하기</h3>
											<p class="cate_tutor">
												<span class="name">고혜진 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">0원</span>
												<del class="origin_price">4,000원</del>
												<span class="sale">100%</span>
											</p>
											<div class="talent_info">
												<span class="user">113</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													10건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,35323);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/vod/view/36694">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Images/b8fd2c6e36ed2c459171ce1afc7d7f1d98e97626.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b8fd2c6e36ed2c459171ce1afc7d7f1d98e97626.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge vod original ">VOD</span>
											</div>
											<h3 class="talent_title">30분 만에 확인하는, 내 사주가 부자가 될 사주인가</h3>
											<p class="cate_tutor">
												<span class="name">운하 변다운 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">0원</span>
												<del class="origin_price">4,000원</del>
												<span class="sale">100%</span>
											</p>
											<div class="talent_info">
												<span class="user">253</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													11건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,36694);"></button></li>
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
					<div class="talent_box">
						<h2 class="main_title">리뷰 100개, 평점 4.9 이상 명품클래스✔</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/16353">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/c1aec094d23ca5a1419063640072cba3f58f5a1b.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/c1aec094d23ca5a1419063640072cba3f58f5a1b.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
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
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/27746">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/6fb8f07385080b7b0334f39a51d59c461eb6937d.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/6fb8f07385080b7b0334f39a51d59c461eb6937d.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge recording">녹화영상</span>
											</div>
											<h3 class="talent_title">[수강료 100% 환급] 하루 1시간 야근해서 연봉
												1200만원 손쉽게 올리기!! 해외구매대행 구매대행 부업 투잡</h3>
											<p class="cate_tutor">
												<span class="name">이팬치 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">29,900원</span>
											</p>
											<div class="talent_info">
												<span class="user">2367</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,27746);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/12005">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/7d1a7536b7ad529a551f73497ba38d78fbc3a36f.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/7d1a7536b7ad529a551f73497ba38d78fbc3a36f.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">잠실</span>
											</div>
											<h3 class="talent_title">술술 마시며 쉽게 그리는 아크릴화</h3>
											<p class="cate_tutor">
												<span class="name">정예슬 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3768</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,12005);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/7877">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/a43710eec8e58dbb43f96f25a4bb990811df3efc.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/a43710eec8e58dbb43f96f25a4bb990811df3efc.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">에어비앤비, 회사 다녀도 바로 시작하는 Airbnb</h3>
											<p class="cate_tutor">
												<span class="name">Rollrings 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">65,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2355</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,7877);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/10576">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/9c3c3bcc6c6e4774f9ed0be39802979951cc7dcf.jpeg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/9c3c3bcc6c6e4774f9ed0be39802979951cc7dcf.jpeg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">사당</span>
											</div>
											<h3 class="talent_title">서울, 친절하고 쉽게 알려주는 라니쌤과 영상 남기기</h3>
											<p class="cate_tutor">
												<span class="name">라니 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">27,900원</span>
											</p>
											<div class="talent_info">
												<span class="user">4003</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,10576);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/7522">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/d5bde8292496f2d16569c02ee50c357d5a00977c.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/d5bde8292496f2d16569c02ee50c357d5a00977c.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">[리뷰확인必] 엉망인 시간관리! 이제는 그만! 방법은?</h3>
											<p class="cate_tutor">
												<span class="name">이용각 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">125,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2237</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,7522);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/6285">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/6e8c82805b08062e73d237f775c90c5326403497.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/6e8c82805b08062e73d237f775c90c5326403497.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">[원데이] 3시간만에 끝내는 미드 쉐도잉 영어회화
												공부법!</h3>
											<p class="cate_tutor">
												<span class="name">손성은 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">36,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">6583</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,6285);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/3319">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/5939af753afb6928c9db7f594bce5e8a1112bc54.jpeg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/5939af753afb6928c9db7f594bce5e8a1112bc54.jpeg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">사당</span>
											</div>
											<h3 class="talent_title">[1:1 메이크업] 현직 아티스트와 나만의 스타일
												찾기+눈썹 맞춤 교정</h3>
											<p class="cate_tutor">
												<span class="name">이유 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">199,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">5399</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,3319);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/29848">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/174f25e8ef11cf06cfa4f5cb699b1e2659e52292.jpeg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/174f25e8ef11cf06cfa4f5cb699b1e2659e52292.jpeg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">사당</span>
											</div>
											<h3 class="talent_title">21년 최고매출, 22년 최다판매 친절한 쁨선생 케이팝</h3>
											<p class="cate_tutor">
												<span class="name">이기쁨 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">25,900원</span>
											</p>
											<div class="talent_info">
												<span class="user">2703</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,29848);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/4617">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/4b5ec67b7f5838f8a3cb8e700634f2eb51da74f8.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">[원데이/음성검사] 더 이상 잘못된 발성은 그만!</h3>
											<p class="cate_tutor">
												<span class="name">김재호 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">49,500원</span>
											</p>
											<div class="talent_info">
												<span class="user">3234</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,4617);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/2821">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/c63a2cae1d8d75652e9af881a5bd3e94853cfb12.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신사</span>
											</div>
											<h3 class="talent_title">완쟌기초, 프리미어만으로 꽉찬 4회 완성</h3>
											<p class="cate_tutor">
												<span class="name">원지한 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">240,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1536</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													99건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,2821);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/16100">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/5b2dfb93d76938f993667932786264a85878e9d2.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">중구</span>
											</div>
											<h3 class="talent_title">+사투리를 쓴다면+ 사투리로 하는 연극배우의 마피아게임</h3>
											<p class="cate_tutor">
												<span class="name">안태현 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">39,999원</span>
											</p>
											<div class="talent_info">
												<span class="user">1797</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,16100);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/11916">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/c2fb816fe6a5564c8020d5a14bcc8faa0a7f1d9d.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">데이터 분석가에게 똑똑하게 배우는 엑셀 원데이 클래스</h3>
											<p class="cate_tutor">
												<span class="name">장혜민 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">48,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2145</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,11916);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/1195">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1cbdc51151393e56d731a8e1f71554cf637b55e3.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">국내파 영어회화 5단계 독학법</h3>
											<p class="cate_tutor">
												<span class="name">심규열 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2835</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,1195);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/14945">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/18741858c681a4e12bc758e6356134d8fad2b1f2.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">쌀 팔다 6개월만에 개발자 된 비법</h3>
											<p class="cate_tutor">
												<span class="name">Byungwook Kim 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">837</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,14945);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/2761">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/2b50bdbb3f40c558d96472a7465670f491b8b307.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">사당</span>
											</div>
											<h3 class="talent_title">사당영상맛집K-POP 영상남기자 뉴진스쿠키+OMG</h3>
											<p class="cate_tutor">
												<span class="name">ddoEdo 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">32,500원</span>
											</p>
											<div class="talent_info">
												<span class="user">4992</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,2761);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/1967">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/103458a20fe2db28a09bce98976b72230d103559.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">개강특가 +한방에 끝내는 건축디자인 올인원 클래스</h3>
											<p class="cate_tutor">
												<span class="name">신기연 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">240,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2170</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,1967);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/7664">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/530e16b866d633da094a456f4315975ab6311138.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">사당</span>
											</div>
											<h3 class="talent_title">원데이 아이돌 댄스 클래스 - 영상 프로젝트 클래스</h3>
											<p class="cate_tutor">
												<span class="name">이엄지 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">27,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2198</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,7664);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/874">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/08e69022bf15c96cf4c2e366a6c2c68433c23ee9.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">잠실</span>
											</div>
											<h3 class="talent_title">[아율답다] 자존감이 두배 올라가는 메이크업</h3>
											<p class="cate_tutor">
												<span class="name">홍아율 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">99,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">9217</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,874);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/9264">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/8db12b75834b43242c022f332c75837cefe8a9ed.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">안양</span>
											</div>
											<h3 class="talent_title">[1:1,고음,원데이] 편하게 노래하기, 어렵지 않아요</h3>
											<p class="cate_tutor">
												<span class="name">정재은 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">180,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1707</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,9264);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/6270">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/670f227a1d998a76939e937b269a9b7b58b94a1b.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">종로</span>
											</div>
											<h3 class="talent_title">엑셀 함수반: 키보드로만 엑셀하자(평생 A/S)</h3>
											<p class="cate_tutor">
												<span class="name">박경영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">39,600원</span>
											</p>
											<div class="talent_info">
												<span class="user">2305</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,6270);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/11607">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/0313e76e379d207adf4b3f50851481c08d1f46e0.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">원데이로 끝내는 온라인MD실무와 이직전략</h3>
											<p class="cate_tutor">
												<span class="name">김용빈 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">44,700원</span>
											</p>
											<div class="talent_info">
												<span class="user">1746</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,11607);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/25357">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1398f171f338374460b957b5e945e7456e4bbe96.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">성수</span>
											</div>
											<h3 class="talent_title">하루 만에 끝내는 스마트폰 사진 촬영과 보정법</h3>
											<p class="cate_tutor">
												<span class="name">유태환 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">49,900원</span>
											</p>
											<div class="talent_info">
												<span class="user">1353</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,25357);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/5171">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/584a391a61b2d9d5e7cdda8cf36d0148dd3b6f71.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">[심화과정] 습관 전문가의 1대1 맞춤형 습관 디자인</h3>
											<p class="cate_tutor">
												<span class="name">김용환 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">99,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1925</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,5171);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/24589">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/56e9d0d56e723fbc239d33de99f86ec14187ec27.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge recording">녹화영상</span>
											</div>
											<h3 class="talent_title">구매대행과 수입을 한방에. 스마트스토어 부업 투잡</h3>
											<p class="cate_tutor">
												<span class="name">임호 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">29,900원</span>
											</p>
											<div class="talent_info">
												<span class="user">2340</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,24589);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/14910">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/823e4fa091eb0fdfa1456f974d6bb5f6ca9cd241.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">디테일 가득 댄스수업 omg 라이징 어텐션 애프터라이크</h3>
											<p class="cate_tutor">
												<span class="name">양보윤 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">39,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2678</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,14910);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/22381">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/aa1d0feb85926253cb4d24ea46f3184f504a9900.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">잠실새내</span>
											</div>
											<h3 class="talent_title">★현직 스타일리스트와 함께하는 1:1 개인 패션 스타일
												컨설팅&amp;동행쇼핑/방문 스타일링</h3>
											<p class="cate_tutor">
												<span class="name">레인 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">160,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1531</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,22381);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/3439">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/d21c12013c4c3a6c3b2fdbd37ef08811ab526ca4.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신사</span>
											</div>
											<h3 class="talent_title">원데이OK. 현 대학교수,오디션프로 13년차 보컬 튜터</h3>
											<p class="cate_tutor">
												<span class="name">유지수 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">210,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1526</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,3439);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/15608">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/a51933859c90225fd9734c0b9da323e778961691.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">성환김 PT . 피티 . 헬스 . 다이어트 . 바프</h3>
											<p class="cate_tutor">
												<span class="name">성환김 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1601</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,15608);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/8264">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/84901953e3f5896c24575e80ed30c3adda49c3fe.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">용산</span>
											</div>
											<h3 class="talent_title">나만의 매력에 가치를 더 하는 퍼스널컬러 컨설팅</h3>
											<p class="cate_tutor">
												<span class="name">이미지 케렌시아 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">88,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2982</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,8264);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/11690">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/ddfdfd9011db397202f0d7dbd77f7362c9ee7b13.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">3월개강온라인,소수정원+말하기,토론으로 체화하자</h3>
											<p class="cate_tutor">
												<span class="name">토옹 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">70,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1719</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,11690);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/6996">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/252a634582d3a9770d1af1698b7a63245dafb99c.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">72시 에어비앤비 게스트하우스 안정적 수익창출 노하우</h3>
											<p class="cate_tutor">
												<span class="name">EVA 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">75,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1120</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													99건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,6996);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/4064">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/fbc2006f642e2edc4ac14177ad78bf93f8a885d7.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">온라인 LIVE</span>
											</div>
											<h3 class="talent_title">[원데이/1:1/60분] 목소리도 스펙이다! 자존감을
												높여주는 나만의 목소리 찾기</h3>
											<p class="cate_tutor">
												<span class="name">황은지 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">60,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3516</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,4064);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/5227">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/c1f9a300c9e587c8de4bf44b3bb1b0de96bc2989.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">잠실</span>
											</div>
											<h3 class="talent_title">발성 완전 정복 프로젝트</h3>
											<p class="cate_tutor">
												<span class="name">전하울 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">57,500원</span>
											</p>
											<div class="talent_info">
												<span class="user">1720</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,5227);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/26352">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/961b5223e6ceda565551d1d72b09232689b10ddc.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">재무설계,저축,재테크,투자,주식에 대해 알려드립니다.</h3>
											<p class="cate_tutor">
												<span class="name">나종길 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">15,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1175</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,26352);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/13191">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/abec305be6fa814fd6268f43cb35e12cfcd6b646.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">종로</span>
											</div>
											<h3 class="talent_title">♥모델체험♥ 헐! 이게 저라구요? 카메라가 자신있어지는
												인생샷 클래스/#퍼스널_앵글_컨설팅</h3>
											<p class="cate_tutor">
												<span class="name">박형원 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">70,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4792</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,13191);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/18571">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/96020ba255588b9749fd2a4e2ab6c4e5b2386f7e.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">성수</span>
											</div>
											<h3 class="talent_title">[원데이] 인스타그램 감성? 황금비율 사진 + 보정
												레시피! 내 피드도 분위기 있게 변신!</h3>
											<p class="cate_tutor">
												<span class="name">나화 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">87,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4005</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,18571);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/18707">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/aa1305376e418f2cb6a1ee610484becb8482faa4.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">건대</span>
											</div>
											<h3 class="talent_title">유튜브, 인스타에 적용할 수 있는 SM, JYP 등
												엔터들의 연예인 퍼스널 브랜딩 전략</h3>
											<p class="cate_tutor">
												<span class="name">정(鄭) creative 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">108,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1850</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,18707);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/4275">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/632b2fd14219021a2351a394e5f36575734064eb.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">[1:1] 60분 완성♥아나운서가 알려주는 메이크업</h3>
											<p class="cate_tutor">
												<span class="name">박시영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">75,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3518</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,4275);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/11454">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/12c6b3132a392e3d61b2c5d585e81fa5808cc449.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">온라인 LIVE</span>
											</div>
											<h3 class="talent_title">단순진로검사 No! [300만명 데이터기반] 나에게 딱
												맞는 직업찾는 방법 (성격, 취업, 직무, 이직, 퇴사, 창업, 투잡 상담)</h3>
											<p class="cate_tutor">
												<span class="name">백충호 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">88,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1893</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,11454);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/16693">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/53764b678e8fc6ca52066a319c680b62b44189e7.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">패션전공 국가공인 컬러리스트와 함께하는 퍼스널컬러,
												스타일링 컨설팅</h3>
											<p class="cate_tutor">
												<span class="name">세라 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">69,800원</span>
											</p>
											<div class="talent_info">
												<span class="user">2056</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,16693);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/3699">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/6cf1212390873ade02a4235d53cb7c9f961adec4.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">[하루 최초 무의식 분석상담] 10회차의 효과를 단
												한번의 상담으로!</h3>
											<p class="cate_tutor">
												<span class="name">이월쌤 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">120,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3390</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,3699);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/20517">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/4c3d43c30aa68e73ff7d4cb5990f3024ba91f79a.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">건대</span>
											</div>
											<h3 class="talent_title">+할인쿠폰+봉고데기+헤어샵 한번 갈 돈으로 평생 써먹자</h3>
											<p class="cate_tutor">
												<span class="name">스윗비 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">45,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1380</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,20517);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/15603">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1c7b3898b48a5ff4701c738757b89c7dd90ab76a.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">온라인 LIVE</span>
											</div>
											<h3 class="talent_title">[원데이] 월급학개론(금융), 똑똑한 투자(주식)와
												저축(돈관리)는 이제 필수시대 :)</h3>
											<p class="cate_tutor">
												<span class="name">배모건 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1867</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,15603);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/3750">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/594ebb4337be5a10b0f17fae18bee195fa25dd9f.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">(✿5주과정✿)나만의 음색을 찾고 내 목소리로 노래하자</h3>
											<p class="cate_tutor">
												<span class="name">엄소정 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">190,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4119</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,3750);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/7413">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/b2fe1638e92d9ac856afe8676c7799934b6361bb.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">영등포</span>
											</div>
											<h3 class="talent_title">리뷰1위-2월반값할인-고액연봉 NO.1제일기획PPT수업</h3>
											<p class="cate_tutor">
												<span class="name">박선생 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">36,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1915</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,7413);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/1168">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/b3ccc5acefeaad15d6658eb22e074ce886cc34c9.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">온+오프라인,영상제공,포토샵+일러스트 완벽 알짜 수업</h3>
											<p class="cate_tutor">
												<span class="name">하디 HADY 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">176,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4030</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,1168);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/3922">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/5be2ef4150fd7ff6bb0292d59a1b912a162cd8b5.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">영등포</span>
											</div>
											<h3 class="talent_title">하루 최다 참여,리뷰 수업 - 미디의 모든것 -</h3>
											<p class="cate_tutor">
												<span class="name">조동근 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">250,400원</span>
											</p>
											<div class="talent_info">
												<span class="user">1866</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,3922);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/17815">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/19068401f0bbf0326319900de4b15e2ad6e6699e.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge recording">녹화영상</span>
											</div>
											<h3 class="talent_title">업계정점튜터, 쿠팡파트너스+ 제휴마케팅 월100 만들기</h3>
											<p class="cate_tutor">
												<span class="name">서동민 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">160,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2592</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,17815);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/15378">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/99e89d65e4acf8e86806a38f44bd8da21b49fcef.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">1대1 개인 레슨 - 현직MD가 알려주는 실무형 엑셀</h3>
											<p class="cate_tutor">
												<span class="name">프로 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">46,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3502</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,15378);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/4516">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/fed642e1a27a687d922524dd141d737a2b00fedf.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">뭘 바르냐가 아니라, 어떻게-바르냐의 차이.</h3>
											<p class="cate_tutor">
												<span class="name">문예람 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">330,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">10426</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,4516);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/20759">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/e68d2e61464a56eb6b3100095f8f6119a9064f2b.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">만족도1위, 하루30분, 블로그로 월100만원 만들기</h3>
											<p class="cate_tutor">
												<span class="name">마카롱 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">390,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1610</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,20759);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/24016">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/409c70fe74b14d1ced3a760039d7ab5177b905fa.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">[1:1포트폴리오] 중견,대기업합격 사례 다수!온라인
												맞춤형 포폴디벨롭</h3>
											<p class="cate_tutor">
												<span class="name">디어퍼 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">396,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">796</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,24016);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/1136">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/73d5038a10e8934a3a073de01a6a494e0b410916.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">일러스트+포토샵, 디자이너처럼 제대로. 베이직 오프라인</h3>
											<p class="cate_tutor">
												<span class="name">Min 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">345,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4122</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,1136);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/1767">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/f83a537dfdbdafcaefecddc3b00c726b70753d9f.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">사당</span>
											</div>
											<h3 class="talent_title">+압도적재등록률+프로모션맛집+리뷰가증명하는6년차튜터+</h3>
											<p class="cate_tutor">
												<span class="name">로미 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">38,500원</span>
											</p>
											<div class="talent_info">
												<span class="user">3947</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,1767);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/9078">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/ff40cfceb219d6bd06f4e2d5d45479f3665446b1.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">직장인 인생강의- 실전 보고서 기획서 작성과 보고 기법</h3>
											<p class="cate_tutor">
												<span class="name">Marcus J Jeong 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">240,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1778</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,9078);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/23650">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/06e56accfa2b51a685211c63e2962405514d6665.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
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
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/9057">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/f283beaf82b4b804eadb94bc334df8efb85fce6d.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">튜터들의 튜터, 가수출신 상위 튜터에게 배우는 보컬레슨</h3>
											<p class="cate_tutor">
												<span class="name">강진아 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">291,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2186</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,9057);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/19997">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/338cb5deebe4ffb5796dd2e24614fefda1a87ae9.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신림</span>
											</div>
											<h3 class="talent_title">-락윗유- 보이그룹 댄스 레전드</h3>
											<p class="cate_tutor">
												<span class="name">던 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">27,500원</span>
											</p>
											<div class="talent_info">
												<span class="user">1035</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,19997);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/10985">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/154944f61b5899802cd3a3aa5e0ecd068ddbf691.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">마포</span>
											</div>
											<h3 class="talent_title">[온,오프라인 가능] 고민은 전문 라이프 코치와 함께
												#진로코칭#그림심리#심리상담#고민#</h3>
											<p class="cate_tutor">
												<span class="name">한은자 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">55,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1990</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,10985);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/102">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/c1279b07f432fb11f6c10cd2dcbf470c96136ee4.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">종로</span>
											</div>
											<h3 class="talent_title">엑셀 기본반: 키보드로만 엑셀하자(평생 A/S)</h3>
											<p class="cate_tutor">
												<span class="name">박경영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">39,600원</span>
											</p>
											<div class="talent_info">
												<span class="user">5915</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,102);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/4466">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/e2246f75b1e11892951d7fa65d2a75e18e21fa64.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">4월반 모집 중. 파이썬 강의는 이걸로 끝.</h3>
											<p class="cate_tutor">
												<span class="name">손원준 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">298,992원</span>
											</p>
											<div class="talent_info">
												<span class="user">2191</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,4466);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/612">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/84501e8104002250da8ae8cb6d832af3454ce1de.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">한 번만 제대로 배우면 되는 SNPE</h3>
											<p class="cate_tutor">
												<span class="name">정지원 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3312</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,612);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/27482">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/f6f9d9f8a33097897e0c4292b58ce1644ee85cf5.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">중구</span>
											</div>
											<h3 class="talent_title">3월 재오픈+-+야별도주, 서울에서 밤에 별 보러 가자</h3>
											<p class="cate_tutor">
												<span class="name">최창대 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">33,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2368</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,27482);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/17187">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/ccce0531222711dc3cd0673fe592f95475c84a3a.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신사</span>
											</div>
											<h3 class="talent_title">▶1Day◀스마트폰으로 나 혼자 유튜브 콘텐츠
												제작하기!(기획+촬영+편집)교재제공!</h3>
											<p class="cate_tutor">
												<span class="name">박민규 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">120,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1640</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,17187);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/2949">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/6982334808a05b449a04a4de04eaab235897665d.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">세상에 몸치는 없다-테디베어,파피,뉴진스,캔디등</h3>
											<p class="cate_tutor">
												<span class="name">최수연 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">38,400원</span>
											</p>
											<div class="talent_info">
												<span class="user">7868</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,2949);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/6177">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/55bc3c5dc3367c46bab1b7ce8d1601f80e3063d5.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">복습자료제공, 직장인이 꼭 알아야 하는 생존엑셀</h3>
											<p class="cate_tutor">
												<span class="name">이재형 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">70,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4719</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,6177);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/25435">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/d01aa51a0b7ac957c1de064f10980f62c300ff97.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">-3월NEW-스마트폰 사진 촬영법,색감보정 배우기</h3>
											<p class="cate_tutor">
												<span class="name">금소니 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">66,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1904</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,25435);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/7282">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1a17df1196800750b9a65f3ac5e89e78810214fd.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">잠실</span>
											</div>
											<h3 class="talent_title">[원데이 영상편집] 100만 유튜버, 나도 할 수 있다!</h3>
											<p class="cate_tutor">
												<span class="name">dali 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">100,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1569</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,7282);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/11140">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/e527f47b35a208a3f8a30ecebd20626be78e3bb1.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">가장 쉽게 배우는 스마트스토어</h3>
											<p class="cate_tutor">
												<span class="name">최은남 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1948</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,11140);"></button></li>
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
					<div class="talent_box">
						<h2 class="main_title">신규 오픈 클래스</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50959">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/7aa701d7c40de60c4ca5f6750bf54b080d86d5c8.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/7aa701d7c40de60c4ca5f6750bf54b080d86d5c8.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">튜터 데뷔하기, +누구나 N잡러-튜터가 될 수 있다</h3>
											<p class="cate_tutor">
												<span class="name">메리미 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">160,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50959);"></button></li>
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51259">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/5f48e5f145010d11c02d9ee76916340c869cf212.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/5f48e5f145010d11c02d9ee76916340c869cf212.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">노는 게 제일 좋은 의지박약들이 여행지에서도 돈 버는법</h3>
											<p class="cate_tutor">
												<span class="name">제니 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">15,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51259);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50446">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/a397b6c7ca216f28013c6502ff9c7bfdd0d42ae6.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/a397b6c7ca216f28013c6502ff9c7bfdd0d42ae6.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">마포</span>
											</div>
											<h3 class="talent_title">웹 퍼블리싱 과외해드립니다</h3>
											<p class="cate_tutor">
												<span class="name">정용호 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">80,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50446);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51245">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/a92623b6f953a2c87ee996f7cd123f8274b28a1b.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/a92623b6f953a2c87ee996f7cd123f8274b28a1b.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">팔리는 나만의 캐릭터 굿즈 만들어 부수입 만들기</h3>
											<p class="cate_tutor">
												<span class="name">정주영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">15,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51245);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51170">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/6dd25a13ddb88f4cf859e783fa34731759a8ba63.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/6dd25a13ddb88f4cf859e783fa34731759a8ba63.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">분당</span>
											</div>
											<h3 class="talent_title">나는 회사 가고, 주식은 엑셀로 자동매매</h3>
											<p class="cate_tutor">
												<span class="name">뉴트(Newt) 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">105,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51170);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50940">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/562a32d262e9f04d9d9ead2ac5d080aad76980ae.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/562a32d262e9f04d9d9ead2ac5d080aad76980ae.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">엄마를 위한 초등바이올린 가이드북</h3>
											<p class="cate_tutor">
												<span class="name">이윤희 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50940);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51237">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/5f34cfb455b7e85a2e5179dff2c2ca672df2687f.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/5f34cfb455b7e85a2e5179dff2c2ca672df2687f.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">챗봇 연구원이 설명하는 누구나 ChatGPT 응용하기</h3>
											<p class="cate_tutor">
												<span class="name">김진원 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">19,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">6</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													2건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51237);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50532">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/069040a845b6d0c514623bff48f4a6d561b374b0.png"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/069040a845b6d0c514623bff48f4a6d561b374b0.png&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">30kg 감량 16년차 유지 호르몬의 노예에서 벗어나기</h3>
											<p class="cate_tutor">
												<span class="name">이동휘 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">49,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50532);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50963">
										<div class="thumb lazyloaded"
											data-bg="//img.taling.me/Content/Uploads/Cover/9b607c173f1e2162317fb6ccd0865c4a4b578817.jpg"
											style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/9b607c173f1e2162317fb6ccd0865c4a4b578817.jpg&quot;);">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">7년차 과일위탁판매 빅파워셀러의 핵심비법과 노하우</h3>
											<p class="cate_tutor">
												<span class="name">과일사랑꾼 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">129,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50963);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51164">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/6fd804b681526cfc543622d4d5f2d528b6aca7cf.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">ChatGPT 재테크 비서로 고용하기</h3>
											<p class="cate_tutor">
												<span class="name">권혁민 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51164);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50910">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/141ecb7fa741542ad8f1cd23407e62640a1af9bb.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">사내강사, 기업강사 되기, 강의 역량 UP</h3>
											<p class="cate_tutor">
												<span class="name">메리미 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">280,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">5</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50910);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50402">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/68a784210665e41bb9b1589bed380685c2b8ea96.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">매출 3배 올리는 상세페이지 기획법</h3>
											<p class="cate_tutor">
												<span class="name">박민지 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">33,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">6</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													1건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50402);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51082">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/0dc957dbc1214a40c25e7a6d5ff074d2cbfde7fa.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">반복되는 폭식증 단번에 끊어낸 방법</h3>
											<p class="cate_tutor">
												<span class="name">10GRAND 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">0</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51082);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50939">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1c7c8870ff72ca7bedaf3ae7f6dcd9c9f340e5bd.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">Chat GPT 한권으로 끝내는 수익화 방법</h3>
											<p class="cate_tutor">
												<span class="name">블랙홀 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">99,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">7</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50939);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51083">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/e1e64f9f31e794ce338a9e4753773ba4a7df3fa3.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">누구든 가능한 월순익 100만원, 스마트스토어 셀러</h3>
											<p class="cate_tutor">
												<span class="name">김주완 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51083);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51293">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1974b94fb662699644c78e4c250aeeb2c2d1ae90.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">수원 광교 보석방향제 + 보석타블렛 원데이클래스</h3>
											<p class="cate_tutor">
												<span class="name">피에트 캔들공방 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">44,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51293);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51181">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/c43f004261adfbc54c1babefaa961544a041eb33.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">건대</span>
											</div>
											<h3 class="talent_title">당신의 말습관 바꿔드리겠습니다 - 진짜 배우 진짜 화술</h3>
											<p class="cate_tutor">
												<span class="name">이인열 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51181);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51087">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/bd28bb1dad673f571ba845596cf779f98044439d.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">절망에서 소망으로의 여정</h3>
											<p class="cate_tutor">
												<span class="name">신경호 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51087);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51112">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/61d1c75dbbbc18092f740b44caa3c3066c4b5d02.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">영등포</span>
											</div>
											<h3 class="talent_title">+원데이 녹음 수업+하루 만에 변할 수 있는 맞춤 레슨</h3>
											<p class="cate_tutor">
												<span class="name">김지수 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">49,500원</span>
											</p>
											<div class="talent_info">
												<span class="user">14</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													5건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51112);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51163">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/74ea1dffb2794a5568fbd5c437c048f20ac844f0.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">ChatGPT 마스터링 북, 역대급 활용 방법과 수익화</h3>
											<p class="cate_tutor">
												<span class="name">최우철 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">49,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51163);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50990">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/4311af4335c5f528e01d0d32a39dc899a5ffabcf.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">누구나 매우 쉽게 입지 보는 법</h3>
											<p class="cate_tutor">
												<span class="name">미르셀 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">15,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">7</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50990);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51309">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/6568d99569c720828b6909ccf27b17dc04b00439.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">리더 재테크 리더답게 재테크</h3>
											<p class="cate_tutor">
												<span class="name">최보규 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51309);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51089">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/f6d72b8e8f9d41e01fc566a33b9160e4c54f22f6.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">건대</span>
											</div>
											<h3 class="talent_title">마음의병 연기로 고쳐보자 - 진짜 배우와 연기로 힐링</h3>
											<p class="cate_tutor">
												<span class="name">이인열 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">10</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51089);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51318">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/68fe8bdce4359ceb38f939eeab680a974cdf6308.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">배달전문점과 음식점 창업 초보들의 비법서 A to Z</h3>
											<p class="cate_tutor">
												<span class="name">ChaCruise 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51318);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51281">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/8739b351cf9cb91c603874bd2b7b60dfd23f1335.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">분당</span>
											</div>
											<h3 class="talent_title">나는 회사 가고, 주식은 엑셀로 자동매매-질문및심화</h3>
											<p class="cate_tutor">
												<span class="name">뉴트(Newt) 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">100,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51281);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51042">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/fa5280dab412cf345558ae8f5eef905f633b06fa.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">ChatGPT로 인공지능 텍스트 분류기 통과하기</h3>
											<p class="cate_tutor">
												<span class="name">김정환 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51042);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51287">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/e42101dbc3595d3bf2bc677f996988585f4d01ee.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">수원 광교 플라워 하바리움 무드등 원데이클래스</h3>
											<p class="cate_tutor">
												<span class="name">피에트 캔들공방 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">35,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51287);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51288">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/60adc7c321c29ba4c94c58a97b1af88a4a89df36.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">수원 광교 젤캔들홀더+티라이트 원데이클래스</h3>
											<p class="cate_tutor">
												<span class="name">피에트 캔들공방 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">50,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51288);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51140">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/4b9cc013522d4ecc8ee5c8d1feae03b12a4d04d8.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">수입의류 쇼핑몰 연 매출 3억 달성한 올인원 노하우</h3>
											<p class="cate_tutor">
												<span class="name">프롬유 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">149,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">6</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51140);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50999">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/e123f7cc1b2249c01b48e66877b4d77bca004749.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">이베이판매 고객대응 상황 별 원어민수준 영어표현</h3>
											<p class="cate_tutor">
												<span class="name">김재준 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">35,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50999);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/40557">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/9a327e8f5a5abffe617152e6f80db90bd68f67a5.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">TSC 가장 쉽고 빠르게</h3>
											<p class="cate_tutor">
												<span class="name">유영재 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">360,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,40557);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51059">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/76d8e736756ded12b33cd4d69c0e625b4559fbae.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">고시원부터 내집마련까지 청약 당첨 후 입주까지 종합안내</h3>
											<p class="cate_tutor">
												<span class="name">Hej,타우리 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51059);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51290">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/becac6e7a40d0b75947911dea2727be1a63822f7.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">수원 광교 메리고캔들+플라워 왁스타블렛 원데이클래스</h3>
											<p class="cate_tutor">
												<span class="name">피에트 캔들공방 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">50,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51290);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51291">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/74dc5bcd2bd7d1c249cab08d29775386c1d4b7df.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">수원 광교 플라워 디퓨저 + 차량용 디퓨저 만들기</h3>
											<p class="cate_tutor">
												<span class="name">피에트 캔들공방 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">39,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51291);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51124">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/18f2179e809aa0b4e44993ea0c16a7e42d198bc4.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">디자이너에게 배우는 동화같은 포토샵 포스터 만들기</h3>
											<p class="cate_tutor">
												<span class="name">박정우 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">250,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51124);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50893">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/8d5d71e12d6cda4c8149d60cfbad198a49cc90ba.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">당신이 알고 싶은 브랜딩의 모든것</h3>
											<p class="cate_tutor">
												<span class="name">신주헌 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">200,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50893);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51134">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/a6e91f9a507e4720cdaa711b0c72e03258b34ad6.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">따라 하면 원고가 완성되는 프레임 글쓰기 61페이지</h3>
											<p class="cate_tutor">
												<span class="name">한호택 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51134);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51338">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/187100afed119ee696dae38de15c2d0a909f1a35.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">고수익 실전경매 사례집풀이</h3>
											<p class="cate_tutor">
												<span class="name">부동산경매전문가 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51338);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51292">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/b82c6b81753727e29ec71a73ce8a50bc8620a699.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">수원 광교 베어브릭, 지방이 석고방향제 만들기</h3>
											<p class="cate_tutor">
												<span class="name">피에트 캔들공방 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">39,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51292);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51273">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/106c67bfa224b2fb7b25a58b1c7ef8ad3eb78e28.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">자소서, PT면접, Resume 공유드립니다</h3>
											<p class="cate_tutor">
												<span class="name">baggan 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51273);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51182">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/bd152f94506349c28ea6c37af7f1164c1fd3dc5d.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">네이버 블로그, 5개월 만에 일 방문 1,000 만들기</h3>
											<p class="cate_tutor">
												<span class="name">밍기뉴 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">54,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">6</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51182);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51156">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/29f69f888edeaca0fe2a66c59675b4c0f857c2e3.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">4주동안 코바늘 왕초보 탈출하기</h3>
											<p class="cate_tutor">
												<span class="name">씨오니 ccioni 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">100,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51156);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50859">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/6bd0fcf5b8bdc97b3bf160c21f63d3b3b352915e.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">유학파.현직대학교수의 보컬트레이닝 받아보세요.</h3>
											<p class="cate_tutor">
												<span class="name">김소영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">200,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50859);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50866">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/526c0e5328d57dd42fcf52d0f947b8db8c01532e.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">두근두근시그널 검증된직장인들의 와인파티</h3>
											<p class="cate_tutor">
												<span class="name">두근두근 유니 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">60,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">7</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50866);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50949">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/ffdc3742b8086dc9077225fdd6983e69e2d7a15c.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">스마트폰 사진 라이트룸 색감보정 강의</h3>
											<p class="cate_tutor">
												<span class="name">위클라우드 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">99,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">7</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50949);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51094">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/44283c0a6d7b503e89d1c8f20bc2718a73271f70.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">25세고졸도 반년만에 해본 월1000만원 노하우</h3>
											<p class="cate_tutor">
												<span class="name">김한솔 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">35,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51094);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51039">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/e5ed92722afcfb304b8419ae1dbb082e6fc6fab4.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">직장인 개미투자자의 평생 주식 투자</h3>
											<p class="cate_tutor">
												<span class="name">톨라니 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">12,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51039);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51176">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/2e461b2ad059342e628864ff27f0c47a0be04f34.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">가족 및 커플을 위한 일요일 와인클래스</h3>
											<p class="cate_tutor">
												<span class="name">신현해 Julio 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">30,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">2</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51176);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50586">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/611909d501d04cfdae6ca1fdd9653653b6e724da.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">미국 교포강사가 진행하는 일대일영어 카톡 수업-총20회</h3>
											<p class="cate_tutor">
												<span class="name">ANGIE 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">100,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">9</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50586);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51266">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/f13cd9bd2c0cc677d4262143e8e53e568df703ff.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">실전에서 바로 활용할 수 있는 프리젠테이션 핵심 코칭</h3>
											<p class="cate_tutor">
												<span class="name">김은영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">300,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51266);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51034">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/c92e0b28660b176e508524e47a72820322c2d062.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">스마트스토어 위탁판매로 연매출 10억을 만든 진짜 방법</h3>
											<p class="cate_tutor">
												<span class="name">YME 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">22,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">9</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51034);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51323">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/9748a990ba827441d868c63641b36f5ca54bba73.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">요가하고 요가강사 되는법</h3>
											<p class="cate_tutor">
												<span class="name">정주영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">45,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51323);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51013">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/30f783f154b9b3ec911b6d00d469c82b4463564a.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">현 글로벌기업 엔지니어의 호주 유학, 해외취업 컨설팅</h3>
											<p class="cate_tutor">
												<span class="name">근유리 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">200,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51013);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50994">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1f9126b0a224dfd39e8cf77a69c1d79496c65487.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">나의 능력 찾기와 이력서 작성법과 처세술로 동기화</h3>
											<p class="cate_tutor">
												<span class="name">이창연 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">20,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50994);"></button></li>
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
								<li
									class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev"
									data-swiper-slide-index="0" style="width: 660px;"><a
									href="https://taling.me/tutor/Register/Manual"> <img
										src="https://img.taling.me/Content/Uploads/Images/fcc3acf199f2e86dbd3032be061b712acdae4cd7.png"
										alt="">
								</a></li>
								<li
									class="swiper-slide swiper-slide-duplicate-active swiper-slide-prev swiper-slide-duplicate-next"
									data-swiper-slide-index="0" style="width: 660px;"><a
									href="https://taling.me/tutor/Register/Manual"> <img
										src="https://img.taling.me/Content/Uploads/Images/fcc3acf199f2e86dbd3032be061b712acdae4cd7.png"
										alt="">
								</a></li>
								<li
									class="swiper-slide swiper-slide-duplicate swiper-slide-active swiper-slide-duplicate-prev"
									data-swiper-slide-index="0" style="width: 660px;"><a
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

					<!-- big_Banner -->
					<div class="talent_box banner_area">
						<h2 class="main_title">프로모션</h2>
						<div
							class="swiper-container style_big swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
							<ul class="swiper-wrapper"
								style="transform: translate3d(0px, 0px, 0px);">
								<li class="swiper-slide swiper-slide-active"
									style="width: 212px; margin-right: 12px;"><a
									href="https://taling.me/Promotion/promotionList.php?id=473&amp;query=%ED%99%88%EC%88%8F%EC%BB%B7_%EC%A3%BC%EA%B0%84%EB%B2%A0%EC%8A%A4%ED%8A%B8">
										<img
										src="https://img.taling.me/Content/Uploads/Images/8e41311b9b37bbfde7d7bdb906418368c353b1b8.png"
										alt="">
								</a></li>
							</ul>
							<button type="button"
								class="btn_swiper swiper-button-prev swiper-button-disabled"
								tabindex="0" role="button" aria-label="Previous slide"
								aria-disabled="true"></button>
							<button type="button"
								class="btn_swiper swiper-button-next swiper-button-disabled"
								tabindex="0" role="button" aria-label="Next slide"
								aria-disabled="true"></button>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<!-- // big_Banner -->


					<!-- popularOneday -->
					<div class="talent_box">
						<h2 class="main_title">오늘 인기 원데이</h2>
						<div
							class="talent_list swiper-container swiper_popular_oneday lazyload swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							selector=".swiper_popular_oneday"
							ajax="/api3/main/v2/mainTalentList.php?viewType=VT001&amp;logicType=LT005&amp;outputType=html">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a href="">
										<div class="thumb"></div> <span class="badge"></span>
										<h3 class="talent_title"></h3>
										<p class="cate_tutor">
											<span class="cate_main"></span>
										</p>
										<p class="price_info">
											<span class="price"></span>
										</p>
										<p class="class_detail">()</p>
										<div class="talent_info">
											<span class="user"> </span>
										</div>
								</a>
									<button type="button" class="btn_wish "></button></li>
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a href="">
										<div class="thumb"></div> <span class="badge"></span>
										<h3 class="talent_title"></h3>
										<p class="cate_tutor">
											<span class="cate_main"></span>
										</p>
										<p class="price_info">
											<span class="price"></span>
										</p>
										<p class="class_detail">()</p>
										<div class="talent_info">
											<span class="user"> </span>
										</div>
								</a>
									<button type="button" class="btn_wish "></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a href="">
										<div class="thumb"></div> <span class="badge"></span>
										<h3 class="talent_title"></h3>
										<p class="cate_tutor">
											<span class="cate_main"></span>
										</p>
										<p class="price_info">
											<span class="price"></span>
										</p>
										<p class="class_detail">()</p>
										<div class="talent_info">
											<span class="user"> </span>
										</div>
								</a>
									<button type="button" class="btn_wish "></button></li>
							</ul>
							<button type="button"
								class="btn_swiper swiper-button-prev swiper-button-disabled"
								tabindex="0" role="button" aria-label="Previous slide"
								aria-disabled="true"></button>
							<button type="button"
								class="btn_swiper swiper-button-next swiper-button-disabled"
								tabindex="0" role="button" aria-label="Next slide"
								aria-disabled="true"></button>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<!-- //popularOneday -->

					<!-- curationSections -->
					<div class="talent_box">
						<h2 class="main_title">2023년, 올해 운세는? ✍</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/23650">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/06e56accfa2b51a685211c63e2962405514d6665.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
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
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/38540">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/a5b5d4fcb7af52397d61d99cfef54740c8a90b3e.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">온라인 LIVE</span>
											</div>
											<h3 class="talent_title">부자아빠의 이메일 사주상담(23년 신년운세)</h3>
											<p class="cate_tutor">
												<span class="name">명리고수부자아빠 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">35,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">234</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													45건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,38540);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/39027">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/4af35a125c7d70b5e64b4e30eb2f71e20b32bd7b.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">2023신년운세 .상담소맑음. 사주상담,멘토링.30분</h3>
											<p class="cate_tutor">
												<span class="name">노보법사 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">37,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">49</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													7건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,39027);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/34747">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/bce30cd27e6adee9091af019bdec31a17c3d99d1.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">[파일 전송] 사주명리 분석자료 보내 드립니다.</h3>
											<p class="cate_tutor">
												<span class="name">예언자의 집무실 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">48,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">46</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													2건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,34747);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/31891">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/f6bd4a69e207f8ed9ed6ae2eed9916d46526b141.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">마포</span>
											</div>
											<h3 class="talent_title">[파일 전송] 자세하게 손금을 읽어 드립니다.</h3>
											<p class="cate_tutor">
												<span class="name">예언자의 집무실 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">38,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">130</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													5건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,31891);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/46009">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/54514e00aa54a57daf72c37fc70e426828426906.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">서울대입구</span>
											</div>
											<h3 class="talent_title">퍼스널 타로상담-평범해도 매력적인 사람의 한끗차이</h3>
											<p class="cate_tutor">
												<span class="name">신하영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">70,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">11</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													2건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,46009);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/12420">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/b3b086881c45ca7852034cfba9f3e9f6be3398e4.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">잠실</span>
											</div>
											<h3 class="talent_title">[타로/사주/손금/관상/개인,그룹상담]꽃보다타로
												VIP상담하는 타로마스터삭이 타로(역학)상담해드립니다.</h3>
											<p class="cate_tutor">
												<span class="name">이삭 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">110,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">56</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													1건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,12420);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/48237">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/e83f61fab3d151d231ffedaa1f79c43f66eab3c7.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">신점으로 보는 궁합, 사회, 연애, 가정, 진로, 운세</h3>
											<p class="cate_tutor">
												<span class="name">와일드퍼플 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">39,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">24</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													1건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,48237);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/45523">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/712f352682c2e2dfaee998c97c50953fe53ecc74.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">여명분석서비스 웨딩매치 -여성 결혼운 분석결과 발송-</h3>
											<p class="cate_tutor">
												<span class="name">이현호 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">25,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													1건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,45523);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/33196">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/cfba5960039def829efc4a65857047f40d341ebe.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">[파일 전송] 당신의 점성학 별자리와 사주명리를 읽어
												드립니다.</h3>
											<p class="cate_tutor">
												<span class="name">예언자의 집무실 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">75,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">12</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,33196);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/29030">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/f59dcecaa3d293e6fa8ceba176e7a72e2e406bb4.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">고민이 있다면? 타로카드로 홀가분하게!</h3>
											<p class="cate_tutor">
												<span class="name">지니 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">20,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">48</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													3건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,29030);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/39246">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/616a1c6b3f696b06fb130cb30610712c06a94be6.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">온라인 LIVE</span>
											</div>
											<h3 class="talent_title">건행 주역 사주로 결혼 연애 진로 사업 운세 봐드립니다</h3>
											<p class="cate_tutor">
												<span class="name">건행주역사주 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">50,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">16</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,39246);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/45520">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/f6eff4d51b7016200b3a4b73f5bbc6127b333a2a.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">커플분석서비스 썸타곤 -커플궁합 분석결과 발송-</h3>
											<p class="cate_tutor">
												<span class="name">이현호 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">25,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,45520);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/31892">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/98c1f6154fcab095b84561c5686b6bb5156d8642.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">[파일 전송] 신통방통 육효와 명리 봐 드립니다.</h3>
											<p class="cate_tutor">
												<span class="name">예언자의 집무실 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">20,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">24</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,31892);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/46207">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/ae2840a8b106ffefd62c4cb869dba66982c02560.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">소름돋는 리딩, 명확한 해답 성문의 신비타로</h3>
											<p class="cate_tutor">
												<span class="name">전민구 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">100,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,46207);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/48330">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/a3ba62a45d2bcff68917ec749cff0035b9cd2c33.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">위로와 공감 그리고 해결책 인 사주 명리를 경험하세요</h3>
											<p class="cate_tutor">
												<span class="name">나운 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">100,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,48330);"></button></li>
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

					<!-- highScore -->
					<div class="talent_box">
						<h2 class="main_title">높은 리뷰 평점</h2>
						<div
							class="high_score swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/874">
										<div class="profile lazyload"
											data-bg="//img.taling.me/Content/Uploads/Profile/s_31378ee01b74a67451ec882e3d6ffecbff197e28.png"></div>
										<p class="cate_main">메이크업</p>
										<p class="name">홍아율</p>
								</a></li>
								<li class="swiper-slide swiper-slide-next"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/15608">
										<div class="profile lazyload"
											data-bg="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_c4d2dd082d595670832d26e901e5a766f7a47eac.png"></div>
										<p class="cate_main">헬스/PT</p>
										<p class="name">성환김</p>
								</a></li>
								<li class="swiper-slide"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/4516">
										<div class="profile lazyload"
											data-bg="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_fd743d4336843a2d01cc4ba48d1a20047cdebf43.png"></div>
										<p class="cate_main">메이크업</p>
										<p class="name">문예람</p>
								</a></li>
								<li class="swiper-slide"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/6285">
										<div class="profile lazyload"
											data-bg="//img.taling.me/Content/Uploads/Profile/s_9748f52907800fe926f0f9cc95d0da644513a9ec.png"></div>
										<p class="cate_main">그룹 영어</p>
										<p class="name">손성은</p>
								</a></li>
								<li class="swiper-slide"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/2949">
										<div class="profile lazyload"
											data-bg="//img.taling.me/Content/Uploads/Profile/s_48bf8b30b42ffc1a04b2dde85e2695098d9d6a1e.jpeg"></div>
										<p class="cate_main">댄스</p>
										<p class="name">최수연</p>
								</a></li>
								<li class="swiper-slide"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/16282">
										<div class="profile lazyload"
											data-bg="//img.taling.me/Content/Uploads/Profile/s_0ba22605cba166bae440050b63c2c656d656c9e8.jpg"></div>
										<p class="cate_main">자소서·면접</p>
										<p class="name">문근영</p>
								</a></li>
								<li class="swiper-slide"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/27482">
										<div class="profile lazyload"
											data-bg="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_174b193c14bc84b3c37c3390dfb9cf8a30009d11.jpg"></div>
										<p class="cate_main">모임/노하우/체험</p>
										<p class="name">최창대</p>
								</a></li>
								<li class="swiper-slide"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/25357">
										<div class="profile lazyload"
											data-bg="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_e1806529f0c9f3da905082b86d37ba35cd3f61a8.jpg"></div>
										<p class="cate_main">사진</p>
										<p class="name">유태환</p>
								</a></li>
								<li class="swiper-slide"
									style="width: 97.5px; margin-right: 15px;"><a
									href="/Talent/Detail/1136">
										<div class="profile lazyload"
											data-bg="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_16867dd7c2a6c167895d4d8bae0284b470c5776e.jpg"></div>
										<p class="cate_main">디자인 툴</p>
										<p class="name">Min</p>
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
					<!-- //highScore -->

					<!-- popular_class -->
					<div class="talent_box" style="padding-bottom: 27px;">
						<h2 class="main_title">다른 분들은 이걸 많이 봤어요!</h2>
						<div
							class="talent_list swiper-container swiper_popular_class lazyload swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							selector=".swiper_popular_class"
							ajax="/api3/main/v2/mainTalentList.php?viewType=VT001&amp;logicType=LT004&amp;outputType=html">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a href="">
										<div class="thumb"></div> <span class="badge"></span>
										<h3 class="talent_title"></h3>
										<p class="cate_tutor">
											<span class="cate_main"></span>
										</p>
										<p class="price_info">
											<span class="price"></span>
										</p>
										<p class="class_detail">()</p>
										<div class="talent_info">
											<span class="user"> </span>
										</div>
								</a>
									<button type="button" class="btn_wish "></button></li>
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a href="">
										<div class="thumb"></div> <span class="badge"></span>
										<h3 class="talent_title"></h3>
										<p class="cate_tutor">
											<span class="cate_main"></span>
										</p>
										<p class="price_info">
											<span class="price"></span>
										</p>
										<p class="class_detail">()</p>
										<div class="talent_info">
											<span class="user"> </span>
										</div>
								</a>
									<button type="button" class="btn_wish "></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a href="">
										<div class="thumb"></div> <span class="badge"></span>
										<h3 class="talent_title"></h3>
										<p class="cate_tutor">
											<span class="cate_main"></span>
										</p>
										<p class="price_info">
											<span class="price"></span>
										</p>
										<p class="class_detail">()</p>
										<div class="talent_info">
											<span class="user"> </span>
										</div>
								</a>
									<button type="button" class="btn_wish "></button></li>
							</ul>
							<button type="button"
								class="btn_swiper swiper-button-prev swiper-button-disabled"
								tabindex="0" role="button" aria-label="Previous slide"
								aria-disabled="true"></button>
							<button type="button"
								class="btn_swiper swiper-button-next swiper-button-disabled"
								tabindex="0" role="button" aria-label="Next slide"
								aria-disabled="true"></button>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<!-- //popular_class -->

					<!-- banner_b2b -->
					<div class="banner_b2b">
						<a href="/B2B/main"> <img
							src="//front-img.taling.me/Content/app3/img/banner/2023homeB2Bbanner.png"
							alt="다양한 컨텐츠로 기업 교육 및 브랜드 제휴를 시작해보세요! 더 알아보기">
						</a>
					</div>
					<script>
						$('.banner_b2b').prev('.talent_box').css(
								'padding-bottom', '27px');
					</script>
					<!-- // banner_b2b -->

					<!-- thisWeekStart -->
					<div class="talent_box">
						<h2 class="main_title">이번주 시작</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/46108">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/6d16d460ac21886579149c87e787128ffcf3677c.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">약수역</span>
											</div>
											<h3 class="talent_title">자네, 한 달만 가수해볼 생각 없나 -현역인디 보컬레슨</h3>
											<p class="cate_tutor">
												<span class="name">권태익 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">172,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">35</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													3건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,46108);"></button></li>
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/15603">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1c7b3898b48a5ff4701c738757b89c7dd90ab76a.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">온라인 LIVE</span>
											</div>
											<h3 class="talent_title">[원데이] 월급학개론(금융), 똑똑한 투자(주식)와
												저축(돈관리)는 이제 필수시대 :)</h3>
											<p class="cate_tutor">
												<span class="name">배모건 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1867</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,15603);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/10985">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/154944f61b5899802cd3a3aa5e0ecd068ddbf691.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">마포</span>
											</div>
											<h3 class="talent_title">[온,오프라인 가능] 고민은 전문 라이프 코치와 함께
												#진로코칭#그림심리#심리상담#고민#</h3>
											<p class="cate_tutor">
												<span class="name">한은자 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">55,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1990</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,10985);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/2695">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/93f13e25799b626cdf45945c5708abf6855b007e.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">[마케팅 DNA 생성] 광고로 배우는 마케팅 (광고대행사
												전략플래너 경력 17년)</h3>
											<p class="cate_tutor">
												<span class="name">노기태 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">280,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">907</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													28건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,2695);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/5581">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/8ea1435a3f4bc2d19e7d9943371ec44d0637d96e.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">천호동</span>
											</div>
											<h3 class="talent_title">누구나 Premiere Pro 최강으로 할 수 있습니다</h3>
											<p class="cate_tutor">
												<span class="name">Top Silver 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">250,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">291</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													8건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,5581);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/28671">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/bbdad0acf21537b5486a9741f274269862fdde6b.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">종로</span>
											</div>
											<h3 class="talent_title">버클리 피아노, 미디 맞춤형 레슨 - 3월 특가</h3>
											<p class="cate_tutor">
												<span class="name">피아노하임 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">40,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1783</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													5건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,28671);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/15532">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/8e753066395a596d3cc5f056a4a5e3bea5591ec5.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">온라인 LIVE</span>
											</div>
											<h3 class="talent_title">가수,싱송라,프로듀서의 세련되고 기본기 탄탄한 보컬레슨</h3>
											<p class="cate_tutor">
												<span class="name">백지현 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">180,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">583</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													24건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,15532);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/36555">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/1342dd09a99225b3a6ca61184b35eb1095c9ca1d.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">논현</span>
											</div>
											<h3 class="talent_title">l논현,신림l 가수가 될 수 있는 전문적인 보컬레슨</h3>
											<p class="cate_tutor">
												<span class="name">안진영 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">150,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">132</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													19건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,36555);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/3299">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/05ebfb509f0e8900936ee1f4a11497399ebd0524.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">혜화</span>
											</div>
											<h3 class="talent_title">최강의실무 After effects 할 수 있습니다</h3>
											<p class="cate_tutor">
												<span class="name">Top Silver 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">250,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">896</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													64건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,3299);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/3922">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/5be2ef4150fd7ff6bb0292d59a1b912a162cd8b5.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">영등포</span>
											</div>
											<h3 class="talent_title">하루 최다 참여,리뷰 수업 - 미디의 모든것 -</h3>
											<p class="cate_tutor">
												<span class="name">조동근 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">250,400원</span>
											</p>
											<div class="talent_info">
												<span class="user">1866</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,3922);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/3320">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/47c3802a229a3e795afaebf9623d730196cec910.jpeg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">[원데이 가능!] 명품 보컬레슨! 수업 만족도 1위!</h3>
											<p class="cate_tutor">
												<span class="name">보컬코치정진 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">200,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1116</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													57건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,3320);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/24029">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/00068010687fa1169b933a524f96f1495c6b326d.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">강남</span>
											</div>
											<h3 class="talent_title">청담동 메이크업 아티스트에게 배우는 메이크업 노하우</h3>
											<p class="cate_tutor">
												<span class="name">조현경 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">154,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">674</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													16건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,24029);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/31892">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/98c1f6154fcab095b84561c5686b6bb5156d8642.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">[파일 전송] 신통방통 육효와 명리 봐 드립니다.</h3>
											<p class="cate_tutor">
												<span class="name">예언자의 집무실 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">20,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">24</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,31892);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/1136">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/73d5038a10e8934a3a073de01a6a494e0b410916.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">일러스트+포토샵, 디자이너처럼 제대로. 베이직 오프라인</h3>
											<p class="cate_tutor">
												<span class="name">Min 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">345,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">4122</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													100건+</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,1136);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/4448">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/312d6591e4da499ee7f775a898687e6d528ea0bd.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">신촌홍대</span>
											</div>
											<h3 class="talent_title">[방역철저]♡현직가수들의 장비로 '발성'의 대한 이해부터
												내 목소리를 만들자!♡</h3>
											<p class="cate_tutor">
												<span class="name">정병학 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">165,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">1549</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													46건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,4448);"></button></li>
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
					<!-- //thisWeekStart -->

					<!-- underManwon -->
					<div class="talent_box">
						<h2 class="main_title">만원 이하 클래스</h2>
						<div
							class="talent_list swiper-container swiper_this_week swiper-container-initialized swiper-container-horizontal swiper-container-free-mode"
							data-number="1">
							<ul class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/51059">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/76d8e736756ded12b33cd4d69c0e625b4559fbae.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">고시원부터 내집마련까지 청약 당첨 후 입주까지 종합안내</h3>
											<p class="cate_tutor">
												<span class="name">Hej,타우리 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,51059);"></button></li>
								<li class="swiper-slide swiper-slide-next"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/50982">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/16d361fe01268c7882070a83b9079d02581249be.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge ebook">전자책</span>
											</div>
											<h3 class="talent_title">재개발 투자 공부+ 물건분석 지역분석 감정가 예상하기</h3>
											<p class="cate_tutor">
												<span class="name">구루핀(대표 전영진) 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">3</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,50982);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/46358">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/987ea38b34646f606bf299632ac5dc456fc49766.png">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge offline">수원</span>
											</div>
											<h3 class="talent_title">내 집 마련과 경제적 자유를 향한 원금보장 실전투자비법</h3>
											<p class="cate_tutor">
												<span class="name">이준석 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">5,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">8</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,46358);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/44489">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/4282e5376894ab874168795c18e63247b525713a.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">비트박스기린의 생초보 탈출클래스!!</h3>
											<p class="cate_tutor">
												<span class="name">강기린 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">32,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">14</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,44489);"></button></li>
								<li class="swiper-slide"
									style="width: 210px; margin-right: 15px;"><a
									href="/Talent/Detail/10980">
										<div class="thumb lazyload "
											data-bg="//img.taling.me/Content/Uploads/Cover/3b181858853e12cdbae03ff959a125624c60881b.jpg">
										</div>
										<div class="card_cnt">
											<div class="badge_list">
												<span class="badge live ">LIVE</span>
											</div>
											<h3 class="talent_title">부동산소유권70개이상보유 소액아파트 및 상가투자전문</h3>
											<p class="cate_tutor">
												<span class="name">김동권 튜터</span>
											</p>
											<p class="price_info">
												<span class="price">10,000원</span>
											</p>
											<div class="talent_info">
												<span class="user">357</span><span class="reward_badge"
													style="background-image: url('//front-img.taling.me/Content/app3/img/icon/icClasscardReview@2x.png')">리뷰
													57건</span>
											</div>
										</div>
								</a>
									<button type="button" class="btn_wish "
										onclick="updateWish(this,10980);"></button></li>
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
					<!-- underManwon -->

				</div>
				<!-- // talents_area -->
			</section>
			<!-- // colunm_left -->
			<!-- column_right -->
			<section class="column_right" id="stick"
				style="transform: translate(0px, 0px);">
				<div class="wrapper">
					<!-- 로그인 전 -->
					<div class="login_box">
						<h2 class="blind">회원 로그인 영역</h2>
						<p class="login_msg">
							로그인 하시고 하루의<br>다양한 튜터를 만나보세요.
						</p>
						<a class="link_login" href="/Account/LoginPage.php">하루 로그인</a>
						<div class="box_btns">
							<a class="find_id" href="/Account/AccountFindId/findAccount.php">아이디
								찾기</a> <a class="find_pw" href="/Account/AccountFindPassword.php">비밀번호
								찾기</a> <a class="link_join" href="/Account/LoginPage.php">회원가입</a>
						</div>
					</div>
					<!-- //로그인 전 -->
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
					<!-- ad_event -->
					<!-- // ad_event -->
					<!-- review_list -->
					<div
						class="review_list swiper-container swiper-container-initialized swiper-container-horizontal">
						<h2 class="main_title">실시간 리뷰</h2>
						<ul class="swiper-wrapper"
							style="transition-duration: 0ms; transform: translate3d(-5029.6px, 0px, 0px);">
							<li class="swiper-slide review_vod swiper-slide-duplicate"
								data-swiper-slide-index="0" style="margin-right: 20px;"><a
								href="/Talent/Detail/40248">
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
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="1" style="margin-right: 20px;"><a
								href="/Talent/Detail/32475">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Review/475dfd3c6034c79533c5088aada73ffb43519200.jpg"></div>
									<div class="text_box">
										<span class="write_time">4 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(13)</em></span>
										</div>
										<p class="review_text">추천드립니다 꼭 보세요 저만 보고싶은데 좋습니다</p>
									</div>
							</a></li>
							<li class="swiper-slide review_vod swiper-slide-duplicate"
								data-swiper-slide-index="2" style="margin-right: 20px;"><a
								href="/Talent/Detail/34696">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b9e70cd0774b34b86dd780997c39ee89fb47912d.png"></div>
									<div class="text_box">
										<span class="write_time">4 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(16)</em></span>
										</div>
										<p class="review_text">귀에 쏙쏙 들어오게 설명해주셔서 놓치지않구 잘 들었습니다 !
											감사합니다 ~!</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="3" style="margin-right: 20px;"><a
								href="/Talent/Detail/874">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Cover/08e69022bf15c96cf4c2e366a6c2c68433c23ee9.jpg"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(1035)</em></span>
										</div>
										<p class="review_text">친구랑 둘이 갔는데 굉장히 만족스러워요~ 제 피부상태를 보시고
											무슨타입이다 다 말해주시면서 기초케어부터 알려주시고 맞는타입을 골라주셔서 좋았습니다 퍼스널컬러도 알려주시면서
											색조도 골라주시고 기초부터 차근차근 알려주셔서 좋았어요 반쪽은 성샘님께서 해주고 반쪽은 제가 따라해보면서 하는
											방법에 대해 알 수 있어서 유용한 시간이였습니다~~~</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="4" style="margin-right: 20px;"><a
								href="/Talent/Detail/6813">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Review/facb0cc01113b712223801eaa636d6f1a9de8df4.jpg"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(30)</em></span>
										</div>
										<p class="review_text">발성이 궁금해서 갔는데 노래까지 잘 부르는 법도 배우고
											왔네요🤭 튜터님 친절하셨고 재밌었어요ㅎ 제 목소리를 들으며 손,발이 오그라들었어요ㅎㅎㅎ 그래도 자세하게
											알려주셨어요. 감사합니다!🤗 아!!! 그리고 튜터님 노래 진짜 잘 불러요!👍</p>
									</div>
							</a></li>
							<li
								class="swiper-slide review_p2p swiper-slide-duplicate swiper-slide-duplicate-prev"
								data-swiper-slide-index="5" style="margin-right: 20px;"><a
								href="/Talent/Detail/5672">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Review/47b7f543a3d4d73bc2d6abb5a6e62218fddc572a.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Review/47b7f543a3d4d73bc2d6abb5a6e62218fddc572a.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(88)</em></span>
										</div>
										<p class="review_text">不错！有意思😌</p>
									</div>
							</a></li>
							<li
								class="swiper-slide review_p2p swiper-slide-duplicate swiper-slide-duplicate-active"
								data-swiper-slide-index="6" style="margin-right: 20px;"><a
								href="/Talent/Detail/26317">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/ece11a49d288de18f5ebb0bac6992c120da6f353.jpeg"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/ece11a49d288de18f5ebb0bac6992c120da6f353.jpeg&quot;);"></div>
									<div class="text_box">
										<span class="write_time">8 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(48)</em></span>
										</div>
										<p class="review_text">완전 초보인데 차근차근 알려주셔서 많이 배울 수 있었습니다!
											3시간이 금방 지나갔어요 유튜브로도 배우려고 여러 사람들 영상 봤었는데 무슨말인지 모르겠었는데 확실히
											오프라인으로 배우니 훨씬 이해도 빠르고 바로바로 질문할 수 있어 좋네요 알려주신 것만 제대로 연습하면 저도
											퀄리티 좋은 영상 만들 수 있을 것 같아요! 친절하시고 성실히 알려주셔서 완전
											추천합니다!👍🏻👍🏻👍🏻</p>
									</div>
							</a></li>
							<li
								class="swiper-slide review_p2p swiper-slide-duplicate swiper-slide-duplicate-next"
								data-swiper-slide-index="7" style="margin-right: 20px;"><a
								href="/Talent/Detail/38676">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/2d064929476f475097ff22f8bb4ea7d63a2b3ea1.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/2d064929476f475097ff22f8bb4ea7d63a2b3ea1.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">12 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(42)</em></span>
										</div>
										<p class="review_text">디지털 노마드로써의 삶을 살아가기 위해 어떤 방법들을 이용하면
											좋을까?에 대해서 많이 고민을 하던 차에 우연이 카톡 쿠팡 파트너스에 자동화 수익에 대해 이야기하는 이
											전자책을 보고 아 이거다!!라는 생각이 들어 결제를 하게 되었는데 전자책 안에 양질의 콘텐츠가 들어가 있어
											바로 행동을 옮기는데 있어 문제가 없었기 때문에 더더욱이나 돈이 아깝지 않게 만족할 수 있는 콘텐츠 입니다.
										</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="8" style="margin-right: 20px;"><a
								href="/Talent/Detail/34483">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/4ec4a8056968a4cab3835dc1aa839f3d7b431e20.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/4ec4a8056968a4cab3835dc1aa839f3d7b431e20.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">17 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(20)</em></span>
										</div>
										<p class="review_text">한 달 조금 넘게 수강하고 있는데 선생님께서 너무 친절하게
											가르쳐주세요! 제가 노래를 배우는게 처음이라 용어나 느낌 같은 걸 한번에 이해하지 못할때가 많은데 항상
											자세하게 설명해주세요😊 그리고 수업 후에 항상 카톡으로 과제 자세하게 정리해서 보내주셔서 집에서 혼자
											연습해보기도 너무 편해요&gt;&lt; 항상 감사합니다🥰</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="9" style="margin-right: 20px;"><a
								href="/Talent/Detail/20935">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/47276be342d43b9f08ac7a19b68dc25abf836d8f.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/47276be342d43b9f08ac7a19b68dc25abf836d8f.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">20 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(12)</em></span>
										</div>
										<p class="review_text">수업을 받고 확실하게 자신감도 생기고 발음도 상당히 좋아졌습니다
											적극 추천드립니다!!</p>
									</div>
							</a></li>
							<li class="swiper-slide review_vod" data-swiper-slide-index="0"
								style="margin-right: 20px;"><a href="/Talent/Detail/40248">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/10a830d5244fd058777f220389c62013cdad5600.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/10a830d5244fd058777f220389c62013cdad5600.png&quot;);"></div>
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
							<li class="swiper-slide review_p2p" data-swiper-slide-index="1"
								style="margin-right: 20px;"><a href="/Talent/Detail/32475">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Review/475dfd3c6034c79533c5088aada73ffb43519200.jpg"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Review/475dfd3c6034c79533c5088aada73ffb43519200.jpg&quot;);"></div>
									<div class="text_box">
										<span class="write_time">4 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(13)</em></span>
										</div>
										<p class="review_text">추천드립니다 꼭 보세요 저만 보고싶은데 좋습니다</p>
									</div>
							</a></li>
							<li class="swiper-slide review_vod" data-swiper-slide-index="2"
								style="margin-right: 20px;"><a href="/Talent/Detail/34696">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/b9e70cd0774b34b86dd780997c39ee89fb47912d.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b9e70cd0774b34b86dd780997c39ee89fb47912d.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">4 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(16)</em></span>
										</div>
										<p class="review_text">귀에 쏙쏙 들어오게 설명해주셔서 놓치지않구 잘 들었습니다 !
											감사합니다 ~!</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p" data-swiper-slide-index="3"
								style="margin-right: 20px;"><a href="/Talent/Detail/874">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/08e69022bf15c96cf4c2e366a6c2c68433c23ee9.jpg"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/08e69022bf15c96cf4c2e366a6c2c68433c23ee9.jpg&quot;);"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(1035)</em></span>
										</div>
										<p class="review_text">친구랑 둘이 갔는데 굉장히 만족스러워요~ 제 피부상태를 보시고
											무슨타입이다 다 말해주시면서 기초케어부터 알려주시고 맞는타입을 골라주셔서 좋았습니다 퍼스널컬러도 알려주시면서
											색조도 골라주시고 기초부터 차근차근 알려주셔서 좋았어요 반쪽은 성샘님께서 해주고 반쪽은 제가 따라해보면서 하는
											방법에 대해 알 수 있어서 유용한 시간이였습니다~~~</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p" data-swiper-slide-index="4"
								style="margin-right: 20px;"><a href="/Talent/Detail/6813">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Review/facb0cc01113b712223801eaa636d6f1a9de8df4.jpg"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Review/facb0cc01113b712223801eaa636d6f1a9de8df4.jpg&quot;);"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(30)</em></span>
										</div>
										<p class="review_text">발성이 궁금해서 갔는데 노래까지 잘 부르는 법도 배우고
											왔네요🤭 튜터님 친절하셨고 재밌었어요ㅎ 제 목소리를 들으며 손,발이 오그라들었어요ㅎㅎㅎ 그래도 자세하게
											알려주셨어요. 감사합니다!🤗 아!!! 그리고 튜터님 노래 진짜 잘 불러요!👍</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-prev"
								data-swiper-slide-index="5" style="margin-right: 20px;"><a
								href="/Talent/Detail/5672">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Review/47b7f543a3d4d73bc2d6abb5a6e62218fddc572a.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Review/47b7f543a3d4d73bc2d6abb5a6e62218fddc572a.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(88)</em></span>
										</div>
										<p class="review_text">不错！有意思😌</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-active"
								data-swiper-slide-index="6" style="margin-right: 20px;"><a
								href="/Talent/Detail/26317">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/ece11a49d288de18f5ebb0bac6992c120da6f353.jpeg"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/ece11a49d288de18f5ebb0bac6992c120da6f353.jpeg&quot;);"></div>
									<div class="text_box">
										<span class="write_time">8 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(48)</em></span>
										</div>
										<p class="review_text">완전 초보인데 차근차근 알려주셔서 많이 배울 수 있었습니다!
											3시간이 금방 지나갔어요 유튜브로도 배우려고 여러 사람들 영상 봤었는데 무슨말인지 모르겠었는데 확실히
											오프라인으로 배우니 훨씬 이해도 빠르고 바로바로 질문할 수 있어 좋네요 알려주신 것만 제대로 연습하면 저도
											퀄리티 좋은 영상 만들 수 있을 것 같아요! 친절하시고 성실히 알려주셔서 완전
											추천합니다!👍🏻👍🏻👍🏻</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-next"
								data-swiper-slide-index="7" style="margin-right: 20px;"><a
								href="/Talent/Detail/38676">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/2d064929476f475097ff22f8bb4ea7d63a2b3ea1.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/2d064929476f475097ff22f8bb4ea7d63a2b3ea1.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">12 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(42)</em></span>
										</div>
										<p class="review_text">디지털 노마드로써의 삶을 살아가기 위해 어떤 방법들을 이용하면
											좋을까?에 대해서 많이 고민을 하던 차에 우연이 카톡 쿠팡 파트너스에 자동화 수익에 대해 이야기하는 이
											전자책을 보고 아 이거다!!라는 생각이 들어 결제를 하게 되었는데 전자책 안에 양질의 콘텐츠가 들어가 있어
											바로 행동을 옮기는데 있어 문제가 없었기 때문에 더더욱이나 돈이 아깝지 않게 만족할 수 있는 콘텐츠 입니다.
										</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p" data-swiper-slide-index="8"
								style="margin-right: 20px;"><a href="/Talent/Detail/34483">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/4ec4a8056968a4cab3835dc1aa839f3d7b431e20.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/4ec4a8056968a4cab3835dc1aa839f3d7b431e20.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">17 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(20)</em></span>
										</div>
										<p class="review_text">한 달 조금 넘게 수강하고 있는데 선생님께서 너무 친절하게
											가르쳐주세요! 제가 노래를 배우는게 처음이라 용어나 느낌 같은 걸 한번에 이해하지 못할때가 많은데 항상
											자세하게 설명해주세요😊 그리고 수업 후에 항상 카톡으로 과제 자세하게 정리해서 보내주셔서 집에서 혼자
											연습해보기도 너무 편해요&gt;&lt; 항상 감사합니다🥰</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p" data-swiper-slide-index="9"
								style="margin-right: 20px;"><a href="/Talent/Detail/20935">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/47276be342d43b9f08ac7a19b68dc25abf836d8f.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/47276be342d43b9f08ac7a19b68dc25abf836d8f.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">20 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(12)</em></span>
										</div>
										<p class="review_text">수업을 받고 확실하게 자신감도 생기고 발음도 상당히 좋아졌습니다
											적극 추천드립니다!!</p>
									</div>
							</a></li>
							<li class="swiper-slide review_vod swiper-slide-duplicate"
								data-swiper-slide-index="0" style="margin-right: 20px;"><a
								href="/Talent/Detail/40248">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/10a830d5244fd058777f220389c62013cdad5600.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/10a830d5244fd058777f220389c62013cdad5600.png&quot;);"></div>
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
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="1" style="margin-right: 20px;"><a
								href="/Talent/Detail/32475">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Review/475dfd3c6034c79533c5088aada73ffb43519200.jpg"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Review/475dfd3c6034c79533c5088aada73ffb43519200.jpg&quot;);"></div>
									<div class="text_box">
										<span class="write_time">4 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(13)</em></span>
										</div>
										<p class="review_text">추천드립니다 꼭 보세요 저만 보고싶은데 좋습니다</p>
									</div>
							</a></li>
							<li class="swiper-slide review_vod swiper-slide-duplicate"
								data-swiper-slide-index="2" style="margin-right: 20px;"><a
								href="/Talent/Detail/34696">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/b9e70cd0774b34b86dd780997c39ee89fb47912d.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b9e70cd0774b34b86dd780997c39ee89fb47912d.png&quot;);"></div>
									<div class="text_box">
										<span class="write_time">4 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(16)</em></span>
										</div>
										<p class="review_text">귀에 쏙쏙 들어오게 설명해주셔서 놓치지않구 잘 들었습니다 !
											감사합니다 ~!</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="3" style="margin-right: 20px;"><a
								href="/Talent/Detail/874">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Cover/08e69022bf15c96cf4c2e366a6c2c68433c23ee9.jpg"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Cover/08e69022bf15c96cf4c2e366a6c2c68433c23ee9.jpg&quot;);"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(1035)</em></span>
										</div>
										<p class="review_text">친구랑 둘이 갔는데 굉장히 만족스러워요~ 제 피부상태를 보시고
											무슨타입이다 다 말해주시면서 기초케어부터 알려주시고 맞는타입을 골라주셔서 좋았습니다 퍼스널컬러도 알려주시면서
											색조도 골라주시고 기초부터 차근차근 알려주셔서 좋았어요 반쪽은 성샘님께서 해주고 반쪽은 제가 따라해보면서 하는
											방법에 대해 알 수 있어서 유용한 시간이였습니다~~~</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="4" style="margin-right: 20px;"><a
								href="/Talent/Detail/6813">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Review/facb0cc01113b712223801eaa636d6f1a9de8df4.jpg"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(30)</em></span>
										</div>
										<p class="review_text">발성이 궁금해서 갔는데 노래까지 잘 부르는 법도 배우고
											왔네요🤭 튜터님 친절하셨고 재밌었어요ㅎ 제 목소리를 들으며 손,발이 오그라들었어요ㅎㅎㅎ 그래도 자세하게
											알려주셨어요. 감사합니다!🤗 아!!! 그리고 튜터님 노래 진짜 잘 불러요!👍</p>
									</div>
							</a></li>
							<li
								class="swiper-slide review_p2p swiper-slide-duplicate swiper-slide-duplicate-prev"
								data-swiper-slide-index="5" style="margin-right: 20px;"><a
								href="/Talent/Detail/5672">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Review/47b7f543a3d4d73bc2d6abb5a6e62218fddc572a.png"></div>
									<div class="text_box">
										<span class="write_time">6 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(88)</em></span>
										</div>
										<p class="review_text">不错！有意思😌</p>
									</div>
							</a></li>
							<li
								class="swiper-slide review_p2p swiper-slide-duplicate swiper-slide-duplicate-active"
								data-swiper-slide-index="6" style="margin-right: 20px;"><a
								href="/Talent/Detail/26317">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Cover/ece11a49d288de18f5ebb0bac6992c120da6f353.jpeg"></div>
									<div class="text_box">
										<span class="write_time">8 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(48)</em></span>
										</div>
										<p class="review_text">완전 초보인데 차근차근 알려주셔서 많이 배울 수 있었습니다!
											3시간이 금방 지나갔어요 유튜브로도 배우려고 여러 사람들 영상 봤었는데 무슨말인지 모르겠었는데 확실히
											오프라인으로 배우니 훨씬 이해도 빠르고 바로바로 질문할 수 있어 좋네요 알려주신 것만 제대로 연습하면 저도
											퀄리티 좋은 영상 만들 수 있을 것 같아요! 친절하시고 성실히 알려주셔서 완전
											추천합니다!👍🏻👍🏻👍🏻</p>
									</div>
							</a></li>
							<li
								class="swiper-slide review_p2p swiper-slide-duplicate swiper-slide-duplicate-next"
								data-swiper-slide-index="7" style="margin-right: 20px;"><a
								href="/Talent/Detail/38676">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Cover/2d064929476f475097ff22f8bb4ea7d63a2b3ea1.png"></div>
									<div class="text_box">
										<span class="write_time">12 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(42)</em></span>
										</div>
										<p class="review_text">디지털 노마드로써의 삶을 살아가기 위해 어떤 방법들을 이용하면
											좋을까?에 대해서 많이 고민을 하던 차에 우연이 카톡 쿠팡 파트너스에 자동화 수익에 대해 이야기하는 이
											전자책을 보고 아 이거다!!라는 생각이 들어 결제를 하게 되었는데 전자책 안에 양질의 콘텐츠가 들어가 있어
											바로 행동을 옮기는데 있어 문제가 없었기 때문에 더더욱이나 돈이 아깝지 않게 만족할 수 있는 콘텐츠 입니다.
										</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="8" style="margin-right: 20px;"><a
								href="/Talent/Detail/34483">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Cover/4ec4a8056968a4cab3835dc1aa839f3d7b431e20.png"></div>
									<div class="text_box">
										<span class="write_time">17 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(20)</em></span>
										</div>
										<p class="review_text">한 달 조금 넘게 수강하고 있는데 선생님께서 너무 친절하게
											가르쳐주세요! 제가 노래를 배우는게 처음이라 용어나 느낌 같은 걸 한번에 이해하지 못할때가 많은데 항상
											자세하게 설명해주세요😊 그리고 수업 후에 항상 카톡으로 과제 자세하게 정리해서 보내주셔서 집에서 혼자
											연습해보기도 너무 편해요&gt;&lt; 항상 감사합니다🥰</p>
									</div>
							</a></li>
							<li class="swiper-slide review_p2p swiper-slide-duplicate"
								data-swiper-slide-index="9" style="margin-right: 20px;"><a
								href="/Talent/Detail/20935">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Cover/47276be342d43b9f08ac7a19b68dc25abf836d8f.png"></div>
									<div class="text_box">
										<span class="write_time">20 시간전</span>
										<div class="score_talent">
											<div class="score_star">
												<span class="star" style="width: 100%"></span>
											</div>
											<span class="score">5.0 <em>(12)</em></span>
										</div>
										<p class="review_text">수업을 받고 확실하게 자신감도 생기고 발음도 상당히 좋아졌습니다
											적극 추천드립니다!!</p>
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
							<li><a href="/Talent/Detail/40295">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/fa891b661f4c639d3f8d9458c21dbd661b1cb1e9.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/fa891b661f4c639d3f8d9458c21dbd661b1cb1e9.png&quot;);">
									</div>
									<div class="text_box">
										<h3 class="talent_title">작동하는 방법론, 미션으로 실천하는 BX 디자인 기초</h3>
										<div class="talent_info">
											<span class="user"><em>358명</em>이 찜했습니다!</span> <span
												class="average">5(9)</span>
										</div>
									</div>
							</a> <!-- <p class="earlybird">얼리버드 마감임박!</p> --></li>
						</ul>
					</div>
					<!-- // ad_vod -->
					<!-- vod_width_book -->
					<div
						class="vod_width_book swiper-container swiper-container-initialized swiper-container-horizontal">
						<h2 class="main_title">책도 함께 받아가세요</h2>
						<ul class="swiper-wrapper"
							style="transition-duration: 0ms; transform: translate3d(-7577.35px, 0px, 0px);">
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="0" style="margin-right: 20px;"><a
								href="/vod/view/21997">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/d761447b149f74fe9a950d179e646198437269e0.png"></div>
									<div class="text_box">
										<p class="cate_main">
											부동산 <span class="name">이광석</span>
										</p>
										<h3 class="talent_title">나도 할 수 있다 시세차익! 오르는 집으로 가는 부동산
											투자</h3>
										<div class="talent_info">
											<span class="user"><em>3,060명</em>이 찜했습니다!</span> <span
												class="average">4.9(102)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,21997);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="1" style="margin-right: 20px;"><a
								href="/vod/view/34105">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/cf1e66fdca8fea5a71d6adab9814b98a5a71fd7b.png"></div>
									<div class="text_box">
										<p class="cate_main">
											출판 <span class="name">호텔리뷰어 체크인</span>
										</p>
										<h3 class="talent_title">365일 좋아하는 일로 돈을 버는 실전 노하우</h3>
										<div class="talent_info">
											<span class="user"><em>675명</em>이 찜했습니다!</span> <span
												class="average">5(17)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,34105);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="2" style="margin-right: 20px;"><a
								href="/vod/view/28751">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/f30e70580b2568250bcdd75b6e9d973c5a965c02.png"></div>
									<div class="text_box">
										<p class="cate_main">
											다양한 투잡 <span class="name">조슬린</span>
										</p>
										<h3 class="talent_title">핸드메이드로 돈 벌자! 투잡에서 공방까지</h3>
										<div class="talent_info">
											<span class="user"><em>713명</em>이 찜했습니다!</span> <span
												class="average">4.9(36)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,28751);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="3" style="margin-right: 20px;"><a
								href="/vod/view/7624">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b79d4954df95b35271d7116540336f22ab0e7d38.png"></div>
									<div class="text_box">
										<p class="cate_main">
											PPT <span class="name">제이</span>
										</p>
										<h3 class="talent_title">실무에 가장 많이 쓰이는 PPT 디자인</h3>
										<div class="talent_info">
											<span class="user"><em>6,493명</em>이 찜했습니다!</span> <span
												class="average">4.9(347)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7624);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="4" style="margin-right: 20px;"><a
								href="/vod/view/37128">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b07c81dbc82e5b5bb7ee58383e6e9a7f59e9117d.png"></div>
									<div class="text_box">
										<p class="cate_main">
											엑셀 <span class="name">쏘피</span>
										</p>
										<h3 class="talent_title">실무에 진짜 필요한 엑셀 노하우</h3>
										<div class="talent_info">
											<span class="user"><em>10,518명</em>이 찜했습니다!</span> <span
												class="average">4.9(568)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,37128);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="5" style="margin-right: 20px;"><a
								href="/vod/view/7632">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/fe562403780b1588d4547ba577ca4e17cbd564cd.png"></div>
									<div class="text_box">
										<p class="cate_main">
											디자인 툴 <span class="name">빙각</span>
										</p>
										<h3 class="talent_title">디자인으로 배우는 실전 포토샵</h3>
										<div class="talent_info">
											<span class="user"><em>4,722명</em>이 찜했습니다!</span> <span
												class="average">4.9(144)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7632);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="6" style="margin-right: 20px;"><a
								href="/vod/view/19121">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/2c4fc14fcb35007598388a27c3aeead88e8b5c60.png"></div>
									<div class="text_box">
										<p class="cate_main">
											글쓰기 <span class="name">Stella</span>
										</p>
										<h3 class="talent_title">7년 차 금손 편집자 스텔라의 로맨스 웹소설 작가되기</h3>
										<div class="talent_info">
											<span class="user"><em>4,081명</em>이 찜했습니다!</span> <span
												class="average">4.9(311)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,19121);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="7" style="margin-right: 20px;"><a
								href="/vod/view/24233">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/e096d90c894d438de6aee6d2e225f025af70272a.png"></div>
									<div class="text_box">
										<p class="cate_main">
											보고서/발표 <span class="name">신가영</span>
										</p>
										<h3 class="talent_title">13년차 대기업 직장인의 인정 받는 보고서 작성법</h3>
										<div class="talent_info">
											<span class="user"><em>3,856명</em>이 찜했습니다!</span> <span
												class="average">5(104)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,24233);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="8" style="margin-right: 20px;"><a
								href="/vod/view/30563">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/c262f14cfa6677532b170f24a14fd18986d44008.png"></div>
									<div class="text_box">
										<p class="cate_main">
											다양한 투잡 <span class="name">정성희</span>
										</p>
										<h3 class="talent_title">영어 번역으로 디지털 노마드 되기</h3>
										<div class="talent_info">
											<span class="user"><em>946명</em>이 찜했습니다!</span> <span
												class="average">4.8(21)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,30563);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="9" style="margin-right: 20px;"><a
								href="/vod/view/26142">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b6d5317ff80fac8310a5b7789c6f72a2169e528c.png"></div>
									<div class="text_box">
										<p class="cate_main">
											기획·PM <span class="name">지수</span>
										</p>
										<h3 class="talent_title">‘진짜 성공’ 을 가져오는 제품&amp;서비스 기획</h3>
										<div class="talent_info">
											<span class="user"><em>1,946명</em>이 찜했습니다!</span> <span
												class="average">4.9(90)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,26142);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="10" style="margin-right: 20px;"><a
								href="/vod/view/7633">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/f909a6d6229978ff09ccbfe4de4f59944bc2faad.png"></div>
									<div class="text_box">
										<p class="cate_main">
											디자인 툴 <span class="name">문가든</span>
										</p>
										<h3 class="talent_title">한 번 배우면 평생 써먹는 일러스트 끝내기</h3>
										<div class="talent_info">
											<span class="user"><em>5,187명</em>이 찜했습니다!</span> <span
												class="average">4.8(175)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7633);"></button></li>
							<li
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
								data-swiper-slide-index="11" style="margin-right: 20px;"><a
								href="/vod/view/21948">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/4ea12256a5df51e38a82044cd1527cc413fc8895.png"></div>
									<div class="text_box">
										<p class="cate_main">
											쇼핑몰 <span class="name">윤주</span>
										</p>
										<h3 class="talent_title">첫 달부터 매출나는 가장 쉬운 투잡, 구매대행</h3>
										<div class="talent_info">
											<span class="user"><em>4,682명</em>이 찜했습니다!</span> <span
												class="average">4.8(282)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,21948);"></button></li>
							<li
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
								data-swiper-slide-index="12" style="margin-right: 20px;"><a
								href="/vod/view/33749">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/84365e2bf439cc6a520540356e623014e7ac3392.png"></div>
									<div class="text_box">
										<p class="cate_main">
											부모/육아 <span class="name">김서연</span>
										</p>
										<h3 class="talent_title">매일매일 새롭고 재밌는 엄마표 놀이 만들기</h3>
										<div class="talent_info">
											<span class="user"><em>117명</em>이 찜했습니다!</span> <span
												class="average">5(13)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,33749);"></button></li>
							<li
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
								data-swiper-slide-index="13" style="margin-right: 20px;"><a
								href="/vod/view/19805">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b302718049dbe1fed4bac3226b22150e8059db74.png"></div>
									<div class="text_box">
										<p class="cate_main">
											쇼핑몰 <span class="name">레이먼드</span>
										</p>
										<h3 class="talent_title">직장인 투잡 BEST 스마트스토어로 300 벌기</h3>
										<div class="talent_info">
											<span class="user"><em>3,204명</em>이 찜했습니다!</span> <span
												class="average">4.7(72)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,19805);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="14" style="margin-right: 20px;"><a
								href="/vod/view/18398">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/be8f216cca5e9342f6a9a22d47011c80b176b252.png"></div>
									<div class="text_box">
										<p class="cate_main">
											디지털드로잉 <span class="name">nini</span>
										</p>
										<h3 class="talent_title">아이패드 드로잉으로 나만의 이모티콘 만들기</h3>
										<div class="talent_info">
											<span class="user"><em>5,052명</em>이 찜했습니다!</span> <span
												class="average">4.9(207)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,18398);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="15" style="margin-right: 20px;"><a
								href="/vod/view/28175">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/d2f0d0668aedaa723683e5be7bcb3a9ded9cbd11.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/d2f0d0668aedaa723683e5be7bcb3a9ded9cbd11.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											글쓰기 <span class="name">스테르담</span>
										</p>
										<h3 class="talent_title">하루 15분, 브런치로 베스트셀러 작가 되기</h3>
										<div class="talent_info">
											<span class="user"><em>1,755명</em>이 찜했습니다!</span> <span
												class="average">5(80)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,28175);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="16" style="margin-right: 20px;"><a
								href="/vod/view/34121">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/ebaa1053a3e8d519bddc52314f478a075dfe191c.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/ebaa1053a3e8d519bddc52314f478a075dfe191c.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											기획·PM <span class="name">도그냥</span>
										</p>
										<h3 class="talent_title">코딩 하나도 몰라도 이커머스 기획자로 취업하기</h3>
										<div class="talent_info">
											<span class="user"><em>371명</em>이 찜했습니다!</span> <span
												class="average">5(15)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,34121);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="0"
								style="margin-right: 20px;"><a href="/vod/view/21997">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/d761447b149f74fe9a950d179e646198437269e0.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/d761447b149f74fe9a950d179e646198437269e0.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											부동산 <span class="name">이광석</span>
										</p>
										<h3 class="talent_title">나도 할 수 있다 시세차익! 오르는 집으로 가는 부동산
											투자</h3>
										<div class="talent_info">
											<span class="user"><em>3,060명</em>이 찜했습니다!</span> <span
												class="average">4.9(102)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,21997);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="1"
								style="margin-right: 20px;"><a href="/vod/view/34105">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/cf1e66fdca8fea5a71d6adab9814b98a5a71fd7b.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/cf1e66fdca8fea5a71d6adab9814b98a5a71fd7b.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											출판 <span class="name">호텔리뷰어 체크인</span>
										</p>
										<h3 class="talent_title">365일 좋아하는 일로 돈을 버는 실전 노하우</h3>
										<div class="talent_info">
											<span class="user"><em>675명</em>이 찜했습니다!</span> <span
												class="average">5(17)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,34105);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="2"
								style="margin-right: 20px;"><a href="/vod/view/28751">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/f30e70580b2568250bcdd75b6e9d973c5a965c02.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/f30e70580b2568250bcdd75b6e9d973c5a965c02.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											다양한 투잡 <span class="name">조슬린</span>
										</p>
										<h3 class="talent_title">핸드메이드로 돈 벌자! 투잡에서 공방까지</h3>
										<div class="talent_info">
											<span class="user"><em>713명</em>이 찜했습니다!</span> <span
												class="average">4.9(36)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,28751);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="3"
								style="margin-right: 20px;"><a href="/vod/view/7624">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/b79d4954df95b35271d7116540336f22ab0e7d38.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b79d4954df95b35271d7116540336f22ab0e7d38.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											PPT <span class="name">제이</span>
										</p>
										<h3 class="talent_title">실무에 가장 많이 쓰이는 PPT 디자인</h3>
										<div class="talent_info">
											<span class="user"><em>6,493명</em>이 찜했습니다!</span> <span
												class="average">4.9(347)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7624);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="4"
								style="margin-right: 20px;"><a href="/vod/view/37128">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/b07c81dbc82e5b5bb7ee58383e6e9a7f59e9117d.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b07c81dbc82e5b5bb7ee58383e6e9a7f59e9117d.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											엑셀 <span class="name">쏘피</span>
										</p>
										<h3 class="talent_title">실무에 진짜 필요한 엑셀 노하우</h3>
										<div class="talent_info">
											<span class="user"><em>10,518명</em>이 찜했습니다!</span> <span
												class="average">4.9(568)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,37128);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="5"
								style="margin-right: 20px;"><a href="/vod/view/7632">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/fe562403780b1588d4547ba577ca4e17cbd564cd.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/fe562403780b1588d4547ba577ca4e17cbd564cd.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											디자인 툴 <span class="name">빙각</span>
										</p>
										<h3 class="talent_title">디자인으로 배우는 실전 포토샵</h3>
										<div class="talent_info">
											<span class="user"><em>4,722명</em>이 찜했습니다!</span> <span
												class="average">4.9(144)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7632);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="6"
								style="margin-right: 20px;"><a href="/vod/view/19121">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/2c4fc14fcb35007598388a27c3aeead88e8b5c60.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/2c4fc14fcb35007598388a27c3aeead88e8b5c60.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											글쓰기 <span class="name">Stella</span>
										</p>
										<h3 class="talent_title">7년 차 금손 편집자 스텔라의 로맨스 웹소설 작가되기</h3>
										<div class="talent_info">
											<span class="user"><em>4,081명</em>이 찜했습니다!</span> <span
												class="average">4.9(311)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,19121);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="7"
								style="margin-right: 20px;"><a href="/vod/view/24233">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/e096d90c894d438de6aee6d2e225f025af70272a.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/e096d90c894d438de6aee6d2e225f025af70272a.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											보고서/발표 <span class="name">신가영</span>
										</p>
										<h3 class="talent_title">13년차 대기업 직장인의 인정 받는 보고서 작성법</h3>
										<div class="talent_info">
											<span class="user"><em>3,856명</em>이 찜했습니다!</span> <span
												class="average">5(104)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,24233);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="8"
								style="margin-right: 20px;"><a href="/vod/view/30563">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/c262f14cfa6677532b170f24a14fd18986d44008.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/c262f14cfa6677532b170f24a14fd18986d44008.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											다양한 투잡 <span class="name">정성희</span>
										</p>
										<h3 class="talent_title">영어 번역으로 디지털 노마드 되기</h3>
										<div class="talent_info">
											<span class="user"><em>946명</em>이 찜했습니다!</span> <span
												class="average">4.8(21)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,30563);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="9"
								style="margin-right: 20px;"><a href="/vod/view/26142">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/b6d5317ff80fac8310a5b7789c6f72a2169e528c.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b6d5317ff80fac8310a5b7789c6f72a2169e528c.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											기획·PM <span class="name">지수</span>
										</p>
										<h3 class="talent_title">‘진짜 성공’ 을 가져오는 제품&amp;서비스 기획</h3>
										<div class="talent_info">
											<span class="user"><em>1,946명</em>이 찜했습니다!</span> <span
												class="average">4.9(90)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,26142);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="10"
								style="margin-right: 20px;"><a href="/vod/view/7633">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/f909a6d6229978ff09ccbfe4de4f59944bc2faad.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/f909a6d6229978ff09ccbfe4de4f59944bc2faad.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											디자인 툴 <span class="name">문가든</span>
										</p>
										<h3 class="talent_title">한 번 배우면 평생 써먹는 일러스트 끝내기</h3>
										<div class="talent_info">
											<span class="user"><em>5,187명</em>이 찜했습니다!</span> <span
												class="average">4.8(175)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7633);"></button></li>
							<li class="swiper-slide swiper-slide-prev"
								data-swiper-slide-index="11" style="margin-right: 20px;"><a
								href="/vod/view/21948">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/4ea12256a5df51e38a82044cd1527cc413fc8895.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/4ea12256a5df51e38a82044cd1527cc413fc8895.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											쇼핑몰 <span class="name">윤주</span>
										</p>
										<h3 class="talent_title">첫 달부터 매출나는 가장 쉬운 투잡, 구매대행</h3>
										<div class="talent_info">
											<span class="user"><em>4,682명</em>이 찜했습니다!</span> <span
												class="average">4.8(282)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,21948);"></button></li>
							<li class="swiper-slide swiper-slide-active"
								data-swiper-slide-index="12" style="margin-right: 20px;"><a
								href="/vod/view/33749">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/84365e2bf439cc6a520540356e623014e7ac3392.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/84365e2bf439cc6a520540356e623014e7ac3392.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											부모/육아 <span class="name">김서연</span>
										</p>
										<h3 class="talent_title">매일매일 새롭고 재밌는 엄마표 놀이 만들기</h3>
										<div class="talent_info">
											<span class="user"><em>117명</em>이 찜했습니다!</span> <span
												class="average">5(13)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,33749);"></button></li>
							<li class="swiper-slide swiper-slide-next"
								data-swiper-slide-index="13" style="margin-right: 20px;"><a
								href="/vod/view/19805">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/b302718049dbe1fed4bac3226b22150e8059db74.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/b302718049dbe1fed4bac3226b22150e8059db74.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											쇼핑몰 <span class="name">레이먼드</span>
										</p>
										<h3 class="talent_title">직장인 투잡 BEST 스마트스토어로 300 벌기</h3>
										<div class="talent_info">
											<span class="user"><em>3,204명</em>이 찜했습니다!</span> <span
												class="average">4.7(72)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,19805);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="14"
								style="margin-right: 20px;"><a href="/vod/view/18398">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/be8f216cca5e9342f6a9a22d47011c80b176b252.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/be8f216cca5e9342f6a9a22d47011c80b176b252.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											디지털드로잉 <span class="name">nini</span>
										</p>
										<h3 class="talent_title">아이패드 드로잉으로 나만의 이모티콘 만들기</h3>
										<div class="talent_info">
											<span class="user"><em>5,052명</em>이 찜했습니다!</span> <span
												class="average">4.9(207)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,18398);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="15"
								style="margin-right: 20px;"><a href="/vod/view/28175">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/d2f0d0668aedaa723683e5be7bcb3a9ded9cbd11.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/d2f0d0668aedaa723683e5be7bcb3a9ded9cbd11.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											글쓰기 <span class="name">스테르담</span>
										</p>
										<h3 class="talent_title">하루 15분, 브런치로 베스트셀러 작가 되기</h3>
										<div class="talent_info">
											<span class="user"><em>1,755명</em>이 찜했습니다!</span> <span
												class="average">5(80)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,28175);"></button></li>
							<li class="swiper-slide" data-swiper-slide-index="16"
								style="margin-right: 20px;"><a href="/vod/view/34121">
									<div class="thumb lazyloaded"
										data-bg="//img.taling.me/Content/Uploads/Images/ebaa1053a3e8d519bddc52314f478a075dfe191c.png"
										style="background-image: url(&quot;//img.taling.me/Content/Uploads/Images/ebaa1053a3e8d519bddc52314f478a075dfe191c.png&quot;);"></div>
									<div class="text_box">
										<p class="cate_main">
											기획·PM <span class="name">도그냥</span>
										</p>
										<h3 class="talent_title">코딩 하나도 몰라도 이커머스 기획자로 취업하기</h3>
										<div class="talent_info">
											<span class="user"><em>371명</em>이 찜했습니다!</span> <span
												class="average">5(15)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,34121);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="0" style="margin-right: 20px;"><a
								href="/vod/view/21997">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/d761447b149f74fe9a950d179e646198437269e0.png"></div>
									<div class="text_box">
										<p class="cate_main">
											부동산 <span class="name">이광석</span>
										</p>
										<h3 class="talent_title">나도 할 수 있다 시세차익! 오르는 집으로 가는 부동산
											투자</h3>
										<div class="talent_info">
											<span class="user"><em>3,060명</em>이 찜했습니다!</span> <span
												class="average">4.9(102)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,21997);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="1" style="margin-right: 20px;"><a
								href="/vod/view/34105">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/cf1e66fdca8fea5a71d6adab9814b98a5a71fd7b.png"></div>
									<div class="text_box">
										<p class="cate_main">
											출판 <span class="name">호텔리뷰어 체크인</span>
										</p>
										<h3 class="talent_title">365일 좋아하는 일로 돈을 버는 실전 노하우</h3>
										<div class="talent_info">
											<span class="user"><em>675명</em>이 찜했습니다!</span> <span
												class="average">5(17)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,34105);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="2" style="margin-right: 20px;"><a
								href="/vod/view/28751">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/f30e70580b2568250bcdd75b6e9d973c5a965c02.png"></div>
									<div class="text_box">
										<p class="cate_main">
											다양한 투잡 <span class="name">조슬린</span>
										</p>
										<h3 class="talent_title">핸드메이드로 돈 벌자! 투잡에서 공방까지</h3>
										<div class="talent_info">
											<span class="user"><em>713명</em>이 찜했습니다!</span> <span
												class="average">4.9(36)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,28751);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="3" style="margin-right: 20px;"><a
								href="/vod/view/7624">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b79d4954df95b35271d7116540336f22ab0e7d38.png"></div>
									<div class="text_box">
										<p class="cate_main">
											PPT <span class="name">제이</span>
										</p>
										<h3 class="talent_title">실무에 가장 많이 쓰이는 PPT 디자인</h3>
										<div class="talent_info">
											<span class="user"><em>6,493명</em>이 찜했습니다!</span> <span
												class="average">4.9(347)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7624);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="4" style="margin-right: 20px;"><a
								href="/vod/view/37128">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b07c81dbc82e5b5bb7ee58383e6e9a7f59e9117d.png"></div>
									<div class="text_box">
										<p class="cate_main">
											엑셀 <span class="name">쏘피</span>
										</p>
										<h3 class="talent_title">실무에 진짜 필요한 엑셀 노하우</h3>
										<div class="talent_info">
											<span class="user"><em>10,518명</em>이 찜했습니다!</span> <span
												class="average">4.9(568)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,37128);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="5" style="margin-right: 20px;"><a
								href="/vod/view/7632">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/fe562403780b1588d4547ba577ca4e17cbd564cd.png"></div>
									<div class="text_box">
										<p class="cate_main">
											디자인 툴 <span class="name">빙각</span>
										</p>
										<h3 class="talent_title">디자인으로 배우는 실전 포토샵</h3>
										<div class="talent_info">
											<span class="user"><em>4,722명</em>이 찜했습니다!</span> <span
												class="average">4.9(144)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7632);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="6" style="margin-right: 20px;"><a
								href="/vod/view/19121">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/2c4fc14fcb35007598388a27c3aeead88e8b5c60.png"></div>
									<div class="text_box">
										<p class="cate_main">
											글쓰기 <span class="name">Stella</span>
										</p>
										<h3 class="talent_title">7년 차 금손 편집자 스텔라의 로맨스 웹소설 작가되기</h3>
										<div class="talent_info">
											<span class="user"><em>4,081명</em>이 찜했습니다!</span> <span
												class="average">4.9(311)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,19121);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="7" style="margin-right: 20px;"><a
								href="/vod/view/24233">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/e096d90c894d438de6aee6d2e225f025af70272a.png"></div>
									<div class="text_box">
										<p class="cate_main">
											보고서/발표 <span class="name">신가영</span>
										</p>
										<h3 class="talent_title">13년차 대기업 직장인의 인정 받는 보고서 작성법</h3>
										<div class="talent_info">
											<span class="user"><em>3,856명</em>이 찜했습니다!</span> <span
												class="average">5(104)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,24233);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="8" style="margin-right: 20px;"><a
								href="/vod/view/30563">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/c262f14cfa6677532b170f24a14fd18986d44008.png"></div>
									<div class="text_box">
										<p class="cate_main">
											다양한 투잡 <span class="name">정성희</span>
										</p>
										<h3 class="talent_title">영어 번역으로 디지털 노마드 되기</h3>
										<div class="talent_info">
											<span class="user"><em>946명</em>이 찜했습니다!</span> <span
												class="average">4.8(21)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,30563);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="9" style="margin-right: 20px;"><a
								href="/vod/view/26142">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b6d5317ff80fac8310a5b7789c6f72a2169e528c.png"></div>
									<div class="text_box">
										<p class="cate_main">
											기획·PM <span class="name">지수</span>
										</p>
										<h3 class="talent_title">‘진짜 성공’ 을 가져오는 제품&amp;서비스 기획</h3>
										<div class="talent_info">
											<span class="user"><em>1,946명</em>이 찜했습니다!</span> <span
												class="average">4.9(90)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,26142);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="10" style="margin-right: 20px;"><a
								href="/vod/view/7633">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/f909a6d6229978ff09ccbfe4de4f59944bc2faad.png"></div>
									<div class="text_box">
										<p class="cate_main">
											디자인 툴 <span class="name">문가든</span>
										</p>
										<h3 class="talent_title">한 번 배우면 평생 써먹는 일러스트 끝내기</h3>
										<div class="talent_info">
											<span class="user"><em>5,187명</em>이 찜했습니다!</span> <span
												class="average">4.8(175)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,7633);"></button></li>
							<li
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
								data-swiper-slide-index="11" style="margin-right: 20px;"><a
								href="/vod/view/21948">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/4ea12256a5df51e38a82044cd1527cc413fc8895.png"></div>
									<div class="text_box">
										<p class="cate_main">
											쇼핑몰 <span class="name">윤주</span>
										</p>
										<h3 class="talent_title">첫 달부터 매출나는 가장 쉬운 투잡, 구매대행</h3>
										<div class="talent_info">
											<span class="user"><em>4,682명</em>이 찜했습니다!</span> <span
												class="average">4.8(282)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,21948);"></button></li>
							<li
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
								data-swiper-slide-index="12" style="margin-right: 20px;"><a
								href="/vod/view/33749">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/84365e2bf439cc6a520540356e623014e7ac3392.png"></div>
									<div class="text_box">
										<p class="cate_main">
											부모/육아 <span class="name">김서연</span>
										</p>
										<h3 class="talent_title">매일매일 새롭고 재밌는 엄마표 놀이 만들기</h3>
										<div class="talent_info">
											<span class="user"><em>117명</em>이 찜했습니다!</span> <span
												class="average">5(13)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,33749);"></button></li>
							<li
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
								data-swiper-slide-index="13" style="margin-right: 20px;"><a
								href="/vod/view/19805">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/b302718049dbe1fed4bac3226b22150e8059db74.png"></div>
									<div class="text_box">
										<p class="cate_main">
											쇼핑몰 <span class="name">레이먼드</span>
										</p>
										<h3 class="talent_title">직장인 투잡 BEST 스마트스토어로 300 벌기</h3>
										<div class="talent_info">
											<span class="user"><em>3,204명</em>이 찜했습니다!</span> <span
												class="average">4.7(72)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,19805);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="14" style="margin-right: 20px;"><a
								href="/vod/view/18398">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/be8f216cca5e9342f6a9a22d47011c80b176b252.png"></div>
									<div class="text_box">
										<p class="cate_main">
											디지털드로잉 <span class="name">nini</span>
										</p>
										<h3 class="talent_title">아이패드 드로잉으로 나만의 이모티콘 만들기</h3>
										<div class="talent_info">
											<span class="user"><em>5,052명</em>이 찜했습니다!</span> <span
												class="average">4.9(207)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,18398);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="15" style="margin-right: 20px;"><a
								href="/vod/view/28175">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/d2f0d0668aedaa723683e5be7bcb3a9ded9cbd11.png"></div>
									<div class="text_box">
										<p class="cate_main">
											글쓰기 <span class="name">스테르담</span>
										</p>
										<h3 class="talent_title">하루 15분, 브런치로 베스트셀러 작가 되기</h3>
										<div class="talent_info">
											<span class="user"><em>1,755명</em>이 찜했습니다!</span> <span
												class="average">5(80)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,28175);"></button></li>
							<li class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="16" style="margin-right: 20px;"><a
								href="/vod/view/34121">
									<div class="thumb lazyload"
										data-bg="//img.taling.me/Content/Uploads/Images/ebaa1053a3e8d519bddc52314f478a075dfe191c.png"></div>
									<div class="text_box">
										<p class="cate_main">
											기획·PM <span class="name">도그냥</span>
										</p>
										<h3 class="talent_title">코딩 하나도 몰라도 이커머스 기획자로 취업하기</h3>
										<div class="talent_info">
											<span class="user"><em>371명</em>이 찜했습니다!</span> <span
												class="average">5(15)</span>
										</div>
									</div>
							</a>
								<button type="button" class="btn_wish "
									onclick="updateWish(this,34121);"></button></li>
						</ul>
						<div
							class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
							<span class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 1"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 2"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 3"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 4"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 5"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 6"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 7"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 8"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 9"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 10"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 11"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 12"></span><span
								class="swiper-pagination-bullet swiper-pagination-bullet-active"
								tabindex="0" role="button" aria-label="Go to slide 13"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 14"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 15"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 16"></span><span
								class="swiper-pagination-bullet" tabindex="0" role="button"
								aria-label="Go to slide 17"></span>
						</div>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>
					<!-- // vod_width_book -->
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
</body>
</html>