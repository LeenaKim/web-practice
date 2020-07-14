<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// request : 내장객체 
		// getHeaderNames() : 헤더의 이름들을 반환 
		// Enumeration : iterator과 같은놈
		Enumeration<String> headerEnum = request.getHeaderNames();
		while(headerEnum.hasMoreElements()){
			String headerName = headerEnum.nextElement();
			String headerValue = request.getHeader(headerName); // headerName에 해당하는 header값 가져오기 
			out.println(headerName + " : " + headerValue + "<br>");
	%>
		<%= headerName %> : <%= headerValue %><br>
	<%
		}
	%>
	
</body>
</html>