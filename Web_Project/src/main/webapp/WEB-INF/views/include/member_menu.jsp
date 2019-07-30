<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl 코어 태그 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="path" value="${pageContext.request.contextPath}"/>
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
