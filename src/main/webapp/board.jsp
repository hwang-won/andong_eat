<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="stylesheet.css" />
<title>Insert title here</title>
</head>
<body>
	<!-- navbar -->
	<nav id="navbar">
		<div class="navbar__logo">
			<i></i> <a href="main.jsp">먹어봤니?</a>
		</div>
		<div>
			<ul class="navbar__menu">
				<a href="main.jsp">
					<li class="navbar__menu__item">지도</li>
				</a>
				<a href="board.jsp">
					<li class="navbar__menu__item">게시판</li>
				</a>
			</ul>
		</div>
		<div>로그인</div>
	</nav>

	<!-- section (board) -->
	<section id="board">
		<div class="board__list">
			<ul>
				<li>솔뫼찜닭</li>
				<li>쥬시</li>
				<li>종이밥</li>
				<li>bhc</li>
			</ul>

			<table>
				<tr>
					<td>한식</td>
					<td>솜뫼찜닭</td>
				</tr>
				<tr>
					<td>카페</td>
					<td>카페365</td>
					<td>소아즈</td>
				</tr>
			</table>
		</div>
	</section>

	<!-- section (review) -->
	<section id="review"></section>
</body>
</html>