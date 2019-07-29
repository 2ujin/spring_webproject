<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/board_header.jsp" %>
<title>게시글 목록</title>
<script>
 $(document).ready(function(){
	$("#btnWrite").click(function(){
		location.href="${path}/board/write.do"
	}) 
 });
 
 function list(page){
	 location.href="${path}/board/list.do?curPage="+page+"&searchOption=${map.searchOprion}"+"&keyword=${map.keyword}";
 }
 
 
</script>
</head>
<body>
	<%@ include file="../include/member_menu.jsp" %>
	<h2> 게시글 목록 </h2>
	<form name="form1" method="post" action="${path}/board/list.do">
		<select name="searchOption">
			<option value="all" 
				<c:out value="${map.searchOption == 'all'?'selected':''}"/>>
				제목+이름+내용
			</option>
			<option value="writer" 
				<c:out value="${map.searchOption == 'writer'?'selected':''}"/>>
				이름
			</option>
			<option value="content" 
				<c:out value="${map.searchOption == 'content'?'selected':''}"/>>
				내용
			</option>
			<option value="title" 
				<c:out value="${map.searchOption == 'title'?'selected':''}"/>>
				제목
			</option>
		</select>
		<input name="keyword" value="${map.keyword}">
		<input type="submit" value="조회">
		<c:if test="${sessionScope.userId != null}">
		<button type="button" id="btnWrite">글쓰기</button>
		</c:if>
	</form>
	${map.count}개의 게시물이 있습니다.
	
	<table border="1" width="700px">
		<tr>
			<th> 번호 </th>
			<th> 제목 </th>
			<th> 이름 </th>
			<th> 작성일 </th>
			<th> 조회수 </th>
		</tr>
		<c:forEach var="row" items="${map.list}">
		<tr>
			<td> ${row.bno} </td>
			<td> <a href="${path}/board/view.do?bno=${row.bno}&curPage=${map.boardPager.curPage }&searchOption=
			${map.searchOption }&keyword=${map.keyword} ">${row.title}</a> </td>
			<td> ${row.writer} </td>
			<td> <fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd"/></td>
			<td> ${row.viewcnt} </td>
		</tr>
		</c:forEach>
		
		
		<tr>
			<td colspan="5">
				<c:if test="${map.boardPager.curBlock>1}">
					<a href="javascript:list('1')">처음</a>
				</c:if>
				<c:if test="${map.boardPager.curBlock>1}">
					<a href="javascript:list('${map.boardPager.prevPage}')">[이전]</a>
				</c:if>
				<c:forEach var="num" begin="${map.boardPager.blockBegin}" end="${map.boardPager.blockEnd}">
				<c:choose>
				 <c:when test="${num==map.boardPager.curPage}">
				 	<span style="color:red"> ${num} </span>
				 </c:when>
				<c:otherwise>
					<a href="javascript:list('${list}')"> |  ${num}  | </a> &nbsp;
				</c:otherwise>
				</c:choose>
				</c:forEach>
				<!-- 다음페이지 -->
				
				<c:if test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
				<a href="javascript:list('${map.boardPager.nextPage}')'"> [다음] </a>
				</c:if>
				
				<c:if test="${map.boardPager.curPage<=map.boardPage.totPage}">
				<a href="javascript:list('${map.boardPager.totPage}')'"> [끝] </a>
				</c:if>
			</td>
		</tr>
</body>
</html>