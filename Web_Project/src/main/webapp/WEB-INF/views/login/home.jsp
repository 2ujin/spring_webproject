<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Home </title>
<%@include file="../include/member_header.jsp" %>
</head>
<body>
<%@include file="../include/member_menu.jsp" %>
	<c:if test="${msg == 'sucess'}">
	<h2>${sessionScope.userName}(${sessoionScope.userId})님 환영합니다.</h2>
	</c:if>
</body>
</html>