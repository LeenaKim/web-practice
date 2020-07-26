<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* root 폴더 포함 모든 하위폴더에 쿠키 적용 */
	Cookie c = new Cookie("type01", URLEncoder.encode("/ 루트 설정", "utf-8"));
	c.setPath("/");
	
	/* cookie 폴더 포함 모든 하위폴더에 쿠키 적용 */
	Cookie c2 = new Cookie("type02", URLEncoder.encode("/Lecture-WEB/jsp/cookie 루트 설정", "utf-8"));
	c2.setPath("/Lecture-WEB/jsp/cookie");

	/* type02 폴더 포함 모든 하위폴더에 쿠키 적용 */
	Cookie c3 = new Cookie("type03", URLEncoder.encode("/Lecture-WEB/jsp/cookie/type02 루트 설정", "utf-8"));
	c3.setPath("/Lecture-WEB/jsp/cookie/type02");
	
	/* type04 폴더 포함 모든 하위폴더에 쿠키 적용 */
	Cookie c4 = new Cookie("type04", URLEncoder.encode("/Lecture-WEB/jsp/cookie/type03 루트 설정", "utf-8"));
	c4.setPath("/Lecture-WEB/jsp/cookie/type03");
	
	Cookie c5 = new Cookie("type05", URLEncoder.encode("/Lecture-WEB/jsp/cookie/type04 루트 설정", "utf-8"));
	c5.setPath("/Lecture-WEB/jsp/cookie/type04");
	
	response.addCookie(c);
	response.addCookie(c2);
	response.addCookie(c3);
	response.addCookie(c4);
	response.addCookie(c5);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키설정 완료</h2>
	<a href="remove.jsp">쿠키 삭제</a>
</body>
</html>