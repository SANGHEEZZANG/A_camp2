//아이디 중복 검사:
$(document).ready(function idCheck() {
	$("idcheck").click(function() {
		var id = $('#id').val();
		$.post('idCheck.do', 'id='+id, function(myid) {
			alert(myid);
		});

	});//idCheck()
	
// 비밀번호 확인:
	$('#confirm_password').on('keyup', function () {
		if ($(this).val() == $('#password').val()) {
			$('#message').html('matching').css('color', 'green');
		} else $('#message').html('not matching').css('color', 'red');
	});
	
//이메일 리스트:
	$("#email").emailautocomplete({
		domains : [ "naver.com", "daum.net", "icloud.com", "me.com" ]
	//list your own domains
	});
	
//입력 확인
	$("form").submit(function() {
		if($("id").val()==""){
			alert("아이디를 입력하셔야 합니다.");
			$("id").focus();
			return false;
		}
		if($("passwd").val()==""){
			alert("비밀번호를 입력하셔야 합니다.");
			$("passwd").focus();
			return false;
		}
		if($("name").val()==""){
			alert("이름을 입력하셔야 합니다.");
			$("name").focus();
			return false;
		}
		if($("phone").val()==""){
			alert("핸들폰번호를 입력하셔야 합니다.");
			$("phone").focus();
			return false;
		}
		if($("email").val()==""){
			alert("이메일을 입력하셔야 합니다.");
			$("email").focus();
			return false;
		}
		if($("post").val()==""){
			alert("주소를 입력하셔야 합니다.");
			$("post").focus();
			return false;
		}
	});//submit
});//ready()


