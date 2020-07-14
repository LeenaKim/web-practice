<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
	공유영역에 객체 등록방법
	공유영역.setAttribute("이름", "값");	
	공유영역 4가지 : pageContext, request, session, application 
*/
	pageContext.setAttribute("msg", "page영역에 객체등록");

	// request 영역에 "id"라는 이름으로 "홍길동" 등록 
	request.setAttribute("id", "홍길동");
	
	request.setAttribute("msg", "request영역에 객체 등록");
	
	String message = (String)pageContext.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- el에서의 공유영역 4가지 : pageScope, requestScope, sessionScope, applicationScope --%>
	<%-- 네 가지 영역을 차례로 돌며 msg를 찾음. --%>
	empty msg : ${ empty msg }<br>
	
	<%-- pageScope에서 먼저 찾으니까 아래의 Msg는 pageScope의 msg 객체를 먼저 찾음 --%>
	msg : ${ msg }<br>
	
	id : ${ id }<br>

	request msg : ${ requestScope.msg }<br>
	
	message : <%= message %><br>
	message : <%= pageContext.getAttribute("msg") %><br>
	request message : <%= request.getAttribute("msg") %><br>
	request message length : <%= ((String)request.getAttribute("msg")).length()%><br>
</body>
</html>