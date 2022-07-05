<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="stylesheet.css" />
<title>Insert title here</title>
<style>
* {
	margin: 0;
}

a {
	text-decoration: none;
	color: var(- -color-white);
}

ul {
	padding-left: 0;
}

li {
	list-style: none;
}

section {
	margin: 30px;
	padding: 16px;
}

#navbar {
	width: 90%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin: 30px;
	padding: 16px;
	background-color: rgb(213, 213, 255);
}

.navbar__menu {
	display: flex;
}

.navbar__menu__item {
	padding: 8px 12px;
	margin: 0 4px;
}

#se_map {
	width: 90%;
	height: 500px;
	background-color: rgb(255, 255, 192);
}

#board {
	width: 90%;
	height: 300px;
	background-color: rgb(174, 247, 222);
}

#review {
	width: 90%;
	height: 500px;
	background-color: rgb(250, 190, 116);
}
</style>
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