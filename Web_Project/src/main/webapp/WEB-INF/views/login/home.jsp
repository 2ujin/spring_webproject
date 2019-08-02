<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Home</title>
<%@ include file="../include/member_header.jsp" %>
</head>
<style>
	body{
		background-color: #009223;
	}	
	h2{
		text-align: center;
		font-family:AppleSDGothicNeoSB00;
	}
	#container {
  height: 400px;
  width: 400px;
  position: relative;
}
#image {
  position: absolute;
  left: 0;
  top: 0;
}
#text {
  z-index: 100;
  position: absolute;
  color: white;
  font-size: 50px;
  font-weight: bold;
  left: 758px;
  top: 100px;
}
#text2{
  z-index: 100;
  position: absolute;
  color: white;
  font-size: 30px;
  left: 758px;
  top: 120px;
}
</style>
<body>
<%@ include file="../include/member_menu.jsp" %>
 <br><br><br><br><br><br><br><br>
 <div id="container">
  <img id="image" src="http://subway.co.kr/images/menu/img_visual_sandwich.jpg" />
  <p id="text">
Congratulations!
  </p>
</div>
    <c:if test="${msg == 'success'}">
	<br><h2>${sessionScope.userName}(${sessionScope.userId})님을 <br> 진심으로 환영합니다.</h2>
    </c:if>
</body>
</html>