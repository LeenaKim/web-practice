<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hr>
<!-- EL에서 공유객체를 출력할땐 그냥 객체 이름만 적어도 알아서 pageScope부터 찾는다. -->
id : ${ id }<br>
날라온 파라미터<br>
name : ${ param.name }<br>
age : ${ param.age }<br>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<hr>
<!-- 디폴트가 pageScope라 phone 객체는 pageScope에 저장되기떄문에 includeTest.jsp에서 호출해도 empty로 나옴. -->
<c:set var="phone" value="010-1111-2222" />