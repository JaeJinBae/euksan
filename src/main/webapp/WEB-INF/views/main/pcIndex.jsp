<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>억산한의원</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=3">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=0"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<style>
	body{
	
	}
	header{
		width:100%;
		min-width:1100px;
		margin:0 auto;
		position: relative;
		z-index: 99;
	}
	section{
		width:100%;
		min-width:1100px;
		margin:0 auto;
		position: relative;
		z-index: 9;
		margin-bottom:50px;
	}
	footer{
		width:100%;
	}
	.mainBanner, .mainBanner div{
		width:100%;
		min-width:1100px;
	}
	.mainBanner div img{
		width:100%;
	}
	.contentWrap{
		width:1100px;
		margin:0 auto;
	}
	.clinicWrap{
		width:100%;
		background: url("${pageContext.request.contextPath}/resources/images/clinicBg.png");
		padding-top:50px;
		margin-bottom:50px;
	}
	.clinicIntroImg{
		display:block;
		width:620px;
		margin:0 auto;
		margin-bottom:50px;
	}
	.clinicContentWrap{
		width:100%;
		overflow:hidden;
	}
	.clinic{
		width:275px;
		float:left;
		position: relative;
	}
	.clinic > img{
		width:275px;
	}
	.clinic > a{
		position: absolute;
		bottom:35px;
		left:25px;
	}
	.clinic > a > img{
		width:70px;
	}
	.clinic > a > img:hover{
		width:75px;
	}
	.secondContentWrap{
		width:100%;
		overflow:hidden;
		margin-bottom:50px;
	}
	.mainInfo{
		width:745px;
		height:303px;
		background: url("${pageContext.request.contextPath}/resources/images/infoBg.png");
		float:left;
	}
	.mainInfo > img{
		width:100%;
	}
	.mainNotice{
		width:335px;
		height:303px;
		background: url("${pageContext.request.contextPath}/resources/images/noticeBg.png");
		float:right;
	}
	/* .mainNotice > h1{
		font-family:NanumSRB;
	} */
	.mainNotice > .notice{
		width:305px;
		height:275px;
		margin:auto;
		margin-top:14px;
		background: #fff;
	}
	.notice > img{
		display:block;
		width:235px;
		margin:0 auto;
		padding-top:15px;
		margin-bottom:15px;
	}
	.tblNotice{
		width:255px;
		margin:0 auto;
	}
	.tblNotice td{
		font-size:15px;
		line-height: 33px;

	}
	.tblNotice .tblIcon{
		width:20px;
	}
	.tblTitle:hover > a{
		color:#333;
		font-weight:600;
	}
	.tblIcon > img{
		width:8px;
		margin-top:12px;
	}
	.tblDate{
		width:77px;
	}
	.noticeMoreBtn{
		display: block;
		width:30px;
		margin:0 auto;
		margin-top:11px;
	}
	.noticeMoreBtn > img{
		width:100%;
	}
	.bottomContentWrap{
		width:100%;
		overflow:hidden;
	}
	.bottomIntro{
		width:320px;
		float:left;
		position: relative;
	}
	.bottomIntro > img{
		width:280px;
	}
	.bottomContentText{
		position: absolute;
		top:140px;
		left:60px;
	}
	.bottomContentText > p{
		margin-top:19px;
		margin-left:20px;
		font-size:20px;
		font-weight:bold;
		color:#666;
		
	}
	.bottomSlider{
		float:right;
		width:750px;
	}
	.bottomSlider img{
		width:750px;
	}
</style>
<script type="text/javascript">
	$(function(){
		//메인 슬라이드
		$(".mainBanner").slick({
			arrows:false,
			dots:true,
			infinite:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000
		});
		
		//공지사항 버튼 마우스오버
		$(".noticeMoreBtn").hover(function(){
			$(".noticeMoreBtn > img").attr("src","${pageContext.request.contextPath}/resources/images/noticeBtn2.png");
		},function(){
			$(".noticeMoreBtn > img").attr("src","${pageContext.request.contextPath}/resources/images/noticeBtn.png");
		});
		
		//둘러보기 슬라이드 
		$(".bottomSlider").slick({
			arrows:true,
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
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
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
						<a href="${pageContext.request.contextPath}/intro1"><img src="${pageContext.request.contextPath}/resources/images/moreBtn.png" alt="통증클리닉 더보기"></a>
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
					<%-- <img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon.png">
					<h1>공지사항</h1> --%>
					<div class="notice">
						<img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon2.png">
						<table class="tblNotice">
							<tr>
								<td class="tblIcon"><img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon3.png"></td>
								<td class="tblTitle"><a href="">안녕하세요~ 억산입니다.</a></td>
								<td class="tblDate">2018.08.08</td>
							</tr>
							<tr>
								<td class="tblIcon"><img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon3.png"></td>
								<td class="tblTitle"><a href="">안녕하세요~ 억산입니다.</a></td>
								<td class="tblDate">2018.08.08</td>
							</tr>
							<tr>
								<td class="tblIcon"><img src="${pageContext.request.contextPath}/resources/images/mainNoticeIcon3.png"></td>
								<td class="tblTitle"><a href="">안녕하세요~ 억산입니다.</a></td>
								<td class="tblDate">2018.08.08</td>
							</tr>
						</table>
						<a class="noticeMoreBtn" href=""><img src="${pageContext.request.contextPath}/resources/images/noticeBtn.png"></a>
					</div><!-- notice end -->
				</div><!-- mainNotice end -->
			</div><!-- secondContentWrap end -->
			<div class="bottomContentWrap">
				<div class="bottomIntro">
					<img src="${pageContext.request.contextPath}/resources/images/mainBottomIcon.png">
					<div class="bottomContentText">
						<h1>한의원 둘러보기</h1>
						<p>따뜻하고 편안한 억산한의원</p>
					</div>
				</div>
				<div class="bottomSlider">
					<div><img src="${pageContext.request.contextPath}/resources/images/bottomContentImg1.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/bottomContentImg2.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/bottomContentImg3.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/bottomContentImg4.png" alt="억산한의원"></div>
				</div>
			</div><!-- bottomContentWrap end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>