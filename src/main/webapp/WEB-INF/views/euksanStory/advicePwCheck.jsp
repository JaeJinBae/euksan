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
		margin-bottom:100px;
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
		background: url("${pageContext.request.contextPath}/resources/images/subContentBg.png") no-repeat;
	}
	.contentTitle{
		width:100%;
		text-align: center;
		margin-top:162px;
		margin-bottom:100px;
	}
	.contentTitle > h1{
		font-family:NanumSRB;
		font-size:33px;
		font-weight:bold;
	}
	.contentTitle > img{
		width:22px;
		margin-top:40px;
	}
	.tableWrap{
		width:100%;
		margin:0 auto;
	}
	.tableWrap > table{
		width:95%;
		margin:0 auto;
	}
	.checkWrap{
		/* width:500px; */
		width:45%;
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
						location.href="${pageContext.request.contextPath}/adviceRead${pageMaker.makeSearch(pageMaker.cri.page)}&bno="+bno;
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
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="clinicBg">
			<img src="${pageContext.request.contextPath}/resources/images/euksanStoryBg.png">
			<div class="clinicBgText">
				<h1>억산이야기</h1>
				<p>환자와 소통하며 편하게 다가가는 억산이야기</p>
			</div><!-- clinicBgText end -->
		</div><!-- clinicBg end -->
		<div class="contentWrap">
			<div class="sideMenuWrap">
				<img src="${pageContext.request.contextPath}/resources/images/clinicSideMenuBg.png">
				<div class="sideMenuTopText">
					<h1>억산</h1>
					<h1>이야기</h1>
					<hr>
				</div><!-- sideMenuTopText end -->
				<div class="sideMenuNav">
					<ul>
						<li><a href="${pageContext.request.contextPath}/notice">- 공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/broadcasting">- 언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/advice" style="color:black;">- 온라인 상담</a></li>
					</ul>
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTime.png">
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTel.png">
				</div>
			</div><!-- sideMenuWrap end -->
			<div class="contentMain">
				<div class="contentTitle">
					<h1>온라인 상담</h1>
					<img src="${pageContext.request.contextPath}/resources/images/circleIcon.png">
				</div>
				<div class="tableWrap">
					<div class="checkWrap">
						<p>비공개 글 입니다.</p>
						<p>글 작성시 입력하신 비밀번호를 입력해주세요.</p>
						<hr>
						<input type="hidden" value="${item.bno}">
						비밀번호 <input type="password" class="pwinput"><button class="btnOK">확인</button>&nbsp;<a href="advice${pageMaker.makeSearch(pageMaker.cri.page)}"><button>목록으로</button></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>