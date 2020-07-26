<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("id", "hong");

%>
	msg : <%= msg %><br>
	phone : ${ phone }<br>
	<h2>인클루드 전</h2>
	파라미터 미설정 호출 <br>
	<c:import url="one.jsp" />
	phone : ${ phone }<br>
	파라미터 설정 호출  
	<c:import url="one.jsp">
		<c:param name="name" value="hong, gil-dong"></c:param>
		<c:param name="age" value="24"></c:param>
	</c:import>
	<h2>인클루드 후</h2>
	
	<!-- action include와 달리 jstl의 import는 외부 사이트도 인클루드 가능 -->
	<h2>네이버 사이트 인클루드</h2>
	<c:import url="http://www.kopo.ac.kr" />
</body>
</html>