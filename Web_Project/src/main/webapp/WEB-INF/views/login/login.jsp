<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../include/member_header.jsp" %>
<title>로그인 페이지</title>
<script>
	$(document).ready(function(){
		$("#btnLogin").click(function(){
			
			var userId = $("#userId").val();
			var userPw = $("#userPw").val();
			
			if(userId==""){
				alert("아이디를 입력하세요");
				return;
			}
			else if(userPw==""){
				alert("비밀번호를 입력하세요");
				return;			
			}
			document.form1.action='${path}/login/loginCheck.do';
			 document.form1.submit();
		});
	});
</script>
</head>
<body>
<%@include file="../include/member_menu.jsp" %>
	<h2> 로그인 </h2>
	<form name="form1">
		<table border="1" width="400px">
			<tr>
				<td> 아이디 </td>
				<td><input name="userId" id="userId"></td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td><input name="password" name="userPw" id="userPw"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<button type="button" id="btnLogin">로그인</button>
				</td>
			</tr>
			
		</table>
	</form>
</body>
</html>