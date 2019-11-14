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
	background: #E6E6FA;
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
					<form action = "/board/boy/modify" method="post">
						<div>
							<input type="text" name="title" autocomplete="off" placeholder ="제목을 쓰세요." />
						</div>
						<div>
							<input type="text" name="writer" autocomplete="off"
								placeholder='<c:out value = "${board.writer }"/>' disabled="disabled" style="background-color: #FAF0E6;" />
						</div>
						<div>
							<input type="text" name="receiver" autocomplete="off"
								placeholder= "뚱바에게" style="background-color: #FAF0E6;" disabled="disabled" />
						</div>
						<div>
							<div class="small">전하고 싶은 마음</div>
							<textarea name="content" placeholder ="내용을 쓰세요." /></textarea>
						</div>
						
						
							<input type="button" name="submit" value="수정하기" style = "background: #FFF8DC; color: black;"/>
					</form>
					<form action = "/board/boy/remove" method="post">
						<input type ="hidden" name = "bno" value ='<c:out value = "${board.bno }"/>' />
						<input type="submit" name="submit" value="마음비우기" style = "background: #CD5C5C; color: black;"/>
					</form>
					<input type="button" name="submit" value="목록가기" style = "background: #FFF8DC; color: black;"
						onclick="location.href='/board/boy/list'"/>
			</fieldset>
		
	</div>
</body>
</html>