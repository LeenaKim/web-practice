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
	<h2>결과화면</h2>
	<!-- 이렇게 해도 되지만 지금은 한줄이라서. 만약 관리자 기능이 여러개고 이것들을 다 추가해야한다면? 이를 위해 있는것이 페이지 넘기기. -->
	<c:if test="${ param.id eq 'admin' }">
		<jsp:include page="admin.jsp" />
	</c:if>
	<c:if test="${ param.id ne 'admin' }">
		${ param.id }님 환영합니다.<br>
	</c:if>
</body>
</html>