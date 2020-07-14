<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1 ~ 10 사이의 정수 출력</h1>
	<%-- out은 내장객체. 선언해주지 않아도 이미 서블릿으로 변환되며 생기기때문에 바로 사용 가능.  --%>
	<%
	
		for(int i = 1; i <= 10; i++){
			out.println(i + "<br>");
		}
	%>
</body>
</html>