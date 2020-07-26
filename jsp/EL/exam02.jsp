<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
http://localhost:9999/Lecture-WEB/exam02.jsp?id=aaa&name=bbb 라고 호출했다 가정했을 때의 aaa를 출력하는 코드 작성 
--%>
	<%
		String id = request.getParameter("id");
		String[] hobbies = request.getParameterValues("hobby");
		if(hobbies == null){
			hobbies = new String[]{"파라미터 없음"};
		}
	%>
	<%-- 기존 표현식 --%>
	id : <%= id %><br>
	id : <%= request.getParameter("id") %><br>
	<%-- EL : param.얻고자하는 변수 이름 --%>
	<%-- 변수에 값이 없으면 표현식은 null, EL은 아무것도 안나옴. null이 아니라 empty로 친다. --%>
	id : ${ param.id }<br> <%-- 여기서의 id는 자바 변수 String id 가 아니라 파라미터 id. EL 내의 변수는 EL만의 변수다. 자바 변수 아님. --%>
	
	name : <%= request.getParameter("name") %><br>
	name : ${ param.name }<br>
	
<%--
	http://localhost:9999/Lecture-WEB/exam02.jsp?id=aaa&name=bbb&hobby=music&hobby=movie&hobby=reading 라고 호출 
--%>
	hobbies[0] : <%= hobbies[0] %><br>
	hobbies[1] : <%= hobbies[1] %><br>
	hobbies[2] : <%= hobbies[2] %><br>
	
	hobbies[0] : ${ paramValues.hobby[0] }<br>
	hobbies[1] : ${ paramValues.hobby[1] }<br>
	hobbies[2] : ${ paramValues.hobby[2] }<br>

</body>
</html>