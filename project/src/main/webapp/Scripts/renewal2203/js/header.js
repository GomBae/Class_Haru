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
function searchQuery2()
{
    query = $('input[name=query]').val();
    location.href = "/Home/Search/?query="+query;
}

function qPop(Id) {
    if(Id ==0)
    {
        var win = window.open('/My/Qnatutee', 'win', 'width=400, height=690, scrollbars=no, resizable=yes');
    }
    else
    {
        var win = window.open('/My/Qnatutor', 'win', 'width=400, height=690, scrollbars=no, resizable=yes');
    }
}

$(document).ready(function() {
    // gnb dropdown 메뉴
    $(document).on('click', '.nav_gnb .depth1', function() {
        if($(this).hasClass('open')) {
            $('.nav_gnb .depth1').removeClass('open');
        } else {
            $('.nav_gnb .depth1').removeClass('open');
            $(this).addClass('open');
        }
    });
    $(document).on('click', function(e) {
        if($(e.target).parents('.nav_gnb .depth').length < 1) {
            $('.nav_gnb .depth1').removeClass('open');
        }
    });

    // 검색창
    $(document).on('focus, click', '.search_area .search_input', function (e) {
        $('.box_keyword').addClass('act');
        $('.nav_gnb .depth1').removeClass('open');
        return false;
    });
    $(document).on('click', function(e){
        if(e.target.className == 'search_area') return false;
        $('.box_keyword').removeClass('act');
    });
    $(document).on('keyup', '.search_area .search_input', function (e) {
        let wordLength = $(this).val().length;
        var code = (e.keyCode ? e.keyCode : e.which);
        if (code==13) {
            e.preventDefault();
            $('#frm-search').attr('action', '/Home/Search/');
            $('#frm-search').attr('method', 'get');
            $('#frm-search input[name=query]').val($(this).val());
            $('#frm-search').submit();
        }
        if(wordLength > 0) {
            $('.box_keyword').addClass('act');
        } else {
            $('.box_keyword').removeClass('act');
        }
    });
    $(document).on('click', '.search_area .btn_search', function (e) {
        e.preventDefault();
        $('#frm-search').attr('action', '/Home/Search/');
        $('#frm-search').attr('method', 'get');
        $('#frm-search input[name=query]').val($('.search_area .search_input').val());
        $('#frm-search').submit();
    });

    // 헤더 Type Dark 스크롤시 헤더 고정
    if($('#header').hasClass('mode_dark')) {
        headerDarkFix();
        $(window).resize(function() {
            headerDarkFix();
        });
    }
});

function headerDarkFix() {
    $(window).scroll(function() {
        let windowTop = $(this).scrollTop();
        if(windowTop > 0) {
            $('#header').addClass('dark_fix');
        } else {
            $('#header').removeClass('dark_fix');
        }
    });
}
// 스크롤시 header 고정
function headerScroll(){
    $(window).scroll(function() {
        let windowTop = $(this).scrollTop();
        if(windowTop > 0) {
            $('#header').addClass('home_fix');
        } else {
            $('#header').removeClass('home_fix');
        }
    });
};

function profileImgError(el, isMode) {
    let replaceImgPath = '//front-img.taling.me/Content/Images/tutee_no_img.png';
    if (isMode == 1) {
        replaceImgPath = '//front-img.taling.me/Content/Images/tutor_no_img.png';
    } else if (isMode == 2) {
        replaceImgPath = '//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/518c97d6514e2e9b73b8647c0a52ea3dd5d51ed0.png';
    }
    $(el).attr('src',  replaceImgPath);
}