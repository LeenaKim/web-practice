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
<%-- 보안상의 이유로 웬만하면 EL보단 out 태그로 출력하는게 나음 --%>
	<c:set var="msg" value="<h1>hi jstl...</h1> " /> -
	value 속성만 지정 : <c:out value="JSTL" /><br>
	el msg : ${ msg }<br> <%-- EL은 html 태그 무조건 다 적용되서 나옴. out태그는 내가 조절 가능 --%>
	msg : <c:out value="${ msg }" default="msg를 찾을 수 없습니다." /><br>
	
	escapeXml=true 설정<br>
	<c:out value="<hr>" /><br>
	escapeXml=true 설정<br>
	<c:out value="<hr>" escapeXml="false" /><br>
	
</body>
</html>