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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=2">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditorBasic/ckeditor.js"></script>
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
	.contentWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
	}
	.sideMenuWrap{
		width:200px;
		margin-top:35px;
		margin-bottom:50px;
		margin-left:20px;
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
		font-size:20px;
	}
	.sideMenuNav > img{
		width:200px;
		margin-top:10px;
	}
	.contentMain{
		width:850px;
		float:right;
		background: url("${pageContext.request.contextPath}/resources/images/euksanStoryContentBg2.png") no-repeat;
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
	.tableWrap #f1{ 
		width:95%;
		max-width:1000px;
		margin:0 auto;
	}
	.tableWrap #f1 table{
		width:100%;
		border-top:5px solid #e3e3e3;
	}
	#f1 table tr td{
		font-size:14px;
		border-bottom:1px solid #e3e3e3;
		padding:10px 0;
	}
	#f1 table tr td:first-child{
		width:8%;
		text-align: right;
	}
	#f1 table tr td:nth-child(2){
		width:70%;
		text-align: left;
		padding-left:30px;
	}
	#f1 table tr:nth-child(4) td:last-child input{
		width:600px;
	}
	#f1 table tr:last-child td{
		padding-top:20px;
	}
	.star{
		color:#0b8783;
		/* font-size:20px; */
	}
	.stick{
		margin-left:10px;
		color:lightgray;
	}
	.warn{
		margin-left:15px;
	}
	.btnWrap{
		width:100%;
		margin-top:10px;
		margin-bottom:50px;
		text-align: center;
	}
	.btnWrap button{
		width:50px;
		height:24px;
		background: #453534;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	.btnWrap .goListBtn>button{
		width:50px;
	}
	.btnWrap .submitBtn{
		width:50px;
		height:24px;
		background: #453534;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
		cursor:pointer;
	}
	.btnWrap .cancelBtn>button{
		width:50px;
	}
</style>
<script type="text/javascript">
	$(function(){
        //공개여부
        $("input[name='pwtype']").change(function(){
        	if($(this).val()=="o"){
        		$("input[name='pw']").val("");
        		$("input[name='pw']").attr("readonly",true);
        	}else{
        		$("input[name='pw']").attr("readonly",false);
        	}
        })
        //예외처리
    	$("#f1").submit(function(){
    		var pwtype = $("input[name=pwtype]").val();
    		
    		if(($("input[name='pw']").val()==""||$("input[name='pw']").val()==null)&&pwtype=="x"){
    			alert("비밀번호를 입력해주세요.");
    			return false;
    		}else if($("input[name='writer']").val()==""||$("input[name='writer']").val()==null){
    			alert("작성자를 입력해주세요.");
    			return false;
    		}else if($("input[name='title']").val()==""||$("input[name='title']").val()==null){
    			alert("제목을 입력해주세요.");
    			return false;
    		}
    	})
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="clinicBg">
			<img src="${pageContext.request.contextPath}/resources/images/painClinicBg.png">
			<div class="clinicBgText">
				<h1>통증클리닉</h1>
				<p>통증에 따른 억산한의원의 클리닉</p>
			</div><!-- clinicBgText end -->
		</div><!-- clinicBg end -->
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
						<li><a href="${pageContext.request.contextPath}/notice">공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/broadcasting">언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/advice">온라인 상담</a></li>
					</ul>
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTime.png">
					<img src="${pageContext.request.contextPath}/resources/images/sideMenuTel.png">
				</div>
			</div><!-- sideMenuWrap end -->
			<div class="contentMain">
				<div class="contentTitle">
					<h1>공지사항</h1>
					<img src="${pageContext.request.contextPath}/resources/images/circleIcon.png">
				</div>
				<div class="tableWrap">
					<form id="f1" method="post" action="adviceRegister">
						<table>
							<tr>
								<td><span class="star">*</span> 공개여부<span class="stick">|</span></td>
								<td>
									<input type="radio" name="pwtype" value="o">공개 &nbsp;&nbsp;
									<input type="radio" name="pwtype" value="x" checked="checked">비공개
								</td>
							</tr>
							<tr>
								<td><span class="star">*</span> 비밀번호<span class="stick">|</span></td>
								<td><input type="password" name="pw" style="width:150px;"><span class="warn">※ 비공개 선택 시 비밀번호는 필수 입니다.</span></td> 
							</tr>
							<tr>
								<td><span class="star">*</span> 작성자<span class="stick">|</span></td>
								<td><input type="text" name="writer" style="width:150px;"></td>
							</tr>
							<tr>
								<td><span class="star">*</span> 제목<span class="stick">|</span></td>
								<td><input type="text" name="title"></td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea id="editor1" name="content"></textarea>
									<script>
										CKEDITOR.replace('content',{filebrowserUploadUrl:"${pageContext.request.contextPath}/admin/imgUpload"});
									</script>
								</td>
							</tr>
						</table>
						<div class="btnWrap">
							<a href="${pageContext.request.contextPath}/advice" class="goListBtn"><button type="button">목록</button></a>
							<input type="submit" value="등록" class="submitBtn" id="registerBtn">
							<a href="${pageContext.request.contextPath}/advice${pageMaker.makeSearch(pageMaker.cri.page)}" class="cancelBtn"><button type="button">취소</button></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>