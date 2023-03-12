<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.notice_insert').mouseover(function(){
		$(this).css('cursor', 'pointer')
		$(this).css('color', 'white')
		$(this).css('background-color', '#27375c')
	})
	
	$('.notice_insert').mouseout(function(){
		$(this).css('cursor', 'pointer')
		$(this).css('color', '#27375c')
		$(this).css('background-color', 'white')
	})
})
</script>
<style type="text/css">
.my_title {
	margin: 0px;
	margin-bottom: 10px;
	padding-bottom: 15px;
	border-bottom: 2px solid #E2E2E2;
}
#page_ul {
	list-style: none;
	display: block;
	text-align: center;
	margin-top: 35px;
}
.page_li {
  	display: inline-block;
}
.page_a {
    transition: all 100ms ease-in-out 0s;
    background-color: #dcdce0;
    border-radius: 5px 5px 5px 5px;
    color: #69696E;
    display: block;
    font: 12px/30px Arial, sans-serif;
    height: 30px;
    margin: 0px;
    overflow: hidden;
    text-align: center;
    text-decoration: none;
    width: 30px;
}
.page_a:hover {
    background-color: #27375C;
    color: #FFFFFF;
}
.page_li.active page_a {
    background-color: #27375C;
    color: #FFFFFF;
}
.page_li.active page_a:hover {
    color: #FFFFFF;
}
.li_active {
	background-color: #27375C;
	color: #FFFFFF;
	border-radius: 5px 5px 5px 5px;
	z-index: 2;
}
</style>
</head>
<body>
	<div class="col-11 my_title" style="display: flex; justify-content: space-between;">
		<h4>공지사항 관리</h4>
		<div class="notice_insert" id="insert" style="text-align:center; background-color: #fff; color:#27375C; width:100px; height: 30px; margin-right:35px; border: 1px solid #27375C">
			<i class="fa-solid fa-pen fa-sm"></i>&nbsp;공지등록
		</div>
	</div>
	<div class="col-11">
		<table class="table" style="table-layout: fixed;">
			<tr>
				<th width="15%" class="text-center">분류</th>
				<th width="45%" class="text-center">제목</th>
				<th width="15%" class="text-center">작성일</th>
				<th width="10%" class="text-center">조회수</th>
				<th width="15%" class="text-center">수정/삭제</th>
			</tr>
			<tr style="vertical-align: middle;">
				<td width="10%" class="text-center origin"><a href="../board/notice_detail.do?gnbno=${vo.gnbno }">${vo.prefix }</a></td>
				<td width="45%" class="text-center origin"><a href="../board/notice_detail.do?gnbno=${vo.gnbno }">${vo.subject }</a></td>
				<td width="15%" class="text-center origin"><a href="../board/notice_detail.do?gnbno=${vo.gnbno }">${today }</a></td>
				<td width="10%" class="text-center origin"><a href="../board/notice_detail.do?gnbno=${vo.gnbno }">${vo.hit }</a></td>
				<td width="15%" class="text-center origin">
				<span><img src="../img/revise.png" style="width:20px; height:20px;"></span>
				<span><img src="../img/trash.png" style="width:20px; height:20px;"></span>
				</td>
			</tr>
		</table>
	</div>
	<ul id="page_ul" style="padding-left: 0px; padding-right: 90px">
          <li class="page_li"><span class="page_a" data-page="${startPage-1 }" style="font-size: 10px; width: 20px">◀</span></li>
          <li class="page_li" ><span class="page_a${i==curpage?" li_active":"" }" data-page="${i }">${i }</span></li>          
          <li class="page_li"><span class="page_a" data-page="${endPage+1 }" style="font-size: 10px; width: 20px">▶</span></li>
    </ul>
</body>
</html>