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
	background: #FFFFF0;
}

input::placeholder {
	font-weight: bold;
}

</style>
</head>
<body>
	<div id="wrapper">
	
			<fieldset>
				<legend>뚱바이야기</legend>
					<div>
						<input type="text" name="title" autocomplete="off"
							placeholder='<c:out value = "${board.title }"/>' disabled="disabled" style="background-color: #FAF0E6;" />
					</div>
					<div>
						<input type="text" name="writer" autocomplete="off"
							placeholder='<c:out value = "${board.writer }"/>가' disabled="disabled" style="background-color: #FAF0E6;" />
					</div>
					<div>
						<input type="text" name="receiver" autocomplete="off"
							placeholder= "띨띨이에게" style="background-color: #FAF0E6;" disabled="disabled" />
					</div>
					<div>
						<div class="small">전하고 싶은 마음</div>
						<textarea name="content" placeholder='<c:out value = "${board.content }"/>' disabled="disabled" style="background-color: #FAF0E6;" /></textarea>
					</div>
					<input type="button" name="submit" value="목록가기" style = "background: #FFF8DC; color: black;"
						onclick="location.href='/board/girl/list'"/>
					<input type="button" name="submit" value="수정하기" style = "background: #FFF8DC; color: black;"
						onclick= "location.href='/board/girl/modify?bno=<c:out value = "${board.bno }"/>'">
				
			</fieldset>
		
	</div>
</body>
</html>