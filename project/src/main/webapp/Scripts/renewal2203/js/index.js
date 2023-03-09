let talentsGroupId;
$(document).ready(function() {
    //헤더 스크롤 함수
    headerScroll();
    // roll_visual
    const slidesQuantity = $('.roll_visual').find('.swiper-slide').length;
    const rollVisual = new Swiper('.roll_visual.swiper-container', {
        effect: 'fade',
        speed: 1000,
        loop: true,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.swiper_btn_next',
            prevEl: '.swiper_btn_prev',
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        }
    });

    // .column_right sticky
    $.fn.stickyTopBottom = function(options = {}) {
        var $el, container_top, current_translate, element_top, last_viewport_top, viewport_height;
        // only works in browsers that support CSS3 transforms (i.e. IE9+)

        //# ##############
        //initialization
        options = $.extend({
            container: $('.main_content'), //reference element for starting and stopping the sticking (doesn't actually have to contain the element)
            top_offset: 0, //distance from top of viewport to stick top of element
            bottom_offset: 0 //distance from bottom of viewport to stick bottom of element
        }, options);
        $el = $(this);
        //Get the top of the reference element. If the container moves, would need to move this into scroll handler.
        //If the container is translated Y, then this method will fail I believe.
        container_top = options.container.offset().top;
        element_top = $el.offset().top;
        viewport_height = $(window).height();
        $(window).on('resize', function() {
            return viewport_height = $(window).height();
        });
        //# #################
        // The meat: scroll handler

        // When moving up or element is shorter than viewport:
        //    if scrolled above top of element, position top of element to top of viewport
        //      (stick to top)
        // When moving down:
        //    if scrolled past bottom of element, position bottom of element at bottom of viewport
        //      (stick to bottom)
        current_translate = 0;
        last_viewport_top = document.documentElement.scrollTop || document.body.scrollTop;
        return $(window).scroll(function(event) {
            var container_bottom, effective_viewport_bottom, effective_viewport_top, element_fits_in_viewport, element_height, is_scrolling_up, new_translation, viewport_bottom, viewport_top;
            viewport_top = document.documentElement.scrollTop || document.body.scrollTop;
            viewport_bottom = viewport_top + viewport_height;
            effective_viewport_top = viewport_top + options.top_offset;
            effective_viewport_bottom = viewport_bottom - options.bottom_offset;
            // Need to reset element's height each scroll event because it may have change height
            // since initialization.
            // Warning: checking height is performance no-no
            element_height = $el.height();
            is_scrolling_up = viewport_top < last_viewport_top;
            element_fits_in_viewport = element_height < viewport_height;
            new_translation = null;
            if (is_scrolling_up) {
                if (effective_viewport_top < container_top) { // if we're scrolled past container top
                    new_translation = 0;
                } else if (effective_viewport_top < element_top + current_translate) {
                    new_translation = effective_viewport_top - element_top;
                }
            } else if (element_fits_in_viewport) {
                if (effective_viewport_top > element_top + current_translate) {
                    new_translation = effective_viewport_top - element_top; // scrolling down
                }
            } else {
                container_bottom = container_top + options.container.height(); //warning: checking height is performance no-no
                if (effective_viewport_bottom > container_bottom + 100) { //scrolled past container bottom
                    new_translation = container_bottom - (element_top + element_height);
                } else if (effective_viewport_bottom > element_top + element_height + current_translate + 100) {
                    new_translation = effective_viewport_bottom - (element_top + element_height) - 100;
                }
            }
            if (new_translation !== null) {
                current_translate = new_translation;
                $el.css('transform', `translate(0, ${current_translate}px)`);
            }
            return last_viewport_top = viewport_top;
        });
    };
    $('#stick').stickyTopBottom({
        container: $('.main_content')
    });

    // talent_list (publishing>index에 있는 슬라이드만 넣어두었음)
    const thisWeek = new Swiper('.swiper_this_week', {
        spaceBetween: 15,
        slidesPerView: 3,
        freeMode: true,
        nested: true,
        resistance: true,
        observe: true,
        observeParents: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
    const popularClass = new Swiper('.swiper_popular_class', {
        spaceBetween: 15,
        slidesPerView: 3,
        freeMode: true,
        nested: true,
        resistance: true,
        observe: true,
        observeParents: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
    const popularOneday = new Swiper('.swiper_popular_oneday', {
        spaceBetween: 15,
        slidesPerView: 3,
        freeMode: true,
        nested: true,
        resistance: true,
        observe: true,
        observeParents: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
    // high_score
    const highScore = new Swiper('.high_score', {
        spaceBetween: 15,
        slidesPerView: 6,
        freeMode: true,
        nested: true,
        resistance: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    // banner_mini
    const bannerMini = new Swiper('.banner_area .style_mini', {
        spaceBetween: 15,
        slidesPerView: 5,
        freeMode: true,
        nested: true,
        resistance: true,
        observe: true,
        observeParents: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
    // banner_big
    const bannerBig = new Swiper('.banner_area .style_big', {
        spaceBetween: 12,
        slidesPerView: 3,
        freeMode: true,
        nested: true,
        resistance: true,
        observe: true,
        observeParents: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
    // banner_line
    const bannerline = new Swiper('.banner_area .style_line', {
        speed: 1000,
        loop: true,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        }
    });
    // banner_contents
    const bannerContents = new Swiper('.banner_area .style_contents', {
        spaceBetween: 16,
        slidesPerView: 2,
        freeMode: true,
        nested: true,
        resistance: true,
        observe: true,
        observeParents: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    // vod_width_book
    const vodWidthBook = new Swiper('.vod_width_book', {
        spaceBetween: 20 ,
        slidesPerView: 'auto',
        centerInsufficientSlides: true,
        speed: 1000,
        autoplay: {
            delay: 3000,
        },
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
    });

    // review_list
    const reviewList = new Swiper('.review_list', {
        spaceBetween: 20,
        slidesPerView: 'auto',
        centerInsufficientSlides: true,
        speed: 1000,
        autoplay: {
            delay: 3000,
        },
        loop: true,
    });

    // logout click event
    $(document).on('click', '#btn-menu-logout', function () {
        $.ajax({
            url: '/Account/Logout.php',
            method: 'post',
            data: null,
            success: function (response) {
                location.href = '/';
            }
        })
    });

    // 튜터모드 전환
    $(document).on('click', 'button.tutor_mode', function () {

        let currentMode = $('#mode').val();
        let isTutor = $(this).data('tutormode');
        let toggleMode = (parseInt(currentMode) == 1) ? '' : 'tutor';
        if (parseInt(isTutor) == 1) {
            $.ajax({
                url: '/Account/changeTutorMode.php',
                type: 'POST',
                data: {mode:toggleMode},
                dataType: 'json',
                success: function (response) {
                    if (!!response && response.result == 'success') {
                        //튜터모드 전환 토글 버튼 애니메이션
                        if($('.tutor_mode').hasClass('on')){
                            $('.tutor_mode').removeClass('on');
                        } else {
                            $('.tutor_mode').addClass('on');
                        };
                        location.reload();
                    } else {
                        if (confirm('튜터로 먼저 등록하셔야 합니다.\n등록하시겠습니까?')) {
                            location.href = '/tutor/Register/Manual';
                        }
                    }
                }
            });
        } else {
            $('.tutor_mode.on').removeClass('on');
            if (confirm('튜터로 먼저 등록하셔야 합니다.\n등록하시겠습니까?')) {
                location.href = '/tutor/Register/Manual';
            }
        }
    });

    //알림 api연동
    $.ajax({
        type: 'GET',
        url: '/api3/account/badgeCount.php',
        success: function (data) {
            const obj = JSON.parse(data);
            if(obj.result =="success"){
                const badgeTutuee = obj.data.tutee;
                const badgeTutor = obj.data.tutor;
                if(badgeTutor.qna > 0 || badgeTutor.space > 0){
                    $('.chat_tutor').addClass('act')
                }
                if(badgeTutuee.qna > 0 || badgeTutuee.space > 0){
                    $('.chat_tutee').addClass('act')
                }

            }else{
                return false;
            }
        },
        error: function(response) {
            console.log("조회가 실패하였습니다.");
            return false;
        }
    });

    $('.btn_coupon button').on('click', function() {
        let idx = $('.btn_coupon button').index(this);
        $('#coupon').attr('data-index',idx);
        var couponPointTab = idx==0 ? "coupon" : "point";
        couponPointPop(couponPointTab);
    });
});

// 쿠폰/포인트 통합 팝업
function couponPointPop(couponPointTab) {
    let popUrl = "/coupon/couponPointList/0/"+couponPointTab;
    if(couponPointTab=="coupon") {
        var targetTitle = "내 쿠폰";
    } else {
        var targetTitle = "포인트함";
    }
    let popWidth = 398;
    let popHeight = 788;

    // 듀얼 모니터 기준 가운데 정렬
    let winWidth = document.body.clientWidth;
    let winHeight = screen.availHeight;
    let winX = window.screenX || window.screenLeft || 0;
    let popLeft = winX + (winWidth - popWidth) / 2;
    let popTop = (winHeight / 2) - (popHeight / 2);

    let options = 'width=' + popWidth + ', height=' + popHeight + ', left=' + popLeft + ', top=' + popTop + ', menubar=no, toolbar=no, status=no'
    window.open(popUrl, targetTitle, options);
}

// 쿠폰 팝업
function couponPop() {
    let popUrl = "/coupon/couponList/0";
    let targetTitle = "쿠폰함";
    let popWidth = 398;
    let popHeight = 725;

    // 듀얼 모니터 기준 가운데 정렬
    let winWidth = document.body.clientWidth;
    let winHeight = screen.availHeight;
    let winX = window.screenX || window.screenLeft || 0;
    let popLeft = winX + (winWidth - popWidth) / 2;
    let popTop = (winHeight / 2) - (popHeight / 2);

    let options = 'width=' + popWidth + ', height=' + popHeight + ', left=' + popLeft + ', top=' + popTop + ', menubar=no, toolbar=no, status=no'
    window.open(popUrl, targetTitle, options);
}

function qPop(mode) {
    if (mode == 0) {
        var win = window.open('/My/Qnatutee', 'win', 'width=400, height=690, scrollbars=no, resizable=yes');
    } else {
        var win = window.open('/My/Qnatutor', 'win', 'width=400, height=690, scrollbars=no, resizable=yes');
    }
}

document.addEventListener('lazybeforeunveil', function (e) {
    let bg = e.target.getAttribute('data-bg');
    let ajax = e.target.getAttribute('ajax');

    if (!!bg) {
        if ($(e.target).hasClass('profile')) {
            e.target.style.backgroundImage = 'url(' + bg + '), url(//front-img.taling.me/Content/Images/tutor_no_img.png)';
        } else {
            e.target.style.backgroundImage = 'url(' + bg + ')';
        }

    }

    if (!!ajax) {
        let selectedSwiperClass = e.target.getAttribute('selector');
        $.ajax({
            url: ajax,
            method: 'get',
            dataType:'html',
            success: function (response) {
                $(e.target).find('.swiper-wrapper').html(response);
                let tempSwiper = new Swiper(selectedSwiperClass, {
                    spaceBetween: 15,
                    slidesPerView: 3,
                    freeMode: true,
                    nested: true,
                    resistance: true,
                    observe: true,
                    observeParents: true,
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },
                });
                talentsGroupId.updateAutoHeight();
            }
        });
    }
});

// 찜하기 기능
function updateWish(obj,talentId){
    var $this = $(obj);
    var on = $this.hasClass('act');
    var p = [];
    p.push('talentId='+talentId);
    var pars = p.join('&');

    $.ajax({
        type: 'GET',
        url: '/api3/wish/updateWish.php',
        contentType: false,
        data: pars,
        processData: false,
        success: function (data) {
            isUploading = false;
            var obj = JSON.parse(data);

            if(obj.result =="success"){
                if(obj.reason == "insert"){
                    $this.addClass('act');
                    alert('찜에 등록 되었습니다');
                }else{
                    $this.removeClass('act');
                    alert('찜에서 삭제 되었습니다');
                }

            }else{
                alert("로그인후 사용가능합니다.");
                location.href = '/Account/LoginPage.php'
                return false;
            }
        },
        error: function(response) {
            alert('찜에서 처리중 오류가 발생하였습니다.');
            return false;
        }
    });
}

function traceClick(bannerType, bannerId) {
    $.ajax({
        type: 'GET',
        url: '/api3/banner/trace.php',
        contentType: 'json',
        data: { bannerType: bannerType, bannerId: bannerId },
        success: function (data) {
        },
        error: function(response) {
        }
    });
}

$(document).ready(function(){
    $.ajax({
        type: 'GET',
        url: '/api3/home/iconCurationList.php',
        contentType: 'json',
        success: function(response) {
            response = JSON.parse(response);
            let {data} = response;
            if (response.result === 'success') {
                $('#homeIconCuration').show();
                data.list.forEach(function(curation, index){
                    let curationHtml = '';
                    curationHtml += `<li>`;
                    curationHtml += `<a href="${curation.weblinkValue}">`;
                    curationHtml += `<span style="background-image: url(${curation.coverThumbnailUrl})"></span>${curation.name}</a>`;
                    curationHtml += `</li>`;
                    $('#homeIconCuration .list_category').append(curationHtml);
                });
            } else {
                $('#homeIconCuration').hide();
                return false;
            }
        },
        error: function(response) {
            $('#homeIconCuration').hide();
        },
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