<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>파일 업로드 테스트</h2>
	<form action="uploadInfo.jsp" method="post"
		enctype="multipart/form-data">
		<!-- 넘겨주는 타입을 url 형태뿐만아니라 파일에 있는 내용까지 넘겨주려면 enctype을 multipart/form-data로 설정해줘야함. -->
		ID : <input type="text" name="id"><br>
		파일 : <input type="file" name="uploadfile"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>