<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>둘러보기 | 억산한의원</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
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
		margin-left:15px;
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
		margin-bottom:100px;
		background: url("${pageContext.request.contextPath}/resources/images/subContentBg.png") no-repeat;
	}
	.bigImg{
		width:650px;
		margin:0 auto;
	}
	.bigImg img{ 
		width: 650px;
	}
	.bigImg .imgText{
		width:100%;
		height:50px;
		line-height:50px;
		background: rgba(255,255,255, 0.5);
		color:white;
		position: absolute;
		bottom:0;
		font-size:20px;
	}
	.smallImg{
		width:850px;
		margin:0 auto;
		margin-top:100px;
	}
	.smallImg div img{
		width:200px;
	}
	.slick-prev:before, .slick-next:before{
		color:#361f09;
		opacity: 1;
	}
	.slick-next{
		right:-60px;
	}
	.slick-prev{
		left:-60px;
	}
	.slick-dots{
		bottom:-50px;
	}
	.slick-dots li button:before{
		color:#d1d1d1;
	}
</style>
<script type="text/javascript">
	$(function(){
		$(".bigImg").slick({
        	slidesToShow:1, 
        	slidesToScroll:1,
        	arrows:true,
        	fade:true,
        	asNavFor:".smallImg"
        });
        $(".smallImg").slick({
			slidesToShow: 4,
			slidesToScroll: 1,
        	asNavFor:".bigImg",
        	arrows:false,
        	dots:true,
        	centerMode:false,
        	focusOnSelect:true
        });
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="clinicBg">
			<img src="${pageContext.request.contextPath}/resources/images/introBg.png">
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
						<li><a href="${pageContext.request.contextPath}/intro2">- 진료안내</a></li>
						<li><a href="${pageContext.request.contextPath}/intro3" style="color:black;">- 둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/intro4">- 오시는 길</a></li>
					</ul>
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTime.png">
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTel.png">
				</div>
			</div><!-- sideMenuWrap end -->
			<div class="contentMain">
				<img style="width:100%;" src="${pageContext.request.contextPath}/resources/images/intro3.png">
				<div class="bigImg">
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg01.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg02.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg03.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg04.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg05.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg06.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg07.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg08.png" alt="억산한의원"></div>
				</div>
				<div class="smallImg">
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg01.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg02.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg03.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg04.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg05.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg06.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg07.png" alt="억산한의원"></div>
					<div><img src="${pageContext.request.contextPath}/resources/images/introContentBimg08.png" alt="억산한의원"></div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>