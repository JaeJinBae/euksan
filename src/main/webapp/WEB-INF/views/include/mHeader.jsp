<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.headerWrap{
		width:100%;
		text-align: center;
		margin-top:13px;
		margin-bottom:10px;
		position: relative;
	}
	.logo{
		/* width:350px; */
		margin:0 auto;
	}
	.logo > img{
		width:120px;
	}
	.menuIcon{
		width:30px;
		position:absolute;
		top:10px;
		right:20px;
	}
	.menuIcon > img{
		width:40px;
	}
	.sidenav {
	    height: 100%; /* 100% Full-height */
	    width: 0; /* 0 width - change this with JavaScript */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Stay on top */
	    top: 0; /* Stay at the top */
	    right: 0;
	    background: #362719;
	    overflow-x: hidden; /* Disable horizontal scroll */
	    padding-top: 40px; /* Place content 60px from the top */
	    transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
	}
	.homeBtn{
		position: absolute;
	    top: 17px;
	    left:0;
	    font-size: 18px;
	    margin-left: 20px;
	    color:#fff;
	}
	.homeBtn > img{
		width:21px;
	}
	.homeBtn > span{
		margin-left:10px;
	}
	.sidenav .closebtn {
	    position: absolute;
	    top:5px;
	    right: 16px;
	    font-size: 40px;
	    margin-left: 50px;
	    color:#fff;
	}
	.sidenav > hr{
		margin-top:15px;
		margin-bottom:0;
		border:0;
		border-top:2px solid #fff;
	}
	.sidenav .mainMenu > li{
		/* margin-bottom:13px; */
		border-bottom:1px solid #fff;
		text-align: left;
	}
	.sidenav .mainMenu > li > p {
	    padding: 13px 8px 13px 20px;
	    text-decoration: none;
	    font-size: 16px;
	    color: #fff;
	    display: block;
	    transition: 0.3s;
	}
	.sidenav .mainMenu > li > p > img{
		width:20px;
		float:right;
		margin-right:10px;
	}
	.subMenu{
		display:none;
		margin:0 0px 15px 40px;
	}
	.subNavUl > li{
		margin:10px 0;
	}
	.subNavUl > li:first-child{
		margin-top:0;
	}
	.subNavUl > li > a{
		font-size:15px;
		color:#fff;
	}
	/* Style page content - use this if you want to push the page content to the right when you open the side navigation */
	/* #main {
	    transition: margin-right .5s;
	    padding: 20px;
	} */
</style>
<script>
	// sideNavBar
	function openNav() {
	    document.getElementById("mySidenav").style.width = "250px";
	    document.getElementById("main").style.marginRight = "250px";
	    document.body.style.backgroundColor = "rgba(54,39,25,0.4)";
	}
	function closeNav() {
	    document.getElementById("mySidenav").style.width = "0";
	    document.getElementById("main").style.marginRight = "0";
	    document.body.style.backgroundColor = "white";
	}
	
	$(function(){
		var arr=[0, 0, 0, 0, 0, 0];
		//메뉴 클릭 시 화살표 방향 변경
		$(".mainMenu > li > p").click(function(){
			var index=$(".mainMenu > li > p").index(this);
			if(arr[index]==0){
				$(this).find("img").attr("src","${pageContext.request.contextPath}/resources/images/ico_arr_nav_up_x1.png");
				arr[index]=1;
			}else{
				$(this).find("img").attr("src","${pageContext.request.contextPath}/resources/images/ico_arr_nav_down_x1.png");
				arr[index]=0;
			}
			 
			$(this).parent().find(".subMenu").slideToggle("fast");
			
		});
	});	
</script>
<div class="headerWrap"><!-- mobileMenu.png -->
	<a class="logo" href="${pageContext.request.contextPath}/mMain"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	<p class="menuIcon" onclick="openNav()"><img src="${pageContext.request.contextPath}/resources/images/mobileMenu.png"></p>
	<div id="mySidenav" class="sidenav">
		<a class="homeBtn" href="${pageContext.request.contextPath}/mMain">
			<img src="${pageContext.request.contextPath}/resources/images/mobileHomeIcon.png">
			<span>홈으로</span>
		</a>
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<hr>
		<ul class="mainMenu">
			<li>
				<p>한의원 소개 <img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_down_x1.png"></p>
				<div class="subMenu">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/mIntro1">- 인사말</a></li>
						<li><a href="${pageContext.request.contextPath}/mIntro2">- 진료안내</a></li>
						<li><a href="${pageContext.request.contextPath}/mIntro3">- 둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/mIntro4">- 오시는 길</a></li>
					</ul>
				</div>
			</li>
			<li>
				<p>통증 클리닉<img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_down_x1.png"></p>
				<div class="subMenu">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/mPainClinic1">- 목디스크</a></li>
						<li><a href="${pageContext.request.contextPath}/mPainClinic2">- 허리디스크</a></li>
						<li><a href="${pageContext.request.contextPath}/mPainClinic3">- 무릎통증</a></li>
						<li><a href="${pageContext.request.contextPath}/mPainClinic4">- 손목통증</a></li>
						<li><a href="${pageContext.request.contextPath}/mPainClinic5">- 팔꿈치통증</a></li>
						<li><a href="${pageContext.request.contextPath}/mPainClinic6">- 족저근막염</a></li>
					</ul>
				</div>
			</li>
			<li>
				<p>억산 클리닉<img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_down_x1.png"></p>
				<div class="subMenu">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/mEuksanClinic1">- 유산 후 조리</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanClinic2">- 산후 조리</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanClinic3">- 성장클리닉</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanClinic4">- 부인과 질환</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanClinic5">- 남성 전립선 질환</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanClinic6">- 수험생클리닉</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanClinic7">- 다이어트</a></li>
					</ul>
				</div>
			</li>
			<li>
				<p>교통사고 클리닉<img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_down_x1.png"></p>
				<div class="subMenu">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/mAccidentClinic">- 교통사고 클리닉</a></li>
					</ul>
				</div>
			</li>
			<li>
				<p>억산 치료법<img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_down_x1.png"></p>
				<div class="subMenu">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/mEuksanCare1">- 보약</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanCare2">- 공진단</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanCare3">- 약침·봉침</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanCare4">- 침·뜸·부항</a></li>
						<li><a href="${pageContext.request.contextPath}/mEuksanCare5">- 추나요법</a></li>
					</ul>
				</div>
			</li>
			<li>
				<p>억산 이야기<img src="${pageContext.request.contextPath}/resources/images/ico_arr_nav_down_x1.png"></p>
				<div class="subMenu">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/mNotice">- 공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/mBroadcasting">- 언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/mAdvice">- 온라인 상담</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
</div>