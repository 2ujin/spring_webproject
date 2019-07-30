<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 보기</title>
<%@ include file="../include/board_header.jsp" %>
<script>
$(document).ready(function() {
	//댓글 쓰기 버튼을 눌렀을 떄 (ajax)
	$("#btnReply").click(function(){
		var replytext = $("#replytext").val();
		var bno = "${dto.bno}"
		var param = "replytext="+replytext+"&bno="+bno;	
		
		$.ajax({
			type:"post",
			url:"${path}/reply/insert.do",
			data:param,
			success: function(){
				alert("등록되었습니다!!");
				listReply2();
			}
		});
	});
	
	$("#btnList").click(function(){
		location.href="${path}/board/list.do?";
		history.back();
	});
	
	function listReply2(){
		$a.jax({
			type: "post",
			url: "${path}/reply/listJson.do?bnp=${dto.bno}",
			success:function(result){
				var output = "<table>";
				for(var i in result){
					output += "<tr>";
					output += "<td>" + result[i].userName;
					output += "("+ changeData(result[i].regdate) + ")<br>";
					output += result[i].replytext + "</td>";
					output += "</tr>";
				}
				output += "</table>";
				$("#listReply").html(output);
			}
				
		});
	}
	
	
	
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
<%@ include file="../include/board_menu.jsp" %>
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
		<td>글쓴이</td>
		<c:out value="${sessionScope.userId}"/>
		<td><input type="hidden" name="writer" id="writer" value="${dto.writer}"></td>
	</tr>
	
	<tr>
       <td colspan="2" align="center">
          <c:if test="${sessionScope.userId==dto.writer}">
          <input type="button" value="수정" id="btnUpdate">
          <input type="button" value="삭제" id="btnDelete">
		  </c:if>
       </td>
       <button type="button" id="btnList"> 목록 </button>
    </tr>
</table>
</form>
	<div style="width:650px; text-align:center;">
		<textarea row="5" cols="80" id="replytext" placeholder="댓글을 작성해주세요."></textarea><br>
		<button type="button" id="btnReply"> 댓글작성 </button>
	</div>
	
	<div id="listReply"></div>
	
</body>
</html>