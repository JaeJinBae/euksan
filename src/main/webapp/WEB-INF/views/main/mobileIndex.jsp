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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=3">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
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
		z-index: 1;
	}
	.mainBanner, .mainBanner div{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
		height:150px;
	}
	.clinicWrap{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/mainBg.png");
		padding-top:15px; 
		margin-bottom:20px;
	}
	.clinicIntroImg{
		display:block;
		width:75%;
		margin:0 auto;
		margin-bottom:20px;
	}
	.clinicContentWrap{
		width:100%;
		overflow:hidden;
	}
	.clinic{
		width:50%;
		float:left;
		position: relative;
	}
	.clinic > img{
		width:100%;
	}
	.clinic > a{
		position: absolute;
		bottom:35px;
		left:25px;
	}
	.clinic > a > img{
		width:50px;
	}
	.secondContentWrap{
		width:100%;
		margin-bottom:20px;
	}
	.mainInfo{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/infoBg.png");
		margin-bottom:20px;
	}
	.mainInfo > img{
		width:100%;
	}
	.mainNotice{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/noticeBg.png");
		padding:10px;
	}
	.mainNotice > .notice{
		width:100%;
		margin:0 auto;
		padding-bottom:10px;
		background: #fff;
	}
	/* .notice > img{
		display:block;
		width:100%;
		margin:0 auto;
		padding-top:15px;
		margin-bottom:15px;
	} */
	.notice > p{
		padding:25px 20px;
		padding-bottom:0;
		overflow:hidden;
		border-bottom: 2px solid lightgray;
		margin-bottom:10px;
	}
	.notice > p > img{
		float:left;
		width:88px;
	}
	.notice > p > a{
		float:right;
		width:25px;
	}
	.notice > p > span{
		display:inline-block;
		width:100%;
		text-align:left;
		font-size:15px;
		line-height:40px;
	}
	.notice > p > a > img{
		width:100%;
	}
	.tblNotice{
		width:100%;
		margin:0 auto;
	}
	.tblNotice td{
		font-size:15px;
		line-height: 25px;
	}
	.tblNotice .tblIcon{
		width:10px;
		padding-left:20px;
	}
	.tblIcon > img{
		width:10px;
		margin-top:7px;
	}
	.tblTitle{
		width:110px;
		overflow:hidden;
		white-space:nowrap;
		text-overflow: ellipsis;
	}
	.tblTitle > a {
		width:100%;
		font-size:15px;
	}
	.tblDate{
		width:45px;
		padding-left:10px;
		
	}
	.slick-dots{
		bottom:5px;
	}
	
</style>
<script>
	$(function(){
		//메인 슬라이드
		$(".mainBanner").slick({
			arrows:false,
			infinite:true,
			dots:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000
		});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/mHeader.jsp"></jsp:include>
	</header>
	<section id="main">
		<div class="mainBanner">
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlide01.png" alt="억산한의원"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlide02.png" alt="억산한의원"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlide03.png" alt="억산한의원"></div>
		</div><!-- mainBanner end -->
		<div class="contentWrap">
			<div class="clinicWrap">
				<img class="clinicIntroImg" src="${pageContext.request.contextPath}/resources/images/clinicIntro.png">
				<div class="clinicContentWrap">
					<div class="clinic">
						<img src="${pageContext.request.contextPath}/resources/images/mainClinic01.png">
						<a href="${pageContext.request.contextPath}/mAccidentClinic"><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="교통사고클리닉 더보기"></a>
					</div>
					<div class="clinic">
						<img src="${pageContext.request.contextPath}/resources/images/mainClinic02.png">
						<a href="${pageContext.request.contextPath}/mPainClinic1"><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="통증클리닉 더보기"></a>
					</div>
					<div class="clinic">
						<img src="${pageContext.request.contextPath}/resources/images/mainClinic03.png">
						<a href="${pageContext.request.contextPath}/mEuksanClinic1"><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="보양클리닉 더보기"></a>
					</div>
					<div class="clinic">
						<img src="${pageContext.request.contextPath}/resources/images/mainClinic04.png">
						<a href="${pageContext.request.contextPath}/mEuksanCare1"><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="일반클리닉 더보기"></a>
					</div>
				</div><!-- clinicContentWrap end -->
			</div><!-- clinicWrap end -->
			<div class="secondContentWrap">
				<div class="mainInfo">
					<img src="${pageContext.request.contextPath}/resources/images/infoImg.png">
				</div>
				<div class="mainNotice">
					<div class="notice">
						<%-- <img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon2.png"> --%>
						<p>
							<img src="${pageContext.request.contextPath}/resources/images/mobileMainNoticeIcon.png">
							<a class="noticeMoreBtn" href="${pageContext.request.contextPath}/mNotice"><img src="${pageContext.request.contextPath}/resources/images/noticeBtn.png"></a>
							<br>
							<span>억산한의원의 새로운 소식입니다.</span>
						</p>
						<table class="tblNotice">
							<c:choose>
							    <c:when test="${fn:length(list) == 0}">
						        	<tr>
						        		<td colspan="5" style=" text-align: center;">등록된 게시물이 없습니다.</td>
						        	</tr>
							    </c:when>
							    <c:otherwise>
							        <c:forEach var="item" items="${list}" end="2">
									<tr>
										<td class="tblIcon"><img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon3.png"></td>
										<td class="tblTitle"><a href="${pageContext.request.contextPath}/mNoticeRead?bno=${item.bno}">${item.title}</a></td>
										<td class="tblDate"><fmt:formatDate type="date" value="${item.regdate}"/></td>
									</tr>
								</c:forEach>
							    </c:otherwise> 
							</c:choose>
						</table>
					</div><!-- notice end -->
				</div><!-- mainNotice end -->
			</div><!-- secondContentWrap end -->
		</div>
	</section>
	<footer>
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
	</footer>
</body>
</html>