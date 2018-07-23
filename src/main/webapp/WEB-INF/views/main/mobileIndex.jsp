<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=3">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
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
		margin-top:25%;
		position: relative;
		z-index: 1;
	}
	.mainBanner, .mainBanner div{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	.clinicWrap{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/clinicBg.png");
		padding-top:50px;
		margin-bottom:50px;
	}
	.clinicIntroImg{
		display:block;
		width:75%;
		margin:0 auto;
		margin-bottom:50px;
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
		width:200px;
	}
	.secondContentWrap{
		width:100%;
		margin-bottom:50px;
	}
	.mainInfo{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/infoBg.png");
	}
	.mainInfo > img{
		width:100%;
	}
	.mainNotice{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/noticeBg.png");
		padding:21px;
	}
	.mainNotice > .notice{
		width:100%;
		margin:0 auto;
		padding-bottom:25px;
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
		overflow:hidden;
		border-bottom: 5px solid lightgray;
		margin-bottom:20px;
	}
	.notice > p > img{
		float:left;
	}
	.notice > p > span{
		font-size:32px;
		line-height:65px;
		margin-left:25px;
	}
	.notice > p > a{
		float:right;
		width:67px;
	}
	.notice > p > a > img{
		width:100%;
	}
	.tblNotice{
		width:100%;
		margin:0 auto;
	}
	.tblNotice td{
		font-size:32px;
		line-height: 60px;
	}
	.tblNotice .tblIcon{
		width:60px;
		padding-left:40px;
	}
	.tblIcon > img{
		width:15px;
		margin-top:20px;
	}
	.tblTitle{
		width:500px;
		overflow:hidden;
		white-space:nowrap;
		text-overflow: ellipsis;
	}
	.tblTitle > a {
		width:100%;
		font-size:37px;
	}
	.tblDate{
		width:140px;
	}
	
	
</style>
<script>
	$(function(){
		//메인 슬라이드
		$(".mainBanner").slick({
			arrows:false,
			infinite:true,
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
						<a href=""><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="교통사고클리닉 더보기"></a>
					</div>
					<div class="clinic">
						<img src="${pageContext.request.contextPath}/resources/images/mainClinic02.png">
						<a href="${pageContext.request.contextPath}/mIntro1"><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="통증클리닉 더보기"></a>
					</div>
					<div class="clinic">
						<img src="${pageContext.request.contextPath}/resources/images/mainClinic03.png">
						<a href=""><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="보양클리닉 더보기"></a>
					</div>
					<div class="clinic">
						<img src="${pageContext.request.contextPath}/resources/images/mainClinic04.png">
						<a href=""><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="일반클리닉 더보기"></a>
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
							<span>억산한의원의 새로운 소식입니다.</span>
							<a class="noticeMoreBtn" href=""><img src="${pageContext.request.contextPath}/resources/images/noticeBtn.png"></a>
						</p>
						<table class="tblNotice">
							<tr>
								<td class="tblIcon"><img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon3.png"></td>
								<td class="tblTitle"><a href="">안녕하세요~ 억산입니다. 지금은 게시판 테스트 중 입니다.</a></td>
								<td class="tblDate">2018.08.08</td>
							</tr>
							<tr>
								<td class="tblIcon"><img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon3.png"></td>
								<td class="tblTitle"><a href="">반갑습니다 지금은 억산 공지사항 테스트 입니다.</a></td>
								<td class="tblDate">2018.08.08</td>
							</tr>
							<tr>
								<td class="tblIcon"><img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon3.png"></td>
								<td class="tblTitle"><a href="">안녕하세요~ 억산입니다.</a></td>
								<td class="tblDate">2018.08.08</td>
							</tr>
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