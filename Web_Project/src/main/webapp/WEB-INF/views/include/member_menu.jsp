<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl 코어 태그 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="${pageContext.request.contextPath}/resources/ui.main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/ui.common.css" rel="stylesheet" type="text/css">
	<c:set var="path" value="${pageContext.request.contextPath}"/>	
<div id="wrap">
		<div id="header" class="" style="overflow: hidden; height: 165px;">
    <div class="content">
        <h1 class="logo"><a href="/project">SUBWAY</a></h1>
        <!-- gnb -->
        <nav id="gnb">
            <ul>
                <li>
                    <a class="dp1" href="#none">메뉴소개</a>
                    <div class="dp2" style="opacity: 0; top: -20px;">
                    </div>
                </li>
                <li>
                    <a href="#none" class="dp1">이용방법</a>
                    <div class="dp2" style="opacity: 0; top: -20px;">
                    </div>
                </li>
                <li>
                    <a href="#none" class="dp1">새소식</a>
                </li>
                <li>
                    <a href="#none" class="dp1">써브웨이</a>
                </li>
                <li>
                    <a href="board/list.do" class="dp1">게시판</a>
                </li>
            </ul>
        </nav>
        <!--// gnb -->

        <!-- util menu -->
        <div class="util_menu">
            <ul>
                <li><a href="${path}login/login.do">로그인</a></li>
                <li><a href="${path}member/write.do">회원가입</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
        </div>
    </div>
</div>
	<!-- 
    <div style="text-align: center;">
        <a href="${path}/member/list.do">회원관리</a>
         <a href="${path}/board/list.do">게시글목록</a>
         <a href="${path}">메인으로 </a>
    </div>
    <c:choose>
       <c:when test="${sessionScope.userId==null}">
          <a href="${path}/login/login.do">로그인</a>
       </c:when>
       <c:otherwise>
          ${sessionScope.userName}님이 로그인 중입니다.
          <a href="${path}/login/logout.do">로그아웃</a>
       
       </c:otherwise>
    
    </c:choose>
    <hr>
 -->