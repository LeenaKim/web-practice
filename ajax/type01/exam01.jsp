<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#msgView {
		border: 1px solid red;
		height: 200px;
		width: 500px;
	}
	
</style>
<script>
	function requestMsg() {
		// 1. XMLHttpRequest 객체 생성 
		let httpRequest = null;
		// 윈도우 하위버전에는 내장객체로 XMLHttpRequest가 없는경우도 있기때문에 체크해줘야함. 
		if(window.XMLHttpRequest) {
			httpRequest = new XMLHttpRequest();
		} else if(window.ActiveXObject) { // 다른 윈도우 버전에는 XMLHttpReqeust 대신 ActiveXObject가 있는 경우도 있으니 확인
			httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		// 서버의 상태가 바뀔떄마다 그것을 콜백함수로 인지하는 함수가 필요. readystate라는 변수가 변경될떄마다 함수를 호출해라. 
		// 2. 콜백 함수 설정
		httpRequest.onreadystatechange = function() {
			
			// 4. 서버에서 응답 완료 
			if(httpRequest.readyState == 4){
				if(httpRequest.status == 200){
					
					// 5. 서버 응답결과를 화면에 출력 
					let msgView = document.getElementById("msgView");
					msgView.innerHTML = httpRequest.responseText;
				}
			}
		}
		
		// 3. 서버에 비동기 통신 요청 
		// open() : 요청 정보 초기화. get방식으로 hello.jsp를 비동기방식으로 초기화 
		httpRequest.open('get', '/Lecture-WEB/HelloServlet', true);
		// get방식이라 파라미터로 hello.jsp로 넘어가는 content 매개변수는 Null 
		httpRequest.send(null);
	}
</script>
</head>
<body>
	<h2>서버에서 받은 메세지</h2>
	<div id="msgView"></div>
	<input type="button" value="서버에 자료 요청" onclick="requestMsg()">
</body>
</html>