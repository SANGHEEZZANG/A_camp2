<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${pw_msg == -1}">
	<script>
		alert(" 아이디나 비밀번호 확인하세요");
		history.go(-1);
	</script>
</c:if> 

<c:if test="${pw_msg == 2}">
	<script>
		alert("회원이 아닙니다");
		history.go(-1);
	</script>
</c:if> 