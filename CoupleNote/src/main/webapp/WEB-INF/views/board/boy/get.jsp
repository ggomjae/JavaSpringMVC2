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
       margin:80px 0 0 100px;
       float : left;
    }

 #right {
    	float : left;
    	background: url( "/resources/imgSrc/boy.JPG" ) ;
		text-align: center;
    	display: inline-block;
    	background-size: cover;
    }
</style>
</head>
<body>
	<div id="wrapper">
		
			<fieldset>
				
				<legend>띨띨이이야기</legend>
					<div>
						<div class="small">제목</div>
						<input type="text" name="title" autocomplete="off"
							placeholder='<c:out value = "${board.title }"/>' disabled="disabled" style="background-color: #FFF8DC;" />
					</div>
					<div>
						<div class="small">마음 발신자</div>
						<input type="text" name="writer" autocomplete="off"
							placeholder='<c:out value = "${board.writer }"/>' disabled="disabled" style="background-color: #FFF8DC;" />
					</div>
					<div>
						<div class="small">마음 수신자</div>
						<input type="text" name="receiver" autocomplete="off"
							placeholder= "뚱바에게" style="background-color:#FFF8DC;" disabled="disabled" />
					</div>
					<div>
						<div class="small">전하고 싶은 마음</div>
						<textarea name="content" placeholder='<c:out value = "${board.content }"/>' disabled="disabled" style="background-color: #FFF8DC;" /></textarea>
					</div>
					<input id = "regBt" type="button" name="submit" value="목록가기" 
						onclick="location.href='/board/boy/list'"/>
					<input id = "regBt" type="button" name="submit" value="수정하기" 
						onclick= "location.href='/board/boy/modify?bno=<c:out value = "${board.bno }"/>'">
				
			</fieldset>
		
	</div>
	<div id = "right">
		
	</div>
</body>
</html>