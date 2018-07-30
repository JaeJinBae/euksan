<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>억산한의원 관리자페이지</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	*{ 
		margin:0;
		padding:0;
	}
	a{
		display:inline-block;
		color:black;
		text-decoration: none;
	}
	#headerDiv #headerMenu #boardCtr{
		background: white;
		color:black;
	}
	.contentWrap{
		width:100%;
		min-width:1280px;
		/* height:700px; */
		margin:0 auto;
		padding:20px;
		background: lightgray;
		overflow: hidden;
	}
	.contentWrap .leftMenu{
		width:250px; 
		height:100%;
		margin-right:20px;
		padding-top:15px;
		padding-bottom:15px;
		border-radius: 10px; 
		float:left;
		text-align: center;
		background:white;;
	}
	.contentWrap .leftMenu h2{
		width:220px;
		margin:0 auto;
		margin-bottom:15px;
		background: url('${pageContext.request.contextPath}/resources/images/arrow2.gif') no-repeat 10px center;
		font-size:26px;
		font-weight:bold;
	}
	.contentWrap .leftMenu ul{
		width:80%;
		margin-left:40px;
		text-align: left;
	}
	.contentWrap .leftMenu ul li{
		list-style:none;
		margin-bottom:10px;
	}
	.contentWrap .leftMenu ul li:before{
		content:">";
	}
	.contentWrap .leftMenu ul li a{
		/* font-weight: bold; */
		font-size:17px;
	}
	.contentWrap .leftMenu ul li:first-child a{
		font-weight: bold;
	}
	.contentWrap .centerMenu{
		width:70%;
		min-width:700px;
		height:100%;
		border-radius:10px;
		float:left;
		background:white;
	}
	.boardTitle{
		width:90%;
		max-width:860px;
		margin:0 auto;
		font-size:20px;
		margin-top:33px;
	}
	
	/* 공지사항 */
	.tbl_board{
		width:1024px;
		height:700px;
		margin:0 auto;
		padding-top:30px;
		position:relative;
	}
	.tbl_board table{
		width:800px;
		margin:0 auto;
		border-collapse: collapse;
		font-size:0.95em; 
	}
	.tbl_board table .tbl_header th{
		border-top:2px solid #e3e3e3;
		border-bottom:2px solid #5c4530;
		padding:8px 5px;
	}
	.tbl_board table .tbl_header th:nth-child(2){
		width:400px;
	}
	.tbl_board table td{
		padding:8px 5px;
		border-bottom:1px solid #e3e3e3;
	}
	.tbl_board table tr:not(first-child) td:nth-child(2){
		text-align: left;
	}
	.tbl_board table td:not(.title){
		text-align: center;
	}
	.replyCnt{
		font-weight: 600;
	}
	.title>a:hover{
		color:red;
	}
	.title>img{
		width:12px;
	}
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
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
		font-size:1.1em;
		line-height: 40px;
	}
	/* readNotice */
	.notice_content{
		width:90%;
		margin:10px auto;
		padding:60px 20px;
		background: white;
	}
	.notice_content hr{
		width:100%;
		margin:0 auto;
		border:0;
		border-top:2px solid #5c4530;
	}
	.notice_content .nTitle{
		font-size:25px;
		text-align: left;
		padding:15px;
	}
	.notice_content .nRegdate{
		width:100%;
		text-align:left;
		border-top:1px solid lightgray;
		border-bottom:1px solid lightgray;
		padding:10px 0;	
		margin-bottom:50px;
	}
	.notice_content .nRegdate span{
		margin-left:15px;
	}
	.notice_content .nContent{
		margin-bottom:50px;
		padding:0 15px;
	}
	.btnDiv{
		text-align: right;
		margin-top:20px;
	}
	.btnDiv > a > button{
		border: 0;
	    background: #5c4530;
	    color: #fff;
	    border-radius: 3px;
	    width: 35px;
	    height:23px;
	}
</style>
</head>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>게시판 리스트</h2>
			<ul> 
				<li> <a href="${pageContext.request.contextPath}/admin/"> 공지사항</a></li>
				<li> <a href="${pageContext.request.contextPath}/admin/adminBroadcasting"> 언론보도</a></li>
				<li> <a href="${pageContext.request.contextPath}/admin/adminAdvice"> 진료/비용 상담</a></li>
			</ul>
		</div>
		<div class="centerMenu">
			<h1 class="boardTitle">&lt;공지사항 관리&gt;</h1>
			<div class="notice_content">
				<hr>
				<p class="nTitle">제목: ${item.title}</p>
				<p class="nRegdate"><span>작성일: <fmt:formatDate type="date" value="${item.regdate}"/></span></p>
				<div class="nContent">
					${item.content}
				</div>
				<hr>
				<p class="btnDiv">
					<a href="${pageContext.request.contextPath}/admin/adminNotice${pageMaker.makeSearch(pageMaker.cri.page)}"><button>목록</button></a>
					<a href="${pageContext.request.contextPath}/admin/adminNoticeUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}"><button>수정</button></a>
					<a href="${pageContext.request.contextPath}/admin/adminNoticeDelete${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}"><button>삭제</button></a>
				</p>
			</div><!-- notice_content end -->
		</div>
	</div>
</body>
</html>