<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원등록 페이지</title>
<%@ include file="../include/member_header.jsp" %>
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
	.not, input{
	font-family: AppleSDGothicNeoB00;
	}
	table{
		text-align: center;
	}
</style>
<body>
<%@ include file="../include/member_menu.jsp" %>
    <br><br><br><br><br><br><br><br><br><br><br><br>
     <div class="login">
    <br><br><br><br><br><h2> SIGN UP </h2>
    <form name="form1" method="post" action="${path}/member/insert.do">
        <table  width="150px" align="center">
            <tr>
               <td colspan="2"><input name="userId" placeholder="Id"><br><br></td>
            </tr>
            <tr>
                <td colspan="2"><input type="password" name="userPw" placeholder="PassWord"><br><br></td>
            </tr>
            <tr>
                <td colspan="2"><input name="userName" placeholder="Your Name"><br><br></td>
            </tr>
            <tr>
                <td colspan="2"><input name="userEmail" placeholder="Your Email"><br><br></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="확인" class="btn">
                    <input type="reset" value="취소" class="btn">
                </td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>
