$(document).ready(function() {

        $(document).on('click', 'ul.select_list > li > button', function(){
            let noneDisableClassType = [1,2];
            if($('input[name=classType]:checked').length > 0) {
                // tType
                $('input[name=tType]').attr('disabled', true);
                // region
                $('.filter_region form').hide();
                $('.filter_region .noti_possible').show();
                // shedule
                $('.filter_schedule form').hide();
                $('.filter_schedule .noti_possible').show();
            } else {
                // tType
                $('input[name=tType]').attr('disabled', false);
                // region
                $('.filter_region form').show();
                $('.filter_region .noti_possible').hide();
                // schedule
                $('.filter_schedule form').show();
                $('.filter_schedule .noti_possible').hide();
            }

            let hasNoneDisableClassType = false;
            $('input[name=classType]:checked').each(function(index, el){
                if (noneDisableClassType.includes(parseInt($(el).val()))) {
                    hasNoneDisableClassType = true;
                }
            });

            if(hasNoneDisableClassType) {
                // tType
                $('input[name=tType]').attr('disabled', false);
                // region
                $('.filter_region form').show();
                $('.filter_region .noti_possible').hide();
                // schedule
                $('.filter_schedule form').show();
                $('.filter_schedule .noti_possible').hide();
            } else {
                $('input[name=tType]:checked').attr('checked', false);
                $('#btn_reset_region').click();
                $('#btn_reset_schedule').click();
                // $('li.region_main > input:checked').attr('checked', false);
                // $('li.region_sub > input:checked').attr('checked', false);
                // $('input[name=day]:checked').attr('checked', false);
                // $('input[name=time]:checked').attr('checked', false);
            }
        });
        $(document).on('click', '.del_search_field', function(evt) {
            let viewType = $(this).data('viewType');
            let code = $(this).data('code');

            if (viewType === 'cateMain') {
                $('li.cate_main.act').removeClass('act');
            } else if (viewType === 'cateSub') {
                $('li.cate_sub.act').removeClass('act');
            } else if (viewType === 'classTypeCode') {
                $('input[name=classType]:checked').each(function(idx, data) {
                    if (parseInt($(data).val()) === parseInt(code)) {
                        $(data).attr('checked', false);
                    }
                });
            } else if (viewType === 'tType') {
                $('input[name=tType]:checked').each(function(idx, data) {
                    if (parseInt($(data).val()) === parseInt(code)) {
                        $(data).attr('checked', false);
                    }
                });
            } else if (viewType === 'regionMain') {
                $('li.region_main > input:checked').each(function(idx, data) {
                    if (parseInt($(data).data('id')) === parseInt(code)) {
                        $(data).attr('checked', false);
                    }
                });
            } else if (viewType === 'region') {
                $('li.region_sub > input:checked').each(function(idx, data) {
                    if (parseInt($(data).data('id')) === parseInt(code)) {
                        $(data).attr('checked', false);
                    }
                });
            } else if (viewType === 'day') {
                $('input[name=day]:checked').each(function(idx, data) {
                    if (parseInt($(data).val()) === parseInt(code)) {
                        $(data).attr('checked', false);
                    }
                });
            } else if (viewType === 'time') {
                $('input[name=time]:checked').each(function(idx, data) {
                    if (parseInt($(data).val()) === parseInt(code)) {
                        $(data).attr('checked', false);
                    }
                });
            }

            $(this).remove();
            $('main .btn_search')[0].click();
        });

        $('main').on('click', '.btn_search, .sub_content>ul>li', function(evt) {
            evt.preventDefault();
            let searchParams = [];
            let query = '';
            if (typeof $('#searchcss').val() != 'undefined') {
                query = $('#searchcss').val();
            }

            // query
            searchParams.push('query=' + query);

            // cateMain
            if (typeof $(this).data('tier2') != 'undefined' || typeof $(this).data('tier3') != 'undefined') {
                let cateMain = $(this).data('tier2');
                let cateSub = $(this).data('tier3');

                if (typeof cateMain != 'undefined' && !!cateMain) {
                    searchParams.push('cateMain=' + cateMain);
                }
                if (typeof cateSub != 'undefined' && !!cateSub) {
                    searchParams.push('cateSub=' + cateSub);
                }
            } else {
                let cateMain = $('li.cate_main.act').data('tier2');
                let cateSub = $('li.cate_sub.act').data('tier3');

                if (typeof cateMain != 'undefined' && !!cateMain) {
                    searchParams.push('cateMain=' + cateMain);
                }
                if (typeof cateSub != 'undefined' && !!cateSub) {
                    searchParams.push('cateSub=' + cateSub);
                }
            }


            let classTypeList = [];
            $('input[name=classType]:checked').each(function(idx, data) {
                classTypeList.push($(data).val());
            });
            if (classTypeList.length > 0) {
                searchParams.push('classTypeCode=' + classTypeList.join(','));
            }

            // tType
            let tTypeList = [];
            $('input[name=tType]:checked').each(function(idx, data) {
                tTypeList.push($(data).val());
            });
            if (tTypeList.length > 0) {
                searchParams.push('tType=' + tTypeList.join(','));
            }

            let regionMainList = [];
            $('li.region_main > input:checked').each(function(idx, data) {
                regionMainList.push($(data).data('id'));
            });
            if (regionMainList.length > 0) {
                searchParams.push('regionMain=' + regionMainList.join(','));
            }

            let regionSubList = [];
            $('li.region_sub > input:checked').each(function(idx, data) {
                regionSubList.push($(data).data('id'));
            });
            if (regionSubList.length > 0) {
                searchParams.push('region=' + regionSubList.join(','));
            }

            // day
            let dayList = [];
            $('input[name=day]:checked').each(function(idx, data) {
                dayList.push($(data).val());
            });
            if (dayList.length > 0) {
                searchParams.push('day=' + dayList.join(','));
            }

            // time
            let timeList = [];
            $('input[name=time]:checked').each(function(idx, data) {
                timeList.push($(data).val());
            });
            if (timeList.length > 0) {
                searchParams.push('time=' + timeList.join(','));
            }

            // console.log('/Home/Search/?' + searchParams.join('&'))
            // return
            location.href = '/Home/Search/?' + searchParams.join('&');
        });

        $(document).on('click', 'input[name=classType]', function(){
            let noneDisableClassType = [1,2];
            if($('input[name=classType]:checked').length > 0) {
                // tType
                $('input[name=tType]').attr('disabled', true);
                // region
                $('.filter_region form').hide();
                $('.filter_region .noti_possible').show();
                // shedule
                $('.filter_schedule form').hide();
                $('.filter_schedule .noti_possible').show();
            } else {
                // tType
                $('input[name=tType]').attr('disabled', false);
                // region
                $('.filter_region form').show();
                $('.filter_region .noti_possible').hide();
                // schedule
                $('.filter_schedule form').show();
                $('.filter_schedule .noti_possible').hide();
            }

            let hasNoneDisableClassType = false;
            $('input[name=classType]:checked').each(function(index, el){
                if (noneDisableClassType.includes(parseInt($(el).val()))) {
                    hasNoneDisableClassType = true;
                }
            });

            if(hasNoneDisableClassType) {
                // tType
                $('input[name=tType]').attr('disabled', false);
                // region
                $('.filter_region form').show();
                $('.filter_region .noti_possible').hide();
                // schedule
                $('.filter_schedule form').show();
                $('.filter_schedule .noti_possible').hide();
            } else {
                $('input[name=tType]:checked').attr('checked', false);
                $('#btn_reset_region').click();
                $('#btn_reset_schedule').click();
                // $('li.region_main > input:checked').attr('checked', false);
                // $('li.region_sub > input:checked').attr('checked', false);
                // $('input[name=day]:checked').attr('checked', false);
                // $('input[name=time]:checked').attr('checked', false);
            }
        });
    });

open_os = "web";
const link = location.pathname;
// 클릭 작동
function go_to_B2Bpage(){
    $("#b2b_pixel_img").attr("src", "/Event/pixel.png?d=1_"+open_os+"_"+link+"_click");
    location.href="/B2B/main";
}
// 주단위 닫기.
function layerClose_Week()
{
    $("#b2b_pixel_img").attr("src", "/Event/pixel.png?d=1_"+open_os+"_"+link+"_closeweek");
    $("#B2BLandingPopup").hide();

    let cookie_end_date = new Date();
    cookie_end_date.setDate(cookie_end_date.getDate() + 7);
    cookie_end_date.setHours(23, 59, 59, 999);
    $.cookie('B2B_LANDING_POPUP', '1', {expires:cookie_end_date, path:'/'}); // 일주일동안 쿠키 유지
}
// 로딩시 쿠키 여부에 따라 팝업 노출
$(function(){
    if($.cookie('B2B_LANDING_POPUP') != '1'){
        $("#B2BLandingPopup").show();
        $("#b2b_pixel_img").attr("src", "/Event/pixel.png?d=1_"+open_os+"_"+link+"_view");
    }
});

jQuery.cookie = function (key, value, options) {

    // key and at least value given, set cookie...
    if (arguments.length > 1 && String(value) !== "[object Object]") {
        options = jQuery.extend({}, options);

        if (value === null || value === undefined) {
            options.expires = -1;
        }

        if (typeof options.expires === 'number') {
            var days = options.expires, t = options.expires = new Date();
            t.setDate(t.getDate() + days);
        }

        value = String(value);

        return (document.cookie = [
            encodeURIComponent(key), '=',
            options.raw ? value : encodeURIComponent(value),
            options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
            options.path ? '; path=' + options.path : '',
            options.domain ? '; domain=' + options.domain : '',
            options.secure ? '; secure' : ''
        ].join(''));
    }

    // key and possibly options given, get cookie...
    options = value || {};
    var result, decode = options.raw ? function (s) { return s; } : decodeURIComponent;
    return (result = new RegExp('(?:^|; )' + encodeURIComponent(key) + '=([^;]*)').exec(document.cookie)) ? decode(result[1]) : null;
};