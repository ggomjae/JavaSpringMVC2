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
		
		feelingBtnOne.click(function(){
			
			var feelingBtnOneValue =$(".feelingdong").attr("value") ;
			var allOneData = { name : "dong", feeling : feelingBtnOneValue };
			
			feelingBtnOneValue *= 1;
			
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
			       		
			       		$(".feelingdong").attr("value",data);
			        	$(".feelingdong").css({"background-image":"url(/resources/imgSrc/icon"+data+".JPG)"});
			        	
			        },
			        error:function(jqXHR, textStatus, errorThrown){
			            alert("error");
			            
			        }
			});
		});
		
		feelingBtnTwo.click(function(){
			
			var feelingBtnTwoValue =$(".feelingDDI").attr("value") ;
			var allTwoData = { name : "DDI", feeling : feelingBtnTwoValue };
			
			feelingBtnTwoValue *= 1;
			
			$.ajax({
			        type:'post',
			        url:"/test",
			        data: JSON.stringify(allTwoData),
			        contentType : "application/json; charset=utf-8",
			        beforeSend : function(xhr)
                    {  
                        xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                    },
			        success:function(data){
			       		
			       		$(".feelingDDI").attr("value",data);
			        	$(".feelingDDI").css({"background-image":"url(/resources/imgSrc/icon"+data+".JPG)"});
			        	
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
						
			</div>
		</c:forEach>
	</div>
	<div class = "wrapperBottom">
		이야기를 선택하세요.
	</div>
	
	
</body>
</html>