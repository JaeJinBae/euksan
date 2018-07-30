<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>억산한의원 관리자페이지</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	*{ 
		margin:0;
		padding:0;
	}
	.contentWrap{
		width:100%;
		min-width:1280px;
		margin:0 auto;
		padding:20px;
		background: lightgray;
		overflow: hidden;
	}
	.contentWrap .leftMenu{
		width:250px; 
		height:100%;
		margin-right:20px;
		padding-top:15px;
		padding-bottom:15px;
		border-radius: 10px; 
		float:left;
		text-align: center;
		background:white;
	}
	#headerDiv #headerMenu #statistics{
		background: white;
		color:black;
	}
	.contentWrap .leftMenu h2{
		width:220px;
		margin:0 auto;
		margin-bottom:15px;
		background: url('${pageContext.request.contextPath}/resources/images/arrow2.gif') no-repeat 10px center;
		font-size:26px;
		font-weight:bold;
	}
	.contentWrap .leftMenu ul{
		width:80%;
		margin-left:40px;
		text-align: left;
	}
	.contentWrap .leftMenu ul li{
		list-style:none;
		margin-bottom:10px;
	}
	.contentWrap .leftMenu ul li:before{
		content:">";
	}
	.contentWrap .leftMenu ul li a{
		text-decoration:none;
		color:black;
		font-size:17px;
	}
	.contentWrap .centerMenu{
		width:70%;
		min-width:700px;
		height:100%;
		border-radius:10px;
		float:left;
		background:white;
	}
	.boardTitle{
		width:90%;
		max-width:860px;
		margin:0 auto;
		font-size:20px;
		margin-top:33px;
	}
	#tableDiv{
		padding-top: 30px;
		width:100%;
		height:700px;
	}
	#tableDiv .t{
		width:800px;
		margin: 0 auto;
		border-collapse: collapse;
		margin-bottom: 30px;
	}
	#tableDiv .t .tbl_header{
		border-top: 2px solid #e3e3e3;
		border-bottom: 2px solid #5c4530;
		font-size: 15px;
	}
	#tableDiv .t th{
		padding:8px 13px;
		font-weight: bold;
	}
	#tableDiv .t td{
		text-align: center;
		padding:8px 13px;
	}
	#tableDiv .t td input{
		height:23px;
	}
	#tableDiv .t .tbl_bottom{
		border-bottom: 1px solid #e3e3e3;
	}
	#tableDiv .info_t tr{
		border-bottom: 1px solid #e3e3e3;
	}
	#tableDiv .t .bar{
		width:5px;
		padding:8px 0px;
	}
	#tableDiv .t td #searchBtn{
		width:35px;
		height:25px;
		line-height:25px;
		color:white;
		background-color: #5c4530;
		text-decoration: none;
		font-size: 15px;
		padding:5px;
		border-radius:5px;
	}
</style>
</head>
<script>
	
	var d = new Date();
	var year = d.getFullYear();
	var month  = d.getMonth()+1;
	var date = d.getDate();
	
	if(month<10){
		month = "0"+month;
	}
	if(date<10){
		date = "0"+date;
	}
	$(function(){
		goMain();
		goBrowser();
		goOs();
		
		var total  = "${keyCount}";
		var chrome = 0;
		var ex =0;
		var safari =0;
		var sambrowser =0;
		var naver =0;
		var opera =0;
		var etc =0;
		
		if(total!=0){
			chrome = ("${chrome}"/total)*100;
			ex = ("${ex}"/total)*100;
			safari = ("${safari}"/total)*100;
			sambrowser = ("${sambrowser}"/total)*100;
			naver = ("${naver}"/total)*100;
			opera = ("${opera}"/total)*100;
			etc = ("${etc}"/total)*100;
		}
		
		
		$("#chrome").text(chrome.toFixed(1)+"%");
		$("#ex").text(ex.toFixed(1)+"%");
		$("#safari").text(safari.toFixed(1)+"%");
		$("#sambrowser").text(sambrowser.toFixed(1)+"%");
		$("#naver").text(naver.toFixed(1)+"%");
		$("#opera").text(opera.toFixed(1)+"%");
		$("#etc").text(etc.toFixed(1)+"%");
		
		var keyword = "${keyword}";
		
		$("#year").val(keyword.substring(0, 4));
		$("#month").val(keyword.substring(5,7));
		$("#date").val(keyword.substring(8,10));
		
		$("#searchBtn").click(function(e){
			var year = $("#year").val();
 			var month = $("#month").val();
 			var date = $("#date").val();
 			
 			var reg =/^[\d]{4}$/;
 			var reg2 = /^[\d]{2}$/;
 			
 			if(!reg.test(year)){
 				alert("년도를 올바르게 입력하세요(4자리(ex 2020), 숫자)");
 				$("#year").focus();
 				e.preventDefault();
 				return;
 			}
 		
 			if(year==""){
 				alert("년도를 입력해 주세요");
 				$("#year").focus();
 				e.preventDefault();
 				return;
 			}
 			if(year!=""&&month==""&&date!=""){
 				alert("월을 입력해 주세요");
 				$("#month").focus();
 				e.preventDefault();
 				return;
 			} 	
 			
 			
 			var search ="";
 			
 			if(date==""&&month!=""&&year!=""){
 				if(!reg2.test(month)||!reg.test(year)){
 					alert("년나 월을 올바르게 입력했는지 확인해주세요((ex 2020 01), 숫자)");
 					e.preventDefault();
 					return;
 				}
 				search = year+"-"+month;
 			}
 			if(date!=""&&month!=""&&year!=""){
 				if(!reg2.test(month)||!reg.test(year)||!reg2.test(date)){
 					alert("년 월 일 을 올바르게 입력했는지 확인해주세요((ex 2020 01 01), 숫자)");
 					e.preventDefault();
 					return;
 				}
 				search = year+"-"+month+"-"+date;
 			}
 			
 			$("#searchBtn").attr("href","statisticsBrowser?keyword="+search);
 			
		});
		
	});
	
	function goMain(){	
		$("#statisticsDate").attr("href","statistics?keyword="+year+"-"+month+"-"+date);
	}
	function goBrowser(){
		$("#goBrowser").attr("href","statisticsBrowser?keyword="+year+"-"+month+"-"+date);
	}
	function goOs(){
		$("#goOs").attr("href","statisticsOs?keyword="+year+"-"+month+"-"+date);
	}
</script>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>통계 리스트</h2>
			<ul> 
				<li> <a href="#"  id="statisticsDate"> 날짜별 방문 통계</a></li>
				<li> <a href="#" id="goBrowser" style="font-weight:bold;"> 브라우저 통계</a></li>
				<li> <a href="#" id="goOs"> OS 통계</a></li>
			</ul>
		</div>
		<div class="centerMenu">
		<h1 class="boardTitle">&lt;브라우저 통계&gt;</h1>
			<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일" var="now"/>
			<div id="tableDiv">
				<table class="t">
				<tr class="tbl_header">
					<th colspan="2" id="now">오늘날짜 : ${now }</th>
					<th colspan="2" id="total">전체 접속자 : ${total }명 </th>
					<th colspan="2" id="today">오늘방문자 : ${todayCount }명</th>
				</tr>
				<tr class="tbl_bottom">
					<td><input type="text" placeholder="yyyy" value="${year }" id="year" maxlength="4"></td>
					<td class="bar">-</td>
					<td><input type="text" placeholder="MM" value="${month }" id="month" maxlength="2"></td>
					<td class="bar">-</td>
					<td><input type="text" placeholder="dd" value="${date }" id="date" maxlength="2"></td>
					<td><a href="" id="searchBtn">검색</a></td>
				</tr>
			</table>
			<table class="t info_t">
				<tr class="tbl_header">
					<th>브라우저</th>
					<th>비율</th>
				</tr>
				<tr>
					<td>Chrome</td>
					<td id="chrome"></td>
				</tr>
				<tr>
					<td>Explorer</td>
					<td id="ex"></td>
				</tr>
				<tr>
					<td>Safari</td>
					<td id="safari"></td>
				</tr>
				<tr>
					<td>SamsungBrowser</td>
					<td id="sambrowser"></td>
				</tr>
				<tr>
					<td>Naver App</td>
					<td id="naver"></td>
				</tr>
				<tr>
					<td>Opera</td>
					<td id="opera"></td>
				</tr>
				<tr>
					<td>etc</td>
					<td id="etc"></td>
				</tr>
			</table>	
			</div>
			
		</div>
	</div>
</body>
</html>