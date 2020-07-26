<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
		서버는 수많은 클라이언트의 세션아이디를 저장하기때문에 응답할때 세션아이디를 활용하기위해
		각 클라이언트의 세션아이디가 무엇인지 알아야한다.
		이 id를 session.getId()로 얻을 수 있다.
		브라우저를 여러개 켜놔도 다 종료하지 않는이상 세션은 유지된다. 그래서 한 크롬에서 네이버 로그인하면 새 크롬을 켜도 로그인되있는것.
	*/
	String id = session.getId();
	
	/* 
		세션의 현재 유효기간을 가진 객체 얻어오기 - 기본 30분 (1800초)
	*/
	int interval = session.getMaxInactiveInterval();
	
	/* 
		세션 유효기간 변경(2초)
	*/
	session.setMaxInactiveInterval(2);
	int interval2 = session.getMaxInactiveInterval();
	
	// 마지막 접근 시간
	long lastTime = session.getLastAccessedTime();
	String pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- jsessionid : 브라우저 키면 계속 있는애 (f12) - 얘가 바로 브라우저마다 갖고있는 세션id -->
	<h2>세션 ID(JSESSIONID) : <%= id %></h2>
	<h2>기존 유효시간 : <%= interval %>초</h2>
	<h2>변경 유효시간 : <%= interval2 %>초</h2>
	<h2>마지막 접근 시간 : <%= sdf.format(new Date(lastTime)) %></h2>
</body>
</html>