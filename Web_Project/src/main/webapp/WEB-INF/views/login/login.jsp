<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록</title>
<%@ include file="../include/member_header.jsp" %>
<script>
  $(document).ready(function(){
	 $("#btnLogin").click(function(){
		 var userId=$("#userId").val();
		 var userPw=$("#userPw").val();
		 if(userId==""){
			 alert("아이디를 입력하세요.");
			 return;
		 }
		 if(userPw==""){
			 alert("비번을 입력하세요.");
			 $("#userPw").focus();
			 return;
		 }
		 document.form1.action="${path}/login/loginCheck.do";
		 document.form1.submit();
	 }) ;
  });


</script>


</head>
<body>
 <%@ include file="../include/member_menu.jsp" %>
 <h2> 로그인 </h2>
  <form name="form1">
    <table border="1" width="400px">
       <tr>
           <td>아이디 </td>
           <td><input name="userId" id="userId"></td>
       </tr>
       
       <tr>
           <td>비밀번호 </td>
           <td><input type="password" name="userPw" id="userPw"></td>
       </tr>
       
       <tr>
          <td colspan="2" align="center">
             <button type="button" id="btnLogin"> 로그인 </button>
             <c:if test="${msg=='failure'}">
               <div style="color:red">
                                 아이디 또는 비밀번호가 일치하지 않습니다.
               </div>
             </c:if>
             
             <c:if test="${msg=='logout'}">
               <div style="color:red">
                                 로그아웃 되었습니다.
               </div>
             </c:if>
           </td>                       
       </tr>
    
    
    </table>
  
  
  </form>
</body>
</html>