<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    

<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<link href="/resources/vender/css/gender.css" rel="stylesheet">
	<title>selection gender</title>
</head>
<body>
	<div class = "wrapper">
		<form action="/board/boy/list" method="get">
        	<button  id = "boyForm" type="submit"></button>  
    	</form>
		<form action="/board/girl/list" method="get">
     	  	<button  id ="girlForm" type="submit"></button>  
    	</form>   
	</div>
	<div class ="feelingWrapper">
		<c:forEach items="${personStatus}" var="status" >
			<c:choose>
				<c:when test ="${status.feeling == 1}">
					<div class ="feeling<c:out value ="${status.name }" />"
						style = "background-image: url( '/resources/imgSrc/icon1.JPG' )">
					
					</div>
				</c:when>
				<c:when test ="${status.feeling == 2}">
					<div class ="feeling<c:out value ="${status.name }" />"
						style = "background-image: url( '/resources/imgSrc/icon2.JPG' )">
					
					</div>
				</c:when>
				<c:when test ="${status.feeling == 3}">
					<div class ="feeling<c:out value ="${status.name }" />"
						style = "background-image: url( '/resources/imgSrc/icon3.JPG' )">
					
					</div>
				</c:when>
			</c:choose>	
		</c:forEach>
	</div>
	<div class = "wrapperBottom">
		이야기를 선택하세요.
	</div>
	
	
</body>
</html>