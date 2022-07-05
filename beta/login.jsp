<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
	margin: 50px;
	padding: 16px;
	width: 90%;
	background-color: rgb(213, 213, 255);
	border-radius: 5px;
}

#navbar {
	width: 90%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin: 50px;
	padding: 16px;
	background-color: rgb(213, 213, 255);
	border-radius: 5px;
}

.navbar__menu {
	display: flex;
}

.navbar__menu__item {
	padding: 15px;
}

.login {
	height: 500px;
}
</style>
</head>
<body>
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
		<a href="login.jsp"> </a>
	</nav>
	<section class="login">
		<form name="loginForm" action="loginSuccess.jsp" method="post">
			<table>
				<tr height="30">
					<td align="right">아이디&nbsp;</td>
					<td><input type="text" name="uID"></td>
				</tr>
				<tr height="30">
					<td align="right">비밀번호&nbsp;</td>
					<td><input type="password" name="uPW"></td>
				</tr>
				<tr height="50">
					<td></td>
					<td><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
		<form name="signupForm" action="signup.jsp" method="post">
			<button>회원가입</button>
		</form>
	</section>
</body>
</html>