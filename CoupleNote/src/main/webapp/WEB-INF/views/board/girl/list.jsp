<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>GIRL LIST</title>
	<link href="/resources/vender/css/list.css" rel="stylesheet">
	<style type="text/css">
		body{
			 background: #FFFFF0;		
		}
	</style>
	
</head>
<body>
	<div id="top">
	
	</div>
    <div id="mainWrapper">

        <ul>
            <!-- 게시판 제목 -->
            <li>GIRL's Board</li>

            <!-- 게시판 목록  -->
            <li>
                Table
                <ul id="ulTable">
                    <li>
                        <ul>
                            <li>No</li>
                            <li>제목</li>
                            <li>작성자</li>
                            <li>작성일</li>
                            <li>수정일</li>
                        </ul>
                    </li>
                    <!-- 게시물이 출력될 영역 -->
               
                    <c:forEach items = "${list}" var="board">
                    <li>
                    	<ul>
                            <li><c:out value="${board.bno }" /></li>
                            <li class="left"><c:out value="${board.title }" /></li>
                            <li><c:out value="${board.writer }" /></li>
                            <li><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></li>
                            <li><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }" /></li>
                        </ul>
                    </li>
                    </c:forEach>
                   
                </ul>
            </li>

            <!-- 게시판 페이징 영역 -->
            <li>
                <div id="divPaging">
                    <div>◀</div>
                    <div><b>1</b></div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                    <div>▶</div>
                </div>
            </li>

            <!-- 검색 폼 영역 -->
            <li id='liSearchOption'>
                <div>
                    <select id='selSearchOption'>
                        <option value='A'>제목+내용</option>
                        <option value='T'>제목</option>
                        <option value='C'>내용</option>
                    </select>
                    <input id='txtKeyWord' />
                    <input type='button' value='검색' />
                </div>
            </li>

        </ul>
    </div>
</body>
</html>