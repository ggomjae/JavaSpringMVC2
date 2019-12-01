<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<link href="/resources/vender/css/register.css" rel="stylesheet">
<style type="text/css">
#wrapper {
       margin:80px auto;
    }


</style>
</head>
<body>
	<div id="wrapper">
		
			<fieldset>
				
				<legend>마음 변경</legend>
					<form action = "/board/boy/modify" method="post">
						<div class="small">제목</div>
						<div>
							<input type ="hidden" name="bno"  value ='<c:out value = "${board.bno }"/>' />
							<input type="text" name="title" autocomplete="off" value ='<c:out value = "${board.title }"/>' />
						</div>
						<div>
							<div class="small">전하고 싶은 마음</div>
							<textarea name="content" ><c:out value = "${board.content }"/></textarea>
						</div>
						<div class="small">마음 수신자</div>
						<div>
							<input type="hidden" name="writer" value ='<c:out value = "${board.writer }"/>' />
						</div>
						<div>
							<input type ="hidden" name="regDate" value ='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${board.regdate }" />' >
							<input type ="hidden" name="updateDate" value ='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${board.updateDate }" />' >
							
							<input type="text" name="receiver" autocomplete="off"
								placeholder= "뚱바에게" style="background-color: #FFF8DC;" disabled="disabled" />
								
						</div>
						
						<input id = "regBt" type="submit" name="submit" value="수정하기" style = "background: #FFF8DC; color: black;"/>
					</form>
					<form action = "/board/boy/remove" method="post">
						<input type ="hidden" name = "bno" value ='<c:out value = "${board.bno }"/>' />
						<input id = "regBt" type="submit" name="submit" value="마음비우기" style = "background: #FFF8DC; color: black;"/>
					</form>
					<input id = "regBt" type="button" name="submit" value="목록가기" style = "background: #FFF8DC; color: black;"
						onclick="location.href='/board/boy/list'"/>
			</fieldset>
		
	</div>
</body>
</html>