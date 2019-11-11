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
	<div class = "wrapper">
		이야기를 선택하세요.
	</div>
</body>
</html>