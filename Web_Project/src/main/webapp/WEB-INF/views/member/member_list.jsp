<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <%@ include file="../include/member_header.jsp" %>  
<title>회원 목록</title>

</head>
<style>
	.login{
		width: 1200px;
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
   		font-size: 12px;
	}
	.not{
	font-family: AppleSDGothicNeoB00;
	}
</style>
<body>
 <%@ include file="../include/member_menu.jsp" %>   
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <div class="login">
 <br><br><h2> 회원 목록</h2>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
 <input type="button" value="회원등록" onclick="location.href='${path}/member/write.do'" class="btn"><br>
 &nbsp; &nbsp; &nbsp;
 <table border="1" width="700px" class="loginform">
   <tr>
      <th> 아이디 </th>
      <th> 이름 </th>
      <th> 이메일 </th>
      <th> 회원 가입 일자 </th>
   </tr>
   <c:forEach var="row"  items="${list}">
   <tr>
       <td> ${row.userId}</td>
       <td> <a href="${path}/member/view.do?userId=${row.userId}">${row.userName}</a></td>
       <td> ${row.userEmail}</td>
       <td> ${row.userRegdate}</td>
    </tr>
    </c:forEach>
    
 </table>
</div>
</body>
</html>








