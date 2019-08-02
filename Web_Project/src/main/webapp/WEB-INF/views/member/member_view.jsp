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
<body>
<%@ include file="../include/member_menu.jsp" %>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <div class="login">
 <br><br><br><br><br><br><br>
<h2> 회원 정보 상세 보기 </h2><br>
<form name="form1" method="post" class="loginform">
  <table width="400px">
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
            pattern="yyyy-MM-dd" /> <br><br>
       </td>
    </tr>
    
    <tr>
       <td colspan="2" align="center">
          <input type="button" value="수정" id="btnUpdate" class="btn">
          <input type="button" value="삭제" id="btnDelete" class="btn">
       </td>    
    </tr>
    <tr>
       <td colspan="2" align="center">
       <span style="color:red;"> ${message} </span>
       </td>
    </tr>   
   </table>
</form>
</div>
</body>
</html>




