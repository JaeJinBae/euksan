<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.headerWrap{
		width:100%;
		min-width:1100px;
		margin:0 auto;
		text-align: center;
	}
	.logoImg{
		width:400px;
		margin:0 auto;
	}
	.logoImg > img{
		width:300px;
		margin:10px 0;
	}
	.headerTopMenu{
		width:160px;
		position: absolute;
		top:20px;
		right:0;
		font-size:14px;
	}
	.headerTopMenu > .bar{
		display:inline-block;
		width:30px;
		color:#5c5c5c;
	}
	.mainNav{
		width:100%;
		height:60px;
		background: #362719;
	}
	.mainNavUl{
		width:942px;
		margin:0 auto;
		overflow:hidden;
		background: rgba(54, 39, 25, 0.7);
	}
	.mainNavUl > li{
		float:left;
		width:157px;
		height: 60px;
		line-height: 60px;
		padding:0 20px;
	}
	.mainNavUl > li > a{
		color:#fff;
		font-size:17px;
	}
	.subNav{ 
		display:none;
		margin-top:20px;
	}
	.subNavUl{
		width:100%;
	}
	.subNavUl > li{
		line-height: 40px;
	}
	.subNavUl > li > a{
		font-size:16px;
		color:#fff;
	}
	.subNavUl > li:hover > a{
		color: #ed9100;
	}
</style>
<script type="text/javascript">
	$(function(){
		$(".mainNavUl").hover(
			function(){
				$(".subNav").slideDown('fast');
				$(".mainNavUl > li").css("height","385px");
			}, 
			function(){
				$(".subNav").slideUp('fast',function(){
					$(".mainNavUl > li").css("height","60px");
				});
			}
		);
	});
</script>
<div class="headerWrap">
	<a class="logoImg" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	<div class="headerTopMenu">
		<a href="${pageContext.request.contextPath}/">홈으로</a> 
		<span class="bar">|</span>
		<a href="${pageContext.request.contextPath}/admin/login">관리자</a>
	</div>
	<div class="mainNav">
		<ul class="mainNavUl">
			<li>
				<a href="${pageContext.request.contextPath}/intro1">한의원 소개</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/intro1">인사말</a></li>
						<li><a href="${pageContext.request.contextPath}/intro2">진료안내</a></li>
						<li><a href="${pageContext.request.contextPath}/intro3">둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/intro4">오시는 길</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/painClinic1">통증 클리닉</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/painClinic1">목디스크</a></li>
						<li><a href="${pageContext.request.contextPath}/painClinic2">허리디스크</a></li>
						<li><a href="${pageContext.request.contextPath}/painClinic3">무릎통증</a></li>
						<li><a href="${pageContext.request.contextPath}/painClinic4">손목·팔꿈치통증</a></li>
						<li><a href="${pageContext.request.contextPath}/painClinic5">족부통증</a></li>
					</ul>	
				</div>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/euksanClinic1">억산 클리닉</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/euksanClinic1">유산 후 조리</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanClinic2">산후 조리</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanClinic3">소아·청소년 질환</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanClinic4">부인과 질환</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanClinic5">남성 전립선 질환</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanClinic6">수험생클리닉</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanClinic7">다이어트</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/accidentClinic1">교통사고 클리닉</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/accidentClinic1">교통사고 클리닉</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/euksanCare1">억산 치료법</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/euksanCare1">보약</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanCare2">공진단</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanCare3">약침/봉침</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanCare4">침·뜸·부항</a></li>
						<li><a href="${pageContext.request.contextPath}/euksanCare5">추나요법</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="">억산 이야기</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="${pageContext.request.contextPath}/notice">공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/broadcasting">언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/advice">온라인 상담</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
</div>