<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.headerWrap{
		width:100%;
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
		width:930px;
		margin:0 auto;
		overflow:hidden;
		background: rgba(54, 39, 25, 0.7);
	}
	.mainNavUl > li{
		float:left;
		width:155px;
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
				$(".mainNavUl > li").css("height","335px");
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
	<a class="logoImg" href=""><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	<div class="headerTopMenu">
		<a href="">홈으로</a> 
		<span class="bar">|</span>
		<a href="">관리자</a>
	</div>
	<div class="mainNav">
		<ul class="mainNavUl">
			<li>
				<a href="">한의원 소개</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="">인사말</a></li>
						<li><a href="">의료진 소개</a></li>
						<li><a href="">둘러보기</a></li>
						<li><a href="">진료안내</a></li>
						<li><a href="">오시는 길</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="">통증 클리닉</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="">추나요법</a></li>
						<li><a href="">목·허리 디스크</a></li>
						<li><a href="">관절통증</a></li>
					</ul>	
				</div>
			</li>
			<li>
				<a href="">보양 클리닉</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="">공진단</a></li>
						<li><a href="">보약</a></li>
						<li><a href="">유산 후 관리</a></li>
						<li><a href="">산후조리</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="">교통사고 클리닉</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="">교통사고 클리닉</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="">일반 클리닉</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="">침·뜸·부항</a></li>
						<li><a href="">다이어트</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="">억산 이야기</a>
				<div class="subNav">
					<ul class="subNavUl">
						<li><a href="">공지사항</a></li>
						<li><a href="">언론보도</a></li>
						<li><a href="">온라인 상담</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
</div>