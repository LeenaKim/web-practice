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
	<c:if test="${ param.id eq 'admin' }">
	<%
		response.sendRedirect("/Lecture-WEB/jsp/sendRedirect/admin.jsp");
	%>	
	</c:if>
	<c:if test="${ param.id ne 'admin' }">
		<!-- 여기서 공유영역에 저장한다고 해도 sendRedirectSet의 request에만 저장되지, user.jsp로 클라이언트가 다시 요청할땐 사라진다. 그래서 user.jsp에서 request.id를 쓸 수 없다.
		그래서 리다이렉트는 정보를 공유하는 유일한 방법이 파라미터 전송밖에 없다.  -->
		<%-- <c:set var="id" value="${ param.id }" scope="request" /> --%>
	<%
		response.sendRedirect("user.jsp?id=" + request.getParameter("id"));
	%>
	</c:if>
</body>
</html>