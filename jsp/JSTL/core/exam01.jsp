<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 변수 cnt 공유영역(page)에 설정<br>
	<c:set var="cnt" value="1" scope="page" />
	공유영역에 설정된 cnt값 출력<br>
	${ cnt }<br>
	변수 cnt 값을 1 증가 <br>
	<c:set var="cnt" value="${ cnt + 1 }" scope="request" />
	cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
</body>
</html>