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
		<form action="" method="post">
			<fieldset>
				<legend>마음 이야기</legend>
				<form role = "form" action ="/board/girl/register" method ="post">
					<div>
						<div class="small">제목</div>
						<input type="text" name="title" autocomplete="off"
							 />
					</div>
					<div>
						<div class="small">마음 발신자</div>
						<input type="text" name="writer" autocomplete="off"
							 />
					</div>
					<div>
						<div class="small">마음 수신자</div>
						<input type="text" name="receiver" autocomplete="off"
							placeholder="띨띨이에게" style="background-color: #FFF8DC;" disabled />
					</div>
					<div>
						<div class="small">전하고 싶은 마음</div>
						<textarea name="content" ></textarea>
					</div>
					<input id = "regBt" type="submit" name="submit" value="등록하기" />
				</form>
			</fieldset>
		</form>
	</div>
</body>
</html>