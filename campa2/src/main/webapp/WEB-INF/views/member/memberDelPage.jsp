<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="memberheader.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입하기</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//다움 주소 찾기:
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
				//				document.getElementById('join_zip1').value = data.postcode1;
				document.getElementById('post').value = data.zonecode;
				document.getElementById('address').value = data.address;
			}
		}).open();
	}
</script>
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
			<div class="col-md-2 sidenav"></div><!-- sidenavL -->
			<div class="col-md-8 text-left">
				<h1 align="center">
					<b>회원탈퇴</b>
				</h1>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<form action="myPageDeleteGo.do" method="post"
							class="justify-content-center">
							<div class="form-group">
								<input type="hidden" readonly
									class="form-control form-control-plaintext" id="id" name="id"
									value="${id}"> <span id="myid"></span>
							</div>
							<div class="form-group">
								<label for="passwd">비밀번호:</label> <input type="password"
									class="form-control form-control-lg" id="passwd" name="passwd"
									required="required"
									oninvalid="this.setCustomValidity('입력하셔야 합니다')"
									oninput="setCustomValidity('')"> 
									<span id="message"></span>
							</div>
							<div class="form-group">
								<label for="name">이름:</label> <input type="text" 
									class="form-control form-control-plaintext" id="name"
									name="name">
							</div>
							
							<button id="but_submit" type="submit" class="btn btn-warning">탈퇴</button>
							<button type="reset" class="btn btn-default">초기화</button>
							<a href='mypage.do'><button class="btn btn-primary">마이페이지</button></a>
						</form>
					</div>

					<div class="col-md-4"></div>
				</div><!-- center -->
			</div>
			<div class="col-md-2 sidenav"></div>

		</div><!-- row content -->

	</div><!--container-fluid  -->


</body>
</html>
<%@include file="memberfooter.jsp"%>