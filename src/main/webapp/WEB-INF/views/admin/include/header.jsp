<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>억산한의원 관리자페이지</title>
<style>
	*{
		margin:0;
		padding:0;
	}
	#headerDiv{
		width:100%;
		min-width:1280px;
		color:skyblue;
		background: #17161C;
	}
	#headerDiv #logo{
		width:300px;
		height:80px;
		color:white;
		line-height: 80px;
		margin-left: 30px;
		position:  relative;
	}
	#headerDiv #logo h2 {
	    font-size: 25px;
	    font-weight: bold;
	    letter-spacing: 3px;
	}
	#headerDiv>.gohome{
		position: absolute;
		right:50px;
		top:21px;
		color:white;
	}
	.gohome:hover{
		font-weight:bold;
	}
	#headerDiv #headerMenu{
		width:100%;
		min-width:1024px;
		height:40px;
		background: #383A3F;
	}
	#headerDiv #headerMenu ul{
		width:980px;
		line-height: 38px;
		margin-left:30px;
	}
	#headerDiv #headerMenu>ul>li{
		list-style: none;
		width:130px;
		display:inline-block;
		text-align:center;
		border-right:1px solid gray;
		float:left;
	}
	#headerDiv #headerMenu>ul>li a{
		width:128px;
		color:white;
		font-weight:bold;
		text-decoration: none;
		display: inline-block;
		font-size:20px;
	}
	#headerDiv #headerMenu>ul>li a:hover{
		background: white;
		color:black;
	}
</style>
</head>
<script>
	$(function(){
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
		$("#statistics").attr("href","statistics?keyword="+year+"-"+month+"-"+date);
		
	});
</script>
<body>
	<div id="headerDiv">
		<div id="logo">
			<h2>억산한의원 관리자</h2>
		</div>
		<a class="gohome" href="${pageContext.request.contextPath}/admin/logout">로그아웃</a>
		<div id="headerMenu"> 
			<ul>
				<li><a href="${pageContext.request.contextPath}/admin/" title="게시판 관리" id="boardCtr">게시판 관리</a></li>
				<li><a href="statistics" title="통계" id="statistics">통 계</a></li>
			</ul>
		</div>
	</div>
</body>
</html>