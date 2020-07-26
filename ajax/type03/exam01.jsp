<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	let httpRequest = null;
	
	function getXMLHttpRequest() {
		
		if(window.XMLHttpRequest){
			return new XMLHttpRequest();
		} 
		if(window.ActiveXObject){
			return new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		return null;
	}
	
	function sendProcess(param) {
		httpRequest = getXMLHttpRequest();
		httpRequest.onreadystatechange = callbackFunc;
		
		// 한글 인코딩을 해줘야함 
		param = encodeURIComponent(param);
		
		// get 방식은 url 뒤 물음표로 인자를 넘기므로 name= param을 해줘야함 
		httpRequest.open('get', "param.jsp?name=" + param, true);
		httpRequest.send(null);
	}
	
	function callbackFunc() {
		/*
			Status (서버 상태 코드)
			200 : OK(요청성공)
			403 : 엑세스 거부
			404 : File Not Found
			405 : 서블릿 에러
			500 : 내부 서버 에러 
		*/
		let debug = document.getElementById("debug");
			
		switch(httpRequest.readyState){
		// 0 은 호출 전이기때문에 의미없음 
		case 1 :
			debug.value += 'Loading...\n';
			break;
		case 2 :
			debug.value += 'Loading...\n';
			break;
		case 3 :
			debug.value += 'Interactive...\n';
			break;
		case 4 :
			debug.value += 'Complete...\n';
			// 서버 응답 후 상태코드 확인
			if(httpRequest.status == 200){
				debug.value += '웹서버에서 정상적으로 수행완료...\n';
				debug.value += '실행결과 : ' + httpRequest.responseText + '\n';
			} else {
				debug.value += '웹서버에서 오류발생...\n';
				debug.value += '오류코드 : ' + httpRequest.status + '\n';
				debug.value += '오류내용 : ' + httpRequest.statusText + '\n';
			}
			break;
		}
		
	}
	
</script>
</head>
<body>
	<textarea rows="10" cols="80" id="debug"></textarea><br>
	<input type="button" value="영문인자호출" onclick="sendProcess('hong, gil-dong')">
	<input type="button" value="한글인자호출" onclick="sendProcess('홍길동')">
</body>
</html>