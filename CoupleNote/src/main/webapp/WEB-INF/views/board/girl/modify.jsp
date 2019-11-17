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
body {
	
}

input::placeholder {
	font-weight: bold;
}

</style>
</head>
<body>
	<div id="wrapper">
	
			<fieldset>
				<legend>수정하즈아</legend>
					<form action = "/board/girl/modify" method="post">
						<div>
							<input type ="hidden" name="bno" value ='<c:out value = "${board.bno }"/>'>
							<input type="text" name="title" autocomplete="off" placeholder ="제목을 쓰세요."/>
						</div>
						<div>
							<div class="small">전하고 싶은 마음</div>
							<textarea name="content" placeholder ="내용을 쓰세요." /></textarea>
						</div>
						<div>
							<input type="hidden" name="writer" value ='<c:out value = "${board.writer }"/>' />
						</div>
						<div>
							
							<input type ="hidden" name="regDate" value ='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${board.regdate }" />' >
							<input type ="hidden" name="updateDate" value ='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${board.updateDate }" />' >
							<input type="text" name="receiver" autocomplete="off" 
								placeholder= "띨띨이에게" style="background-color: #FAF0E6;" disabled="disabled" />
						</div>
						
						<input type="submit" name="submit" value="수정하기" style = "background: #FFF8DC; color: black;"/>
					</form>
					<form action = "/board/girl/remove" method="post">
						<input type ="hidden" name = "bno" value ='<c:out value = "${board.bno }"/>' />
						<input type="submit" name="submit" value="마음비우기" style = "background: #CD5C5C; color: black;"/>
					</form>
					
					<input type="button" name="submit" value="목록가기" style = "background: #FFF8DC; color: black;"
						onclick="location.href='/board/girl/list'"/>
			</fieldset>
		
	</div>
</body>
</html>