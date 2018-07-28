<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료안내 | 억산한의원</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	body{
		
	}
	header{
		width:100%;
		margin:0 auto;
		position: relative;
		z-index: 99;
	} 
	section{
		widht:100%;
		min-width:1100px;
		margin:0 auto;
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
		width:100%;
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
	.contentWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
	}
	.sideMenuWrap{
		width:200px;
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
		font-size:35px;
		font-weight:500;
	}
	.sideMenuTopText > hr{
		border:0;
		border-top:4px solid #453534;
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
		border-bottom:2px solid #999;
	}
	.sideMenuNav > ul > li:last-child{
		border:0;
		margin-bottom:25px;
	}
	.sideMenuNav > ul > li > a{
		font-family:NanumSRB;
		font-size:20px;
	}
	.sideMenuNav > img{
		width:200px;
		margin-top:10px;
	}
	.contentMain{
		width:850px;
		float:right;
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
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="clinicBg">
			<img src="${pageContext.request.contextPath}/resources/images/euksanClinicBg.png">
			<div class="clinicBgText">
				<h1>한의원 소개</h1>
				<p>질환뿐만 아니라 마음까지 치료하는 억산한의원입니다.</p>
			</div><!-- clinicBgText end -->
		</div><!-- clinicBg end -->
		<div class="contentWrap">
			<div class="sideMenuWrap">
				<img src="${pageContext.request.contextPath}/resources/images/clinicSideMenuBg.png">
				<div class="sideMenuTopText">
					<h1>한의원</h1>
					<h1>소개</h1>
					<hr>
				</div><!-- sideMenuTopText end -->
				<div class="sideMenuNav">
					<ul>
						<li><a href="${pageContext.request.contextPath}/intro1">- 인사말</a></li>
						<li><a href="${pageContext.request.contextPath}/intro2" style="color:black;">- 진료안내</a></li>
						<li><a href="${pageContext.request.contextPath}/intro3">- 둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/intro4">- 오시는 길</a></li>
					</ul>
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTime.png">
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTel.png">
				</div>
			</div><!-- sideMenuWrap end -->
			<div class="contentMain">
				<img src="${pageContext.request.contextPath}/resources/images/painClinicTest.png">
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>