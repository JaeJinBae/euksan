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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditorBasic/ckeditor.js"></script>
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
	.tableWrap #f1{ 
		width:98%;
		margin:0 auto;
	}
	.tableWrap #f1 table{
		width:100%;
		border-top:5px solid #e3e3e3;
	}
	#f1 table tr td{
		font-size:13px;
		border-bottom:1px solid #e3e3e3;
		padding:10px 0;
	}
	#f1 table tr td:first-child{
		width:18%;
		text-align: right;
	}
	#f1 table tr td:nth-child(2){
		width:70%;
		text-align: left;
		padding-left:10px;
	}
	#f1 table tr:nth-child(4) td:last-child input{
		width:260px;
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
		display:block;
		margin-top:3px;
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
        //예외처리
    	$("#f1").submit(function(){
    		var pwtype = $("input[name=pwtype]").val();
    		
    		if($("input[name='writer']").val()==""||$("input[name='writer']").val()==null){
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
				<li><a href="">억산 이야기</a></li>
				<li class="nextArrow"><img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_x1.png"></li>
				<li>온라인 상담</li>
			</ul>
		</div>
		<div class="contentWrap">
			<div class="contentMain">
				<div class="tableWrap">
					<form id="f1" method="post" action="mAdviceUpdate${pageMaker.makeSearch(pageMaker.cri.page)}">
						<input type="hidden" name="bno" value="${item.bno}">
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
								<td><input type="text" name="pw" style="width:150px;" readonly><span class="warn">※ 비공개 선택 시 비밀번호는 필수 입니다.</span></td> 
							</tr>
							<tr>
								<td><span class="star">*</span> 작성자<span class="stick">|</span></td>
								<td><input type="text" name="writer" style="width:150px;" value="${item.writer}"></td>
							</tr>
							<tr>
								<td><span class="star">*</span> 제목<span class="stick">|</span></td>
								<td><input type="text" name="title" value="${item.title}"></td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea id="editor1" name="content">${item.content}</textarea>
									<script>
										CKEDITOR.replace('content',{filebrowserUploadUrl:"/admin/imgUpload"});
									</script>
								</td>
							</tr>
						</table>
						<div class="btnWrap">
							<a href="${pageContext.request.contextPath}/mAdvice${pageMaker.makeSearch(pageMaker.cri.page)}" class="goListBtn"><button type="button">목록</button></a>
							<input type="submit" value="수정" class="submitBtn">
							<a href="${pageContext.request.contextPath}/mAdviceRead${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}" class="cancelBtn"><button type="button">취소</button></a>
						</div>
					</form>
				</div><!-- tableWrap end -->
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
	</footer>
</body>
</html>