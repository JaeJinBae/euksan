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
	*:not('.footer', '.tableWrap'){
		font-size:30px;
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
	}
	.tableWrap > table{
		width:95%;
		margin:100px auto;
	}
	.tableWrap > table tr{
		border-bottom:2px solid #e3e3e3;
	}
	.tableWrap > table tr:first-child{
		border-top:2px solid #5c4530;
		border-bottom:2px solid #e3e3e3;
	}
	.tableWrap > table tr:last-child{
		border-bottom:2px solid #5c4530;
	}
	.tableWrap > table td{
		text-align: left;
		font-size:30px;
		padding:10px;
	}
	.tableWrap > table tr:last-child td {
		font-size:14px;
	}
	.tableWrap > table td >h1{
		font-size:40px;
	}
	.golist{
		width:100%;
		text-align: right;
		margin-top:20px;
		padding:0 30px;
	}
	.golist a{
		display:inline-block;
		width:50px;
		height:24px;
		background: #5c4530;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
		text-align: center;
		line-height: 24px;
	}
	footer{
		/* width:100%;
		position:absolute;
		bottom:0; */
	}
</style>
<script type="text/javascript">
	$(function(){
		
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
							<td><h1>${item.title}</h1></td>
						</tr>
						<tr>
							<td>
								<span>작성자 : </span>${item.writer}
								<span>작성일 : </span><fmt:formatDate type="date" value="${item.regdate}"/>
								<span>조회 : </span>${item.cnt}
							</td>
						</tr>
						<tr>
							<td>${item.content}</td>
						</tr>
					</table>
				</div><!-- tableWrap end -->
				<p class="golist"><a href="${pageContext.request.contextPath}/mNotice${pageMaker.makeSearch(pageMaker.cri.page)}">목록</a></p> 
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
	</footer>
</body>
</html>