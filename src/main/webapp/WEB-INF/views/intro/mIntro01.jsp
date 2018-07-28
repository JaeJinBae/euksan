<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사말 | 억산한의원</title>
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
	}
	.contentMain > img{
		width:100%;
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
				<h1>한의원 소개</h1>
				<p>질환뿐만 아니라 마음까지 치료하는 억산한의원입니다.</p>
			</div><!-- clinicBgText end -->
		</div><!-- clinicBg end -->
		<div class="middleNav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/mMain"><img src="${pageContext.request.contextPath}/resources/images/mobileHomeIcon.png"> &nbsp;&nbsp;HOME</a></li>
				<li class="nextArrow"><img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_x1.png"></li>
				<li><a href="">한의원 소개</a></li>
				<li class="nextArrow"><img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_x1.png"></li>
				<li>인사말</li>
			</ul>
		</div>
		<div class="contentWrap">
			<div class="contentMain">
				<img src="${pageContext.request.contextPath}/resources/images/intro1.png">
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
	</footer>
</body>
</html>