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
	<%-- <%
		request.setAttribute("id", request.getParameter("id"));
	%> --%>
	<%-- <c:set var="id" value="${ param.id }" scope="request"/> --%>
	<h2>결과화면</h2>
	<!-- 이렇게 해도 되지만 지금은 한줄이라서. 만약 관리자 기능이 여러개고 이것들을 다 추가해야한다면? 이를 위해 있는것이 페이지 넘기기. -->
	<!-- <h2>관리자님 환영합니다.</h2> -->
	<c:if test="${ param.id eq 'admin' }">
		<jsp:forward page="admin.jsp" />
	</c:if>
	<c:if test="${ param.id ne 'admin' }">
		<jsp:forward page="user.jsp" />
			<!-- 날아갈때 파라미터도 같이 날릴 수 있지만, forward 방식이기때문에 user.jsp로 넘어가도 url은 그대로 forwardSet.jsp?id=aaa로 유지되기때문에 user.jsp에 파라미터로 안넘겨줘도 request 객체에 저장되있기때문에 바로 사용 가능 -->
			<%-- <jsp:param name="id" value="${ param.id }" /> --%>
		<%-- </jsp:forward> --%>
	</c:if>
</body>
</html>