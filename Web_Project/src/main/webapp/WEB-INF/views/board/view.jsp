<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 보기</title>
<%@ include file="../include/member_header.jsp" %>
<script>
$(document).ready(function() {
	 $("#btnDelete").click(function() {
		 if(confirm("삭제하시겠습니까?"))
		 document.form1.action='${path}/board/delete.do';
		 document.form1.submit();		 
	 });	 	 
});

$(document).ready(function() {
	 $("#btnUpdate").click(function() {
		var title = $("#title").val();
		var content = $("content").val();
		var writer = $("#writer").val();
		if(title==""){
			alert("제목을 넣어주세요.");
			document.form1.title.focus();
		}
		if(writer==""){
			alert("작성자가 없어용 ㅠ")
			document.form1.writer.focus();
		return;
		}
		document.form1.action="${path}/board/update.do";
		document.form1.submit();
		 
	 });	 	 
});
</script>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2>게시글 보기</h2>
<form name="form1" method="post">
<table width="400">
	<tr> 
		<td>작성일자</td>
		<td>${dto.regdate}</td>
	</tr>
	<tr> 
		<td>조회수</td>
		<td>0</td>
	</tr>
	<tr> 
		<td>제목</td>
		<td><input id="title" name="title" value="${dto.title}" size="30"></td>
	</tr>
	<tr> 
		<td>내용</td>
		<td><textarea id="content" name="content" size="30">${dto.content}</textarea></td>
	</tr>
	<tr> 
		<td>이름</td>
		<td><input id = "writer" name="writer" value="${dto.writer}" size="30"></td>
	</tr>
	<tr>
       <td colspan="2" align="center">
          <input type="hidden" name="bno" value="${dto.bno}">
          <input type="button" value="수정" id="btnUpdate">
          <input type="button" value="삭제" id="btnDelete">
       </td>
    </tr>
</table>
</form>

</body>
</html>