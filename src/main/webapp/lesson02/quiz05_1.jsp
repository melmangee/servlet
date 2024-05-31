<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 - 서버페이지</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int num1 = Integer.valueOf(request.getParameter("num1"));
		String calculation = request.getParameter("calculation");
		int num2 = Integer.valueOf(request.getParameter("num2"));
	
		double result = 0.0;
		if (calculation.equals("+")){
			result = (double)(num1 + num2);
		} else if (calculation.equals("-")) {
			result = (double)(num1 - num2);
		} else if (calculation.equals("X")) {
			result = (double)(num1 * num2);
		} else if (calculation.equals("%")) {
			result = (double)(num1 / num2);
		}
	%>
	<div class="container">
		<h2>계산 결과</h2>
		<div class="display-3"><%= num1 %> <%= calculation %> <%= num2 %> = <span class="text-info"> <%= result %></span></div>
	</div>
</body>
</html>