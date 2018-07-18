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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<style>
	body{
		background: green;
	}
	header{
		width:100%;
		margin:0 auto;
		position: relative;
		z-index: 99;
	}
	section{
		position: relative;
		z-index: 9;
	} 
	.mainBanner{
		
	}
</style>
<script type="text/javascript">
	$(function(){
		alert("asdf");
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
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="mainBanner">
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlide01.png" alt="억산한의원"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlide02.png" alt="억산한의원"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlide03.png" alt="억산한의원"></div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>