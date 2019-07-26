<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/board_header.jsp" %>
<script>
	$(document).ready(function(){
		$("#btnSave").click(function(){
			
			location.href="${path}/board/insert.do"
			
		
			
			// 폼에 입력한 데이터를 서버로 전송
			document.form1.submit();
			
		});
	});
	
</script>
<title>게시글 작성</title>
</head>
<body>
<%@ include file="../include/board_menu.jsp" %>
<h2>게시글 작성</h2>
<form name="form1" method="post" action="${path}/board/insert.do">
	<div>
	제목
		<input name="title" id="title" size="80" placeholder="제목을 입력해주세요">
	</div>
	<div>
	내용
		<textarea name="content" id="content" rows="4" cols="80" placeholder="내용을 입력해주세요"></textarea>
	</div>
	<!--  <div>
	이름
		<input name="writer" size="80" placeholder="이름을 입력해주세요">
	</div> -->
	<div style="width:650px; text-align: center;">
		<button type="button" id="btnSave">확인</button>
		<button type="reset">취소</button>
	</div>
</form>
</body>
</html>