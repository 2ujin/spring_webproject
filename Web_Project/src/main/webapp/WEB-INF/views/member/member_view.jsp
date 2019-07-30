<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원등록 페이지</title>
<%@ include file="../include/member_header.jsp" %>
<script>
 $(document).ready(function() {
	 $("#btnUpdate").click(function() {
		 alert("aa");
		 document.form1.action="${path}/member/update.do";
		 document.form1.submit();		 
	 });	 	 
 });
 
 $(document).ready(function() {
	$("#btnDelete").click(function() {
		if(confirm("삭제하시겠습니까?")){
			document.form1.action="${path}/member/delete.do";
			 document.form1.submit();
		}
		
	});
	 
	 
 });

</script>

</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2> 회원 정보 상세 보기 </h2>
<form name="form1" method="post">
  <table border="1" width="400px">
     <tr>
       <td> 아이디 </td>
       <td><input name="userId" value="${dto.userId}" 
            readonly="readonly">
       </td>
    </tr>
    
    <tr>
       <td> 비밀번호 </td>
       <td><input type="password" name="userPw">
       </td>
    </tr>
    
    <tr>
       <td> 이름 </td>
       <td><input name="userName" value="${dto.userName}">
       </td>
    </tr>
    
     <tr>
       <td> 회원가입일자 </td>
       <td>
          <fmt:formatDate value="${dto.userRegdate}" 
            pattern="yyyy-MM-dd" />
       </td>
    </tr>
    
    <tr>
       <td colspan="2" align="center">
          <input type="button" value="수정" id="btnUpdate">
          <input type="button" value="삭제" id="btnDelete">
          
       </td>
    
    </tr>
    <tr>
       <td colspan="2" align="center">
       <span style="color:red;"> ${message} </span>
       </td>
    
    </tr>
    
    
    
   </table>
</form>
</body>
</html>




