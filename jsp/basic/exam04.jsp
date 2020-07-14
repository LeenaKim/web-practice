<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		// 선언문은 표현식과 다르게 멤버변수를 선언하는것과 같다. 때문에 접근 제한자 사용 가능. 
		private int sum = 0;
	%>
	<%!
		public int getSum(int val1, int val2){
			sum = 0;
			for(int i = val1; i <= val2; i++){
				sum += i;
			}
			return sum;
		}
	%>
	<%
		int sum = 0;
	%>
	1 - 10 사이의 총합 : <%= getSum(1, 10) %><br>
</body>
</html>