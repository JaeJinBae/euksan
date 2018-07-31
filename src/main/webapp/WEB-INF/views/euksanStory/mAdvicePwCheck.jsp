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
	}
	.tableWrap{
		width:100%;
		margin:0 auto;
		margin-top:50px;
		margin-bottom:50px;
	}
	.tableWrap > table{
		width:97%;
		margin:0 auto;
	}
	.checkWrap{
		/* width:500px; */
		width:95%;
		margin:0 auto;
		background: #f8f8f8;
		padding:30px 25px;
		margin-bottom:180px;
	}
	hr{
		margin:15px 0;
	}
	.btnOK{
		margin-left:10px;
		width:38px;
		height:24px;
		background: #5c4530;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	.checkWrap button:not(.btnOK){
		width:65px;
		height:24px;
		background: #5c4530;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
</style>
<script type="text/javascript">
	$(function(){
		/* 비밀번호 확인 */
        $(".btnOK").click(function(){
        	var pw=$("input[type='password']").val();
        	var bno=$("input[type='hidden']").val();
        	var sendData={bno:bno,pw:pw};
			$.ajax({
				url:"advicePWcheck2",
				type:"post",
				headers:{"Content-Type":"application/json"},
				dataType:"text",
				data:JSON.stringify(sendData),//json객체를 json string 으로 변경해줌
				success:function(result){
					console.log(result);
					if(result=='ok'){
						location.href="${pageContext.request.contextPath}/mAdviceRead${pageMaker.makeSearch(pageMaker.cri.page)}&bno="+bno;
					}else{
						alert("비밀번호가 틀립니다.");
					}
				}
			})
        });
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
					<div class="checkWrap">
						<p>비공개 글 입니다.</p>
						<p>글 작성시 입력하신 비밀번호를 입력해주세요.</p>
						<hr>
						<input type="hidden" value="${item.bno}">
						비밀번호 <input type="password" class="pwinput"><button class="btnOK">확인</button>&nbsp;<a href="mAdvice${pageMaker.makeSearch(pageMaker.cri.page)}"><button>목록으로</button></a>
					</div>
				</div><!-- tableWrap end -->
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
	</footer>
</body>
</html>