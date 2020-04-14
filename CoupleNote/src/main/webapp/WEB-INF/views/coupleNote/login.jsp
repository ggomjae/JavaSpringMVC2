<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="/resources/vender/css/login.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<title>login</title>
</head>
<body>
		<div id = "left" >
          <img src="/resources/imgSrc/firstBack.JPG" />
        </div>

        <div class="login-page">
            <div class="form">
              <form class="register-form">
                <input type="text" placeholder="name"/>
                <input type="password" placeholder="password"/>
                
                <button>create</button>
                <p class="message">Already registered? <a href="#">Sign In</a></p>
              </form>
              <form class="login-form" method="post" action = "/login">
                <input type="text" placeholder="username" name ="username"/>
                <input type="password" placeholder="password" name ="password"/>
                <h5><c:out value="${error }"></c:out></h5>
                <input type= "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
                <button class ="loginbtn">login</button>
                <!--  
                	<p class="message">Not registered? <a href="#">Create an account</a></p>
                 -->
                 <p class="message">임시로 ID,PW 둘다 ggomjae 또는 hye 입니다</p>
              </form>
            </div>
         </div>
         <script type="text/javascript">
       	  $(document).ready(function(){
        	 
	        	$(".loginbtn").on("click",function(e){
    	    		var formObj = $(".login-form");
     				
    	    		e.preventDefault();
     				formObj.submit();
        		});	
     		});
     
         </script>
</body>
</html>