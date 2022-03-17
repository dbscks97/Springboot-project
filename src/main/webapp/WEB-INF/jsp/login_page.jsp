<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="./css/login_page_style.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('[value="로그인"]').click(function(){
		 $(location).attr('href',"join_4.jsp");
	});
	
	 
});
function back_func(){
		 history.go(-1);
} 
</script>

<link href="css/login_page.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="layout">
	
	 <section id="loginAndjoin">
		<h2><img src="images/login-1.png" alt="로그인">ID or Social 로그인</h2>
		 <form>
			 <input type="text" id="id" placeholder="아이디를 입력하세요">
			 <input type="password" id="pass" placeholder="비밀번호를 입력하세요">
			 <input type="button" value="로그인" id="login_button">
			 <a href="#" id="naver"><img src="./images/naver_login.jpg" alt="naver"></a>
			 <div id="additional">
				<a class="a1" href="join_2.jsp">회원가입</a> | <a class="a1" href="#">아이디 찾기</a> | <a class="a1" href="#">비밀번호 찾기</a>
			 </div>
		 </form>
		 <hr>
		 <button id="back" onclick="location.href='http://localhost:8080/main'">되돌아가기</button>
	 </section>
</div>
 <footer>
	 <span style="color:#00C6ED; font-weight:900; font-size:1.3em;">Java Community</span>&nbsp;
	 <span style="color:gray;">Copyright</span>&nbsp;
	 <span>2022년</span>&nbsp;
	 <span>All Rights Reserved.</span>
 </footer>
</body>
</html>