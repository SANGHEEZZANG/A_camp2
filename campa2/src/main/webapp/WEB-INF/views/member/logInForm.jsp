<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="memberheader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
/* $(document).ready(function() {
$("#passwd").keyup(function() {
	var passwd = $(this).val().trim();
	if (passwd!="" && passwd!=null) {
		$.ajax({
			url: 'loginCheck.do',
			type: 'post',
			data: {passwd:passwd},
			success: function(response) {
				$('#pw_msg').html(response).css('color', 'blue');}
		})
	}
})
}) */
</script>
<title>로그인</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="">홈</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">캠프그라운드에 관하여</a></li>
					<li><a href="#">오시는 길</a></li>
					<li><a href="#">후기</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logInForm.do"><span
							class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="login-pf-page">
		<div class="container-fluid">
			<div class="row">
				<div
					class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
					<header class="login-pf-page-header">
						<picture class="login-pf-brand">
							<source type="image/webp" srcset="C:/Users/y00nj/eclipse-workspace/campa/src/main/webapp/WEB-INF/views/member/riversidecampground.webp" >
							</picture>
						<p></p>
					</header>
					<div class="row">
						<div
							class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
							<div class="card-pf">
								<header class="login-pf-header">
									<h1>로그인 하세요</h1>
								</header>
								<form method="post" action="login.do" class="justify-content-center">
									<div class="form-group">
										<label class="sr-only" for="id">회원아이디</label> <input
											type="text" class="form-control  input-lg" id="id" name="id"
											placeholder="회원아이디" required="required"
											oninvalid="this.setCustomValidity('입력하셔야 합니다')" oninput="setCustomValidity('')">
									</div>
									<div class="form-group">
										<label class="sr-only" for="passwd">비밀번호 </label> <input
											type="password" class="form-control input-lg" id="passwd" name="passwd"
											placeholder="비밀번호" required="required"
											oninvalid="this.setCustomValidity('입력하셔야 합니다')" oninput="setCustomValidity('')">
										<span id="pw_msg"></span>
									</div>
									<div class="form-group login-pf-settings">
<!-- 										<label class="checkbox-label"> <input type="checkbox">
											30일동안 로그인 유지하기
										</label> <a href="findPwPage.do">비밀번호찾기?</a> -->
									</div>
									<button type="submit" class="btn btn-primary btn-block btn-lg">로그인</button>
								</form>
								<p class="login-pf-signup">
									계정이 필요하신가요?<a href="signUpPage.do">회원가입</a>
								</p>
							</div>
							<!-- card -->
							<footer class="login-pf-page-footer">
								<ul class="login-pf-page-footer-links list-unstyled">
									<li><a class="login-pf-page-footer-link" href="#">메인페이지</a></li>
									<li><a class="login-pf-page-footer-link" href="#">자주하는
											질문</a></li>
								</ul>
							</footer>

						</div>
						<!-- col -->
					</div>
					<!-- row -->
				</div>
				<!-- col -->
			</div>
			<!-- row -->

		</div>
		<!-- container -->
	</div>
	<!-- login-pf-page -->
	<!-- </body>
</html> -->
	<%@include file="memberfooter.jsp"%>