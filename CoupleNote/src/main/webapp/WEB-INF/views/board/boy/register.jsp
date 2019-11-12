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
		body{
			 background: #E6E6FA;		
		}
	</style>
</head>
<body>
    <div id="wrapper">
        <form action="" method="post">
            <fieldset>
                <legend>이야기</legend>
                
                <div>
                    <input type="text" name="email" autocomplete = "off" placeholder="제목"/>
                </div>
                <div>
                    <input type="text" name="first_name" autocomplete = "off" placeholder="마음을 전하는 사람"/>
                </div>
                <div>
                    <input type="text" name="last_name" autocomplete = "off" placeholder="마음을 받는 사람"/>
                </div>
                <div>
                    <div class="small">전하고 싶은 마음</div>
                    <textarea name="message" placeholder="내용"></textarea>
                </div>    
                <input type="submit" name="submit" value="등록하기"/>
            </fieldset>    
        </form>
    </div>
</body>
</html>