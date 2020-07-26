<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%
	Map<String, String> b = new HashMap<>();
	
	b.put("no", "10");
	b.put("title", "hello");
	
	pageContext.setAttribute("board", b);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 일반 jsp 표현식 --%>
	no : <%= b.get("no") %><br>
	title : <%= b.get("title") %><br>
	
<%-- EL방식. board가 map을 가리키고, no 와 title이 key --%>
	el no : ${ board.no }<br>
	el title : ${ board.title }<br>
	
	<%-- 이렇게 쓸수도 있으나 잘 안쓴다. 보통 . 을 이용. --%>
	el no : ${ board['no'] }<br>
	
	<%-- 
	el aaa : ${ board.aaa }<br>  aaa라는 key가 없으므로 empty형태로 출력 
	--%>
</body>
</html>