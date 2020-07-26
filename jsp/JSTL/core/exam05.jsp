<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		exam04.jsp?type=S or exam04.jsp?type=U
	--%>
	<c:choose>
		<c:when test="${ param.type == 'S' }">
			관리자님 환영합니다.
		</c:when>
		<c:when test="${ param.type == 'U' }">
			일반사용자님 환영합니다.
		</c:when>
		<c:otherwise>
			type 파라미터가 전송되지 않거나 또는 type 값이 잘못되었습니다.
		</c:otherwise>
	</c:choose>
</body>
</html>