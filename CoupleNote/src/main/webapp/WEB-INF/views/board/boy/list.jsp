<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BOY LIST</title>
	<link href="/resources/vender/css/list.css" rel="stylesheet">
	<style type="text/css">
		#otherBtn {
      	  	background: url( "/resources/imgSrc/girl.JPG" ) no-repeat;
       		background-size: contain;
        	border: none;
        	width: 16px;
        	height: 32px;
        	cursor: pointer;
        	border-radius: 10px;
        }
	</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	
	var result = '<c:out value = "${result}"/>' ;
	var modal = document.querySelector(".modal");
	
	checkModal(result);
	
	history.replaceState({},null,null);
	
	function checkModal(result)
	{
		
		if(result === '' || history.state)
		{
			return ;
		}
		
		if(parseInt(result) > 0)
		{
			$("#modalCon").html(parseInt(result) + "번 등록 !");	
		}
		
		modal.classList.remove("hidden");
	}
	
	
	$("#registerBtn").on("click", function() {
		self.location = "/board/boy/register";
	});
	
	$("#closeBtn").on("click", function(){
		modal.classList.add("hidden");
	});
	
	$("#otherBtn").on("click", function(){
		self.location = "/board/girl/list";
	});
	
	var actionForm = $("#actionForm");
	
	$("#moreBtn").on("click", function(e){
		
		e.preventDefault();
		actionForm.submit();
	})
	
});
</script>

<body>
    <div id="mainWrapper">

        <ul>
            <!-- 게시판 제목 -->
            <li>BOY's BOARD</li>

            <!-- 게시판 목록  -->
            <li>
                <form action = "/coupleNote/logout" method="post">
              		<input type = "hidden" name ="${_csrf.parameterName }" value ="${_csrf.token }" />
                	<button id = "logoutBtn" class ="sBtn" ></button> 
                </form>
                    <input type ="button" id = "otherBtn" class = "sBtn" />
                    <button id = "registerBtn" type = "button">마음 등록하기</button>
                
                <ul id="ulTable">
                    <li>
                        <ul>
                            <li>No</li>
                            <li>제목</li>
                            <li>작성자</li>
                            <li>작성일</li>
                            <li>수정일</li>
                        </ul>
                    </li>
                    <!-- 게시물이 출력될 영역 -->
               
                    <c:forEach items = "${list}" var="board">
                    <li>
                    	<ul>
                            <li><c:out value="${board.bno }" /></li>
                  
                            <li class="left"><a href ='/board/boy/get?bno=<c:out value = "${board.bno}" />' 
                            	style="text-decoration:none" id ="aId" ><c:out value="${board.title }" /></a></li>
                            
                            <li><c:out value="${board.writer }" /></li>
                            <li><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></li>
                            <li><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }" /></li>
                            
                        </ul>
                    </li>
                    </c:forEach>
                   
                </ul>
            </li>
          	<form id ="actionForm" action ="/board/boy/list" method ="get">
          		<input type ="hidden" name ="pageNum" value = '${cri.pageNum }'>
            	<input type ="hidden" name ="amount" value = '${cri.amount + 10 }' >
            	
            	<c:if test="${check }">
          			<button id ="moreBtn">더 보기</button>
          		</c:if>
          	</form>

        </ul>
    </div>
    
    <!-- Modal -->
    <div class="modal hidden">
        <div class="modal__overlay"></div>
        <div class="modal__content">
            <h1 id="modalCon">처리가 완료되었습니다.</h1>
            <button id ="closeBtn">Close</button>
        </div>
    </div>
</body>
</html>