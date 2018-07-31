<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>온라인 상담 | 억산한의원</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	body{
		
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
		margin-top:22%;
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
		height:150px;
	}
	.clinicBgText{
		width:100%;
		height:55px;
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
		font-size:20px;
		opacity:0.9;
		letter-spacing:2px;
		margin-bottom:15px;
		font-family:NanumSRR;
	}
	.clinicBgText > p{
		color:white;
		font-size:15px;
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
		width:100%;
	}
	.middleNav > ul > li{
		color:#fff;
		float:left;
		text-align: center;
		font-size:15px;
		padding:15px 10px;
	}
	.middleNav > ul > li > a > img{
		width:20px;
	}
	.middleNav > ul > li > a{
		color:#fff;
	}
	.nextArrow{
		padding:15px 5px !important;
	}
	.nextArrow > img{
		width:10px;
	}
	.contentWrap{
		width:100%;
		margin:0 auto;
	}
	.contentMain{
		width:100%;
		margin-bottom:50px;
	}
	.tableWrap{
		width:100%;
		margin:0 auto;
		margin-top:30px;
	}
	.custom{
		width:98%;
		margin:0 auto;
	}
	.custom > table{
		width:100%;
		margin:0 auto;
		border-top:3px solid lightgray;
		border-bottom:2px solid #e3e3e3;
		text-align:left;
	}
	.custom > table td{
		padding:10px 15px;
		font-size:12px;
		display:inline-block;
	}
	.custom > table tr:last-child td{
		padding: 10px 4px;
	}
	.boardTitle{
		font-size:18px;
	}
	.custom > table tr:last-child td:first-child{
		padding-left:15px;
	}
	.custom>table tr:first-child td{
		border-bottom:2px solid #e3e3e3;
		width:100%;
	}
	.customContent{
		width:100%;
		margin:0 auto;
		padding:20px 15px;
		text-align: left;
		border-bottom:3px solid lightgray;
	}
	.btnWrap{
		margin-top:50px;
		text-align: right;
	}
	.btnWrap button{
		width:50px;
		height:24px;
		background: #5c4530;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	.reply{
		width:98%;
		margin:100px auto;
	}
	.reply > table{
		width:100%;
		margin:0 auto;
		border-top:3px solid lightgray;
		border-bottom:2px solid #e3e3e3;
		text-align:left;
	}
	.reply > table td{
		padding:10px 15px;
		font-size:12px;
		display:inline-block;
	}
	.reply > table tr:last-child td{
		padding: 10px 4px;
	}
	.boardTitle{
		font-size:18px;
	}
	.reply > table tr:last-child td:first-child{
		padding-left:15px;
	}
	.reply > table tr:first-child td{
		border-bottom:2px solid #e3e3e3;
		width:100%;
	}
	.replyContent{
		width:100%;
		max-width:970px;
		margin:0 auto;
		padding:20px 15px;
		text-align: left;
		border-bottom:3px solid lightgray;
	}
	.replyContent img{
		max-width:300px;
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
			<img src="${pageContext.request.contextPath}/resources/images/euksanStoryBg.png">
			<div class="clinicBgText">
				<h1>억산이야기</h1>
				<p>환자와 소통하며 편하게 다가가는 억산이야기</p>
			</div><!-- clinicBgText end -->
		</div><!-- clinicBg end -->
		<div class="middleNav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/mMain"><img src="${pageContext.request.contextPath}/resources/images/mobileHomeIcon.png"> &nbsp;&nbsp;HOME</a></li>
				<li class="nextArrow"><img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_x1.png"></li>
				<li><a href="${pageContext.request.contextPath}/mNotice">억산 이야기</a></li>
				<li class="nextArrow"><img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_x1.png"></li>
				<li><a href="${pageContext.request.contextPath}/mAdvice">온라인 상담</a></li>
			</ul>
		</div>
		<div class="contentWrap">
			<div class="contentMain">
				<div class="tableWrap">
					<div class="custom">
						<table>
							<tr>
								<td colspan="4"><h1 class="boardTitle">${item.title}</h1></td>
							</tr>
							<tr>
								<td>작성자: ${item.writer}</td>
								<td>등록일: <fmt:formatDate type="date" value="${item.regdate}"/>
								<td>답변상태: ${item.state}</td>
								<td>조회: ${item.cnt}</td>
							</tr>
						</table>
						<div class="customContent">
							${item.content}
						</div>
						<div class="btnWrap">
							<a href="${pageContext.request.contextPath}/mAdvice${pageMaker.makeSearch(pageMaker.cri.page)}" class="btn"><button>목록</button></a>
							<!-- <a href="adviceUpdate"><button>수정</button></a>
							<a href="adviceDelete"><button>삭제</button></a> -->
							<c:if test="${item.pwtype=='x'}">
								<a href="${pageContext.request.contextPath}/mAdviceUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}"><button>수정</button></a>
								<a href="${pageContext.request.contextPath}/mAdviceDelete${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}"><button>삭제</button></a>
							</c:if>
						</div>
					</div><!-- custom end -->
					<div class="reply">
						<c:if test="${item.state=='답변완료'}">
							<table>
								<tr>
									<td colspan="4"><h1 class="boardTitle">Re] ${item.title}</h1></td>
								</tr>
								<tr>
									<td>작성자: 관리자</td>
									<td>답변일: <fmt:formatDate type="date" value="${reply.regdate}"/></td>
									<td>답변상태: 답변완료</td>
									<td>조회수: ${item.cnt}</td>
								</tr>
							</table>
						<div class="replyContent">
							${reply.replytext}
						</div>
						</c:if>				
					</div><!-- reply end -->
				</div><!-- tableWrap end --> 
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
	</footer>
</body>
</html>