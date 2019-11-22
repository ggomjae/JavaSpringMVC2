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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		var feelingBtnOne = $(".feelingdong");
		var feelingBtnTwo = $(".feelingDDI");
		
		var feelingBtnOneValue =$(".feelingdong").attr("value") ;
		var feelingBtnTwoValue =$(".feelingDDI").attr("value") ;
		
		feelingBtnOneValue *= 1;
		feelingBtnTwoValue *= 1;
		
		var allOneData = { name : "dong", feeling : feelingBtnOneValue };
		var allTwoData = { name : "DDI", feeling : feelingBtnOneValue };
		
		feelingBtnOne.click(function(){

			$.ajax({
			        type:'post',
			        url:"/test",
			        data: JSON.stringify(allOneData),
			        contentType : "application/json; charset=utf-8",
			        beforeSend : function(xhr)
                    {  
                        xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                    },
			        success:function(data){
			            alert(data);
			        },
			        error:function(jqXHR, textStatus, errorThrown){
			            alert("error");
			            
			        }
			});
		});
	});
</script>
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
			<div class ="feeling<c:out value ="${status.name }" />"
						value = "${status.feeling}"
						style = "background-image: url( '/resources/imgSrc/icon<c:out value = "${status.feeling}"/>.JPG');">
						<c:out value = "${status.feeling}"/>
			</div>
		</c:forEach>
	</div>
	<div class = "wrapperBottom">
		이야기를 선택하세요.
	</div>
	
	
</body>
</html>