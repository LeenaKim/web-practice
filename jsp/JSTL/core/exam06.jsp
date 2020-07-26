<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] names = {"홍길동", "박길동", "강길동", "윤길동"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("namesLength", names.length-1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- varStatus : 반복에 대한 정보를 가진 객체. 이름은 내 맘대로 정함. --%>
	<c:forEach items="${ names }" varStatus="loop">
		${ loop.first } : ${ loop.last } : ${ loop.index } : ${ loop.count }<br>
	</c:forEach>
	
	<c:forEach items="${ names }" var="name" varStatus="loop">
		${ name }
		<c:if test="${ not loop.last }">
			,
		</c:if>
	</c:forEach>
	<br>
	
	<%-- items 속성 : names 공유객체가 가진 값들의 개수만큼 돌면서 그 값을 출력 --%>
	<c:forEach items="${ names }" var="name" varStatus="loop">
		<%-- 처음이 아닐때만 컴마를 찍어줌 --%>
		<%-- <c:if test="${ not loop.first }"> --%>
		<%-- <c:if test="${ loop.index ne 0 }"> --%>
		<c:if test="${ loop.count ne 1 }">
			,
		</c:if>
		${ name }
		
	</c:forEach>
	<br>
	
	<%-- fn의 length 메소드를 통한 반복문 출력 --%>
	<c:forEach begin="0" end="${ fn:length(names) - 1 }" var="i">
		${ names[i] }<br>
	</c:forEach>
	
	<%-- namesLength 공유객체를 따로 만들어줌. --%>
	<c:forEach begin="0" end="${ namesLength }" var="i">
		${ names[i] }<br>
	</c:forEach>
	
	1 ~ 10 사이의 정수 출력<br>
	<c:forEach begin="1" end="10" var="i">
		${ i }
	</c:forEach>
	<br>
	년도 선택 : <select>
				<%-- forEach는 무조건 작은수부터 begin, 큰수까지 end. ++연산밖에 안됨 --%>
				<c:forEach begin="1990" end="2020" var="year">
					<option>${ year }</option>
				</c:forEach>
			  </select>
</body>
</html>