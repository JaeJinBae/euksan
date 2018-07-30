<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
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
	#headerDiv #headerMenu #statistics{
		background: white;
		color:black;
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
		overflow:auto;
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
		padding:5px 3px;
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
	#tableDiv .info_t th{
		padding:8px 13px;
		font-weight: bold;
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
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
		text-align: center;
	}
	.page ul li{
		width:45px;
		height:40px;
		margin:0 auto;
		list-style: none;
		display: inline-block;
		text-align:center;
		border:1px solid #e9e9e9;
	}
	.active1{
		background: #5c4530;
	}
	.active2{
		font-weight: bold;
		color:white !important;
	}
	.page ul li a{
		text-decoration:none;
		color:black;
		font-size:1.1em;
		line-height: 40px;
		display: block;
	}
	#searchBtn{
		cursor: pointer;
	}
	.info_t .b, .info_t .d{
		width:60px;
	}
	.info_t .c{
		width:70px;
	}
</style>
<script type="text/javascript">
	
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
		
		var keyword = "${keyword}";
		
		$("#year").val(keyword.substring(0, 4));
		$("#month").val(keyword.substring(5,7));
		$("#date").val(keyword.substring(8,10));
		
		$("#searchBtn").click(function(e){
 			
			var reg =/^[\d]{4}$/;
 			var reg2 = /^[\d]{2}$/;
 				
 			var year = $("#year").val();
 			var month = $("#month").val();
 			var date = $("#date").val();
 		
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
 			if(year!=""&&month==""&&date==""){
 				e.preventDefault();
 				
 				if(!reg.test(year)){
 					alert("년도를 올바르게 입력하세요(4자리(ex 2020), 숫자)");
 	 				$("#year").focus();
 	 				return;
 				}
 				$.ajax({
 					url:"statisticsYear",
 					type:"post",
 					dataType:"json",
 					data:{"year":year},
 					success:function(result){
 						console.log(result);
 						$(".info_t").empty();
 						$(".page").remove();
 						
 						var rateT = result[0]["total"];
 						
 						var t = "<tr class='tbl_header'><th>"+year+"년도 월별</th><th>년도별 접속비율</th></tr><tr>";
 					
 						for(var i=1;i<13;i++){
 							var rate =0;
 							
 							if(i<10){
 								if(rateT !=0){
 									rate = (result[0][year+"-0"+i]/rateT)*100;	
 		 						}
 								t+="<td>"+year+"-0"+i+"</td>";
 								t+="<td>"+rate.toFixed(1)+"%</td></tr>";
 							}else{
 								if(rateT !=0){
 									rate = (result[0][year+"-"+i]/rateT)*100;
 								}
 								t+="<td>"+year+"-"+i+"</td>";
 								t+="<td>"+rate.toFixed(1)+"%</td></tr>";
 							}
 							
 							
 						}
 					

 						$(".info_t").append(t);
 						
 					}
 				})
 			}else{
 				$("#searchBtn").attr("href","statistics${pageMaker.makeQuery(1)}&searchType=&keyword="+search);
 			}
 			
 			
 		});
		
		goMain();
		goBrowser();
		goOs();
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
</head>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>통계 리스트</h2>
			<ul> 
				<li> <a href="#" id="statisticsDate" style="font-weight:bold;"> 날짜별 방문 통계</a></li>
				<li> <a href="#" id="goBrowser"> 브라우저 통계</a></li>
				<li> <a href="#" id="goOs"> OS 통계</a></li>
			</ul>
		</div>
		<div class="centerMenu">
		<h1 class="boardTitle">&lt;날짜별 통계&gt;</h1>
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
					<th class="u">접속경로</th>
					<th class="b">브라우저</th>
					<th class="d">디바이스</th>
					<th class="c">일시</th>
				</tr>
				<c:if test="${list.size() > 0 }">
					<c:forEach var="list" items="${list }">
					<tr>
						<td>${list.url }</td>
						<td>${list.browser }</td>
						<td>${list.device }</td>
						<fmt:formatDate value="${list.connectdate }" var="connectdate" pattern="yyyy-MM-dd HH:mm:ss"/>
						<td class="c">${connectdate }</td>
					</tr>
				</c:forEach>
				</c:if>
				<c:if test="${list.size() == 0 }">
					<tr>
						<td colspan="4">방문자가 없습니다.</td>
					</tr>
				</c:if>
			</table>
			<div class="page">
					<ul>
						<c:if test="${pageMaker.prev}">
							<li><a href="${pageMaker.makeQuery(pageMaker.startPage-1)}&searchType=&keyword=${keyword }">&laquo;</a></li>
						</c:if>
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<li ${pageMaker.cri.page == idx? 'class=active1':''}><a href="${pageMaker.makeQuery(idx)}&searchType=&keyword=${keyword }" ${pageMaker.cri.page == idx? 'class=active2':''}>${idx}</a></li>
						</c:forEach>
						
						<c:if test="${pageMaker.next}">
							<li><a href="${pageMaker.makeQuery(pageMaker.endPage+1)}&searchType=&keyword=${keyword }">&raquo;</a></li>
						</c:if>
						
					</ul>
				</div><!-- page end -->
		
			</div>
			
			
			
		</div>
	</div>
</body>
</html>