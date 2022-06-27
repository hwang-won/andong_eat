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

.signup {
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
	<section class="signup">
		<form action="signup_process.jsp" name="user_info" method="post">
			<fieldset style="width: 200px">
				<legend> 회원 가입</legend>
				
					아이디 : <br> <input type="text" name="userID"><br>
					<br> 비밀번호 : <br> <input type="password" name="userPW"><br>
					<br> 이메일 : <br> <input type="email" name="userMAIL"><br>
					<br>

				<div align="center">
					<input type="submit" value="가입하기"> &nbsp;&nbsp;
					<input type="reset" value="다시작성">
				</div>
				<br>
			</fieldset>
		</form>
	</section>
</body>
</html>