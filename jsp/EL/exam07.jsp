<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> nameList = new ArrayList<>();

	nameList.add("홍길동");
	nameList.add("윤길동");
	nameList.add("강길동");
	
	pageContext.setAttribute("names", nameList);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫번째 이름 : <%= nameList.get(0) %><br>
	두번째 이름 : <%= nameList.get(1) %><br>
	세번째 이름 : <%= nameList.get(2) %><br>
	
	<%-- EL은 List도 배열처럼 인덱스로 접근 가능 --%>
	el 첫번째 이름 : ${ names[0] }<br>
	el 두번째 이름 : ${ names[1] }<br>
	el 세번째 이름 : ${ names[2] }<br>
</body>
</html>