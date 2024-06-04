<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	
	<style>
		header {height:100px;}
		nav {height:40px:}
		.contents {min-height:200px;}
		footer {height:80px;}
		.nav-link {color:black;}
	</style>
	
</head>
<body>
	<div id="wrap" class="container">
		<header class="bg-danger d-flex align-items-center">
			<h3 class="text-success mr-5">Melong</h3>
			<input type="text" class="form-control col-4">
			<input type="submit" class="btn btn-info" value="검색">
		</header>
		<nav class="bg-warning">
			<ul class="nav font-weight-bold">
				<li class="nav-items"><a href="#" class="nav-link">멜롱차트</a></li>
				<li class="nav-items"><a href="#" class="nav-link">최신음악</a></li>
				<li class="nav-items"><a href="#" class="nav-link">장르음악</a></li>
				<li class="nav-items"><a href="#" class="nav-link">멜롱DJ</a></li>
				<li class="nav-items"><a href="#" class="nav-link">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="contents">
			<h3>곡 정보</h3>
			
		</section>
		<section>
			<h3>가사</h3>
			<hr>
			<h7>가사 정보 없음</h7>
		</section>
		<footer>
			<hr>
			<div class="d-flex align-items-center">
				<small>Copyright 2024. melong All Right Reserved.</small>
			</div>
		</footer>
	</div>
</body>
</html>