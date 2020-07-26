<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 클라이언트가 전송한 파일을 받으려면 서버입장에선 inputStream이 필요. 그 후 바이트형태를 한글로 받아주기위해 InputStreamReader로 인코딩
		InputStreamReader isr = new InputStreamReader(request.getInputStream(), "utf-8");
		// 속도 빠르게하기위해 BufferedReader 사용
		BufferedReader br = new BufferedReader(isr);
		while(true){
			String buf = br.readLine();
			if(buf == null) break;
			out.print(buf + "<br>");
		}
	%>
</body>
</html>