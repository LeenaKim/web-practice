<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%
	String msg = "hello jstl!!";
	pageContext.setAttribute("msg", msg);
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="msg" value="hello jstl!!" />
	msg : ${ msg }<br>
	fn:length(msg) : ${ fn:length(msg) } <br>
	fn:substring(msg, 2, 9) : ${ fn:substring(msg, 2, 9) }<br>
	<%-- fn:length("hello jstl!!") 처럼, 바로 문자열을 넣어도 가능  --%>
</body>
</html>