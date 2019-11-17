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
</style>
</head>
<body>
	<div id="wrapper">
		<form action="" method="post">
			<fieldset>
				<legend>이야기</legend>
				<form role = "form" action ="/board/girl/register" method ="post">
					<div>
						<input type="text" name="title" autocomplete="off"
							placeholder="제목" />
					</div>
					<div>
						<input type="text" name="writer" autocomplete="off"
							placeholder="마음을 전하는 사람" />
					</div>
					<div>
						<input type="text" name="receiver" autocomplete="off"
							placeholder="띨띨이에게" style="background-color: #FAF0E6;" disabled />
					</div>
					<div>
						<div class="small">전하고 싶은 마음</div>
						<textarea name="content" placeholder="내용"></textarea>
					</div>
					<input type="submit" name="submit" value="등록하기" />
				</form>
			</fieldset>
		</form>
	</div>
</body>
</html>