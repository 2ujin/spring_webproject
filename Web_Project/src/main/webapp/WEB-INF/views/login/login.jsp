<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/member_header.jsp" %>
<title>게시글 목록</title>
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
<style>
	.login{
		width: 400px;
		height: 500px;
		background-color: #FFC20D;
		margin-left: auto;
  		margin-right: auto;   
		margin: auto;
		border-radius: 50px;
	}
	h2{
		font-family:AppleSDGothicNeoSB00;
		margin: auto;
		text-align: center;
		color: #009132;
		font-size: 30px;
	}
	.loginform{
		width: 90%;
		height: 30px;
		margin-left: auto;
  		margin-right: auto;   
		margin: auto;
		text-align: center;
	}
	input{
		width: 260px;
		height: 30px;
	}
	p{
		text-align: center;
		font-family: AppleSDGothicNeoB00;
		color: #A3A3A3;
		font-size: 14px;
	}
	.btn{
		background-color: #009132;
		padding: 0;
		border: none;
		width: 100px;
		height: 30px;
		color: white;
		line-height: 30px;
   		display: block;
	}
	.not{
	font-family: AppleSDGothicNeoB00;
	}

</style>
</head>
<body>
 <%@ include file="../include/member_menu.jsp" %>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <div class="login">
  <br><br><br><br><br><br><h2> Login </h2>
  <p>Subway is a truly global brand.</p>
  <br><br>
  <form name="form1" class="loginform">
    <table width="150px">
       <tr>
           <td colspan="2"><input name="userId" id="userId"><br></td>
       </tr>
       <tr>
           <td colspan="2"><br><input type="password" name="userPw" id="userPw"></td>
       </tr>
       <tr>
          <td colspan="2" align="center">
             <br><br><button type="button" id="btnLogin" class="btn"> 로그인 </div><br><br>
           </td>                       
       </tr>
    </table>
    <br>
       <c:if test="${msg=='failure'}">
        <div style="color:#BF0413" class="not">아이디 또는 비밀번호가 일치하지 않습니다.</div>
       </c:if>
       <c:if test="${msg=='logout'}">
        <div style="color:red">로그아웃 되었습니다.</div>
       </c:if>
  </form>
</div>
</body>
</html>