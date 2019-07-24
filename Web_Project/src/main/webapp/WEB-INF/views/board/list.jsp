<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/member_header.jsp" %>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../include/member_menu.jsp" %>
	<h2> 게시글 목록 </h2>
	<input type="button" value="게시글등록" onclick="location.href='${path}/board/write.do'">
	<table border="1" width="700px">
		<tr>
			<th> 번호 </th>
			<th> 제목 </th>
			<th> 이름 </th>
			<th> 작성일 </th>
			<th> 조회수 </th>
		</tr>
		<c:forEach var="row" items="${list}">
		<tr>
			<td> ${row.bno} </td>
			<td> <a href="${path}/board/view.do?bno=${row.bno}">${row.title}</a> </td>
			<td> ${row.writer} </td>
			<td> <fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd"/> 
			</td>
			<td>  </td>
		</tr>
		</c:forEach>
</body>
</html>