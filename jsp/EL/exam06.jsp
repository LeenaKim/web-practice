<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 객체 자리에 올 수 있는 타입 : 자바빈즈 클래스, 맵 객체, 배열, 콜렉션 --%>
<%
	String[] namesArr = {"홍길동", "강길동", "박길동"};

	pageContext.setAttribute("names", namesArr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- jsp 표현식 --%>
	첫번째 이름 : <%= namesArr[0] %><br>
	두번째 이름 : <%= namesArr[1] %><br>
	세번째 이름 : <%= namesArr[2] %><br>
	<%-- 
	네번째 이름 : <%= namesArr[3] %><br> 500에러 뜸 
	--%>
	
	<%-- EL 표현식 --%>
	el 첫번째 이름 : ${ names[0] }<br>
	el 두번째 이름 : ${ names[1] }<br>
	el 세번째 이름 : ${ names[2] }<br>
	el 네번째 이름 : ${ names[3] }<br> <%-- empty --%>
</body>
</html>