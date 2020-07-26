<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO b = new BoardVO();
	
	b.setNo(10);
	b.setTitle("hello");
	
	// pageContext 영역에 객체 등록
	// 이름 : board   값 : 생성된 BoardVO 객체 
	pageContext.setAttribute("board", b);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 원래 표현식 --%>
	no : <%= b.getNo() %><br>
	<%-- getAttribute는 Object를 반환하므로 BoardVO의 getNo() 메소드 호출할수없으니 명시적 형변환해줌. --%>
	no : <%= ((BoardVO)pageContext.getAttribute("board")).getNo() %><br>
	
	title : <%= b.getTitle() %><br>
	title : <%= ((BoardVO)pageContext.getAttribute("board")).getTitle() %><br>
	
<%--EL 표현식 --%>
	<%-- .멤버변수 하면 알아서 자바의 getter을 호출한다. --%>
	el no : ${ board.no }<br>
	el title : ${ board.title }<br>
	
	el no : ${ board['no'] }<br>
	<%-- 
	el aaa : ${ board.aaa }<br> board 자바빈즈클래스에 aaa를 호출하는 getAaa가 없어서 500에러남 
	--%>
	
</body>
</html>