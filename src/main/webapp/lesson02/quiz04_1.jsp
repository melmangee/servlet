<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 - 서버페이지</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		// request params
		int cm = Integer.valueOf(request.getParameter("cm"));
		String[] lengthArr = request.getParameterValues("length");
	
	
		// 길이 변환
		double in = cm / 2.54;
		double yd = cm / 91.44;
		double ft = cm / 30.48;
		double m = cm / 100.0;
		
	%>
	<div class="container">
	<h1>길이 변환 결과</h1>
		<h3><%= cm %>cm</h3>
		<hr>
				
	<%
		if (lengthArr != null){
			for (String length : lengthArr) {
				
				if (length.contains("inch")) {
						out.print("<h2>" + in + " in <h2>");
				} else if (length.contains("yard")) {
					out.print("<h2>" + yd + " yd <h2>");
				} else if (length.contains("feet")) {
					out.print("<h2>" + ft + " ft <h2>");
				} else if (length.contains("meter")) {
					out.print("<h2>" + m + " m <h2>");
				}
			}
			
		}
	%>
	</div>
		
</body>
</html>