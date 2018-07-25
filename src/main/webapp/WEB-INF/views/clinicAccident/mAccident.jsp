<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>억산한의원</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
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
		margin-top:25%;
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
	.sideMenuWrap{
		display:none;
		width:20%;
		margin-top:35px;
		float:left;
		position: relative;
	}.sideMenuWrap > img{
		width:100%;
	}
	.sideMenuTopText{
		position: absolute;
		top:36px;
		left:33px;
	}
	.sideMenuTopText > h1{
		font-family:궁서;
		color:#312322;
	}
	.sideMenuTopText > hr{
		border:0;
		border-top:5px solid #453534;
		width:50px;
		margin:0;
		margin-top:17px;
		margin-left:10px;
	}
	.sideMenuNav{
		width:100%;
	}
	.sideMenuNav > ul{
		width:95%;
		margin:0 auto;
		margin-top:25px;
	}
	.sideMenuNav > ul > li{
		padding:15px 0px 15px 15px;
		border-bottom:3px solid #999;
	}
	.sideMenuNav > ul > li:last-child{
		border:0;
		margin-bottom:25px;
	}
	.sideMenuNav > ul > li > a{
		font-family:NanumSRB;
		font-size:25px;
	}
	.sideMenuNav > img{
		width:200px;
		margin-top:10px;
	}
	.contentMain{
		width:100%;
		float:right;
	}
	.contentMain > img{
		width:102%;
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
				<li style="width:265px;"><a href="" style="font-weight:bold; ">교통사고 클리닉</a></li>
			</ul>
		</div>
		<div class="contentWrap"> 
			<div class="sideMenuWrap">
				<img src="${pageContext.request.contextPath}/resources/images/clinicSideMenuBg.png">
				<div class="sideMenuTopText">
					<h1>통증</h1>
					<h1>클리닉</h1>
					<hr>
				</div><!-- sideMenuTopText end -->
				<div class="sideMenuNav">
					<ul>
						<li><a href="">추나요법</a></li>
						<li><a href="">목·허리 디스크</a></li>
						<li><a href="">관절통증</a></li>
					</ul>
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTime.png">
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTel.png">
				</div>
			</div><!-- sideMenuWrap end -->
			<div class="contentMain">
				<img src="${pageContext.request.contextPath}/resources/images/painClinicContent011.png">
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
	</footer>
</body>
</html>