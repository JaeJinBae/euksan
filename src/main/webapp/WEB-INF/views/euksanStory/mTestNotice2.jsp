<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>억산한의원</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	html,body{
		/* height:inherit; */
	}
	body{
		/* position: relative; */
	}
	header{
		width:100%;
		position:fixed;
		top:0;
		background:rgba(255, 255, 255, 0.7);
		z-index: 999;
	} 
	section{
		width:100%;
		margin-top:25%;
		margin-bottom:100px;
		position: relative;
		z-index: 9;
	}
	.clinicBg{
		width:100%;
		margin:0 auto;
		position: relative;
	}
	.clinicBg > img{
		width: 100%;
	}
	.clinicBgText{
		width:350px;
		height:105px;
		margin:auto;
		text-align:center;
		position: absolute;
		top:0;
		right:0;
		bottom:0;
		left:0;
	}
	.clinicBgText > h1{
		color:white;
		font-size:50px;
		opacity:0.9;
		letter-spacing:2px;
		margin-bottom:20px;
		font-family:NanumSRB;
	}
	.clinicBgText > p{
		color:white;
		font-size:20px;
		opacity: 0.6;
		letter-spacing:0.7px;
		font-family:NanumSRR;
	}
	.middleNav{
		width:100%;
		background: #362719;
	}
	.middleNav > ul{
		overflow: hidden;
	}
	.middleNav > ul > li{
		width:200px;
		color:#fff;
		float:left;
		text-align: center;
		font-size:35px;
		padding:30px 20px;
	}
	.middleNav > ul > li > a{
		color:#fff;
	}
	.nextArrow{
		width:50px !important;
	}
	.contentWrap{
		width:100%;
		margin:0 auto;
		overflow:hidden;
	}
	.contentMain{
		width:100%;
	}
	.tableWrap{
		width:100%;
		margin:0 auto;
		margin-top:100px;
	}
	.tableWrap > table{
		width:95%;
		margin:0 auto;
	}
	.tableWrap > table tr:first-child{
		border-top:2px solid #e3e3e3;
		border-bottom:2px solid #5c4530;
	}
	.tableWrap > table th{
		font-size:30px;
		padding:12px 5px;
	}
	.tableWrap > table th:first-child{
		width:50px;
	}
	.tableWrap > table th:nth-child(2){
		width:385px;
	}
	.tableWrap > table th:nth-child(3){
		width:60px;
	}
	.tableWrap > table th:nth-child(4){
		width:90px;
	}
	.tableWrap > table th:last-child{
		width:45px;
	}
	.tableWrap > table td{
		text-align: center;
		font-size:25px;
		padding:10px 5px;
		border-bottom:1px solid #e3e3e3;
	}
	.tableWrap > table tr td:nth-child(2){
		text-align: left;
		padding-left:10px;
		overflow:hidden;
		white-space:nowrap;
		text-overflow:ellipsis;
	}
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
		margin-bottom:50px;
	}
	.page > ul{
		text-align: center;
	}
	.page ul li{
		width:45px;
		height:40px;
		margin:0 auto;
		list-style: none;
		display: inline-block;
		text-align:center;
		border:1px solid #e9e9e9;
	}
	.active1{
		background: #5c4530;
	}
	.active2{
		font-weight: bold;
		color:white;
	}
	.page ul li a{
		font-size:2em;
		line-height: 40px;
	}
	#searchBtn{
		width:65px;
		height:50px;
		background: #5c4530;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:25px;
	}
	.searchWrap{
		text-align: center;
	}
	.searchWrap > select{
		width:155px;
		height:50px;
		font-size:20px; 
	}
	.searchWrap > input{
		width:150px;
		height:50px;
		margin-left:12px;
		margin-right:12px;
	}
	footer{
		/* width:100%;
		position:absolute;
		bottom:0; */
	}
</style>
<script type="text/javascript">
	$(function(){
		//게시판 검색
        $("#searchBtn").click(function(){
        	var s=$("select[name='searchType']").val();
    		var searchType = encodeURIComponent(s);
    		var k=$("input[name='keyword']").val();
    		var keyword = encodeURIComponent(k);
    		location.href="mNotice${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
    	});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/mHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="clinicBg">
			<img src="${pageContext.request.contextPath}/resources/images/painClinicBg.png">
			<div class="clinicBgText">
				<h1>통증클리닉</h1>
				<p>통증에 따른 억산한의원의 클리닉</p>
			</div><!-- clinicBgText end -->
		</div><!-- clinicBg end -->
		<div class="middleNav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/mMain"><img src="${pageContext.request.contextPath}/resources/images/mobileHomeIcon.png"> &nbsp;&nbsp;HOME</a></li>
				<li class="nextArrow"><img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_x1.png"></li>
				<li><a href="">억산 이야기</a></li>
				<li class="nextArrow"><img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_x1.png"></li>
				<li style="font-weight:bold;">공지사항</li>
			</ul>
		</div>
		<div class="contentWrap">
			<div class="contentMain">
				<div class="tableWrap">
					<table>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>조회</th>
						</tr>
						<c:choose>
					    <c:when test="${fn:length(list) == 0}">
				        	<tr>
				        		<td colspan="5" style=" text-align: center;">등록된 게시물이 없습니다.</td>
				        	</tr>
					    </c:when>
					    <c:otherwise>
					        <c:forEach var="item" items="${list}">
								<tr>
									<td>${item.bno}</td>
									<td class="title"><a href="${pageContext.request.contextPath}/mNoticeRead${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}">${item.title}</a></td>
									<td>${item.writer}</td>
									<td><fmt:formatDate type="date" value="${item.regdate}"/></td>
									<td>${item.cnt}</td>
								</tr>	
							</c:forEach>
					    </c:otherwise> 
					</c:choose>
					</table>
					<div class="page">
						<ul>
							<c:if test="${pageMaker.prev}">
								<li><a href="${pageMaker.makeSearch(pageMaker.startPage-1) }">&laquo;</a></li>
							</c:if>
							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li ${pageMaker.cri.page == idx? 'class=active1':''}><a href="${pageMaker.makeSearch(idx)}" ${pageMaker.cri.page == idx? 'class=active2':''}>${idx}</a></li>
							</c:forEach>
							
							<c:if test="${pageMaker.next}">
								<li><a href="${pageMaker.makeSearch(pageMaker.endPage+1)}">&raquo;</a></li>
							</c:if>
							
						</ul>
					</div><!-- page end -->
					<div class="searchWrap">
						<select name="searchType">
							<option value="n">선택해주세요.</option>
							<option value="t" ${cri.searchType=='t'?'selected':''}>제목</option>
							<option value="c" ${cri.searchType=='c'?'selected':''}>내용</option>
							<option value="r" ${cri.searchType=='r'?'selected':''}>작성일</option>
						</select> 
						<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
						<button id="searchBtn">검색</button>
					</div>
				</div><!-- tableWrap end -->
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
	</footer>
</body>
</html>