<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 작성</title>
<%@ include file="../include/member_header.jsp" %>
<script>
    $(document).ready(function(){
    	
    	listReply2();
    	//댓글 쓰기 버튼을 눌렀을 때 처리 (ajax로 처리)
    	$("#btnReply").click(function(){
    		alert("aa");
    		var replytext=$("#replytext").val();
    		var bno="${dto.bno}"
    		alert(bno);
    		var param="replytext="+replytext+"&bno="+bno;
    		$.ajax({
    			type:"post",
    			url:"${path}/reply/insert.do",
    			data:param,
    			success:function(){
    				alert("댓글이 등록되었습니다.");
    				listReply2();
    			}
    			
    		});
    		
    		
    	});
    	
    	 $("#btnList").click(function() {
         	location.href="${path}/board/list.do?";
         	history.back();
         });
    	   
        // 게시글 삭제 버튼 클릭이벤트
        $("#btnDelete").click(function(){
            if(confirm("삭제하시겠습니까?")){
                document.form1.action = "${path}/board/delete.do";
                document.form1.submit();
            }
            
        });
        
        // 게시글 수정 버튼 클릭이벤트
        $("#btnUpdete").click(function(){
            var title = $("#title").val();
            var content = $("#content").val();
            var writer = $("#writer").val();
            if(title == ""){
                alert("제목을 입력하세요");
                document.form1.title.focus();
                return;
            }
            if(content == ""){
                alert("내용을 입력하세요");
                document.form1.content.focus();
                return;
            }
            /* if(writer == ""){
                alert("이름을 입력하세요");
                document.form1.writer.focus();
                return;
            } */
            alert(title);
            alert(content);
            alert(writer);
                     
            document.form1.action="${path}/board/update.do"
            // 폼에 입력한 데이터를 서버로 전송
            document.form1.submit();
            
        });
    });
          
    function listReply2(){
    	$.ajax({
    		
    		type:"post",
    		url:"${path}/reply/listJson.do?bno=${dto.bno}",
    		success:function(result){
    			var output="<table>";
    			for(var i in result){
    				output +="<tr>";
    				output +="<td>"+ result[i].userName;
    				output +="("+changeDate(result[i].regdate) +")<br>";
    				output += result[i].replytext+"</td>";
    				output += "</tr>";
    			}
    			output += "</table>";
    			$("#listReply").html(output);    					
    		}
    	});
    	
    }
    
    function changeDate(date){
    	date=new Date(parseInt(date));
    	year=date.getFullYear();
    	month=date.getMonth();
    	day=date.getDate();
    	hour=date.getHours();
    	minute=date.getMinutes();
    	second=date.getSeconds();
    	strDate=year+"-"+month+"-"+day+""+hour+":"+minute+":"+second;
    	return strDate
    }
    
</script>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2>게시글 보기</h2>

<form name="form1" method="post">
    <div>        <!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 -->
        작성일자 : <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd a HH:mm:ss"/>
                <!-- 날짜 형식 => yyyy 4자리연도, MM 월, dd 일, a 오전/오후, HH 24시간제, hh 12시간제, mm 분, ss 초 -->
    </div>
    <div>
        조회수 : ${dto.viewcnt}
    </div>
    <div>
        제목
        <input name="title" id="title" size="80" value="${dto.title}" placeholder="제목을 입력해주세요">
    </div>
    <div>
        내용
        <textarea name="content" id="content" rows="4" cols="80" placeholder="내용을 입력해주세요">
        ${dto.content}</textarea>
    </div>
    <div>
        글쓴이  <c:out value="${sessionScope.userId}"/>
      <!--   <input name="writer" value="${dto.writer}" placeholder="이름을 입력해주세요"> -->
      
      
     <input type="hidden" name="writer" id="writer" value="${dto.writer}">   
       
    </div>
    <div style="width:650px; text-align: center;">
      
        <input type="hidden" name="bno" value="${dto.bno}">
     
   
    
    <c:if test="${sessionScope.userId==dto.writer }">
        <button type="button" id="btnUpdete">수정</button>
        <button type="button" id="btnDelete">삭제</button>
    </c:if>  
    
    <button type="button" id="btnList"> 목록</button> 
        
    </div>
</form>
  
   <div style="width:650px; text-align:center;">
      <textarea rows="5" cols="80" id="replytext" 
       placeholder="댓글을 작성해주세요."></textarea>
      <br>
      <button type="button" id="btnReply">댓글작성</button>       
     
   </div>
   
   <div id="listReply"></div>
    
</body>
</html>
