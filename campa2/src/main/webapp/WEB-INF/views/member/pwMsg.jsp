<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test="${result == 1}">
	<script>
		alert("수정 성공");
		location.href="myPageUpdated.do";
	</script>
</c:if>

<c:if test="${result == -1}">
	<script>
		alert("비밀번호 확인하세요");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == 2}">
	<script>
		alert("회원이 아닙니다. 회원등록하세요");
		history.go(-1);
	</script>
</c:if>



