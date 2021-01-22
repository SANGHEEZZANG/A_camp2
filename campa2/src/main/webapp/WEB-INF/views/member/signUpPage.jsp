<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="memberheader.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입하기</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/email-autocomplete/0.1.3/jquery.email-autocomplete.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
	$(document).ready(function() {

		//아이디 중복 검사:
		$("#id").keyup(function() {
			var id = $(this).val().trim();
			if (id != '') {
				$.ajax({
					url : 'idCheck.do',
					type : 'post',
					data : {
						id : id
					},
					success : function(response) {
						$('#myid').html(response).css('color', 'green');
					}
				});
			} else {
				$('#myid').html("").css('color', 'red');
			}
		});//keyup

		// $("idcheck").click(function() {
		// 	var id = $('#id').val();
		// 	$.post('idCheck.do', 'id=' + id, function(myid) {
		// 		alert(myid);
		// 	});
		// });//idCheck()

		//비밀번호 확인:
		$('#confirm_pwd').on('keyup', function() {
			if ($(this).val() == $('#passwd').val()) {
				$('#message').html('일치합니다').css('color', 'green');
			} else
				$('#message').html('다시 입력해보세요').css('color', 'red');
		});

		//이메일 리스트:
		/* $("#email").emailautocomplete({
			domains : [ "naver.com", "daum.net", "icloud.com", "me.com" ]
		//list your own domains
		}); */
		
		var availableTags = ["naver.com", "daum.net", "icloud.com", "me.com" ];
		$("#email").autocomplete({
		      source: availableTags
		});
		
				
	});
		
	
	
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
			<div class="col-md-2 sidenav"></div>
			<!-- sidenavL -->
			<div class="col-md-8 text-left">
				<h1 align="center">
					<b>회원등록</b>
				</h1>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<form action="signUp.do" method="post"
							class="justify-content-center">
							<div class="form-group">
								<label for="id">아이디</label> <input type="text"
									class="form-control form-control-lg input-lg" id="id"
									placeholder="원하시는 아이디를 입력하세요" name="id" required="required"
									oninvalid="this.setCustomValidity('입력하셔야 합니다')"
									oninput="setCustomValidity('')">
								<!-- 								<input type="button" class="form-control form-control-lg"
									value="아이디 중복검사하기" id="idcheck"> -->
								<span id="myid"></span>
							</div>
							<div class="form-group">
								<label for="passwd">비밀번호:</label> <input type="password"
									class="form-control form-control-lg" id="passwd"
									placeholder="20자이내 영문숫자특수문자로 입력하세요" name="passwd"
									required="required"
									oninvalid="this.setCustomValidity('입력하셔야 합니다')"
									oninput="setCustomValidity('')"> <label for="passwd">비밀번호
									확인:</label> <input type="password" class="form-control "
									id="confirm_pwd" placeholder="비밀번호를 다시 입력하세요"
									name="confirm_pwd"> <span id="message"></span>
							</div>
							<div class="form-group">
								<label for="name">이름:</label> <input type="text"
									class="form-control form-control-lg" id="name"
									placeholder="홍길동" name="name" required="required"
									oninvalid="this.setCustomValidity('입력하셔야 합니다')"
									oninput="setCustomValidity('')">
							</div>
							<div class="form-group">
								<label for="phone">핸드폰번호:</label> <input type="tel"
									class="form-control form-control-lg" id="phone"
									placeholder="'-'없이 숫자만 넣어주세요" name="phone" required="required"
									oninvalid="this.setCustomValidity('입력하셔야 합니다')"
									oninput="setCustomValidity('')">
							</div>
							<div class="form-group">
								<label for="email">이메일:</label> <input type="email"
									class="form-control form-control-lg" id="email"
									placeholder="your@email.com" name="email" required="required"
									oninvalid="this.setCustomValidity('입력하셔야 합니다')"
									oninput="setCustomValidity('')">
							</div>
							<div class="form-group">
								<label for="post">우편번호 찾기:</label> <input type="text"
									class="form-control form-control-lg" id="post" name="post"
									required="required"
									oninvalid="this.setCustomValidity('입력하셔야 합니다')"
									oninput="setCustomValidity('')"> <input type="button"
									value="우편번호" onclick="openDaumPostcode()">
							</div>
							<div class="form-group">
								<label for="address">상세 주소:</label> <input type="text"
									class="form-control form-control-lg" id="address"
									placeholder="세부 주소 입력하세요" name="address" required="required"
									oninvalid="this.setCustomValidity('입력하셔야 합니다')"
									oninput="setCustomValidity('')">
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="remember">
									아이디 기억하기</label>
							</div>
							<button type="submit" class="btn btn-success">가입</button>
							<button type="reset" class="btn btn-primary">초기화</button>
						</form>
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