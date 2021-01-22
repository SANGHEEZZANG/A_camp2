<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="memberheader.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<script>
	
</script>
<!-- <script src="member.js"></script> -->

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
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">홈</a></li>
					<li><a href="#">캠프그라운드에 관하여</a></li>
					<li><a href="#">오시는 길</a></li>
					<li><a href="#">후기</a></li>
					<li><a href="#">캠프그라운드에 관하여</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logInForm.do"><span
							class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-md-2 sidenav">
					<li><a href="#">예약하기</a></li>
					<li><a href="#">결제하기</a></li>
					<li><a href="#">결제내역</a></li>
					<!-- if jahyo completes reservation table, place it here -->
			</div>
			<!-- sidenavL -->
			<div class="col-md-8 text-left">
				<h1 align="center">
					<b>${memDTO.name}님  안녕하세요</b>
				</h1>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<!-- <h2 class="text-secondary">회원정보</h2> -->
						<p></p>
						<p></p>
						<p></p>
						<table class="table table-hover ">
<%-- 							<tbody class="">
								<tr>
								<td>아이디</td>
								<td>${memDTO.id}</td>
							</tr>
							<tr>
								<td>회원번호</td>
								<td>${memDTO.no}</td>
							</tr>
							<tr>
								<td>비빌번호</td>
								<td>${memDTO.passwd}</td>
							</tr>
							<tr>
								<td>이름</td>
								<td>${memDTO.name}</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>${memDTO.phone}</td>
							</tr>
							<tr>
								<td>이메일</td>
								<td>${memDTO.email}</td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td>${memDTO.post}</td>
							</tr>
							<tr>
								<td>상세주소</td>
								<td>${memDTO.address}</td>
							</tr>
							</tbody> --%>
							<tr>
								<td colspan="2" align=center>
								<input type="button" value="수정"  class="btn btn-outline-secondary"
									onclick="location.href='myPageUpdateForm.do?id=${memDTO.id}'">
								<input type="button" value="회원탈퇴"  class="btn btn-outline-secondary"
									onclick="location.href='myPageDeleteForm.do?id=${memDTO.id}'"></td>
							</tr>

						</table>
					</div>
					<div class="col-md-4"></div>
				</div>


			</div>
			<div class="col-md-2 sidenav"></div>
			<!-- sidenaveR -->
		</div>
		<!-- row -->
	</div>
	<!--container  -->

</body>
</html>
<%@include file="memberfooter.jsp"%>