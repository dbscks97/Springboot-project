<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script>


	$(document).ready(function() {
		$('#id').blur(function() {
			if($.trim($("#id").val()).length==0){
				$('#id2').html("필수 정보입니다.");
			}else{
				$('#id2').html('');
			}
		});
	});

	$(document).ready(function() {
		$('#pwd').blur(function() {
			if($.trim($("#pwd").val()).length==0){
				$('#pwd2').html("필수 정보입니다.");
			}else{
				$("#pwd2").html('');
			}
		});
	});
	
	$(document).ready(function() {
		$('#pwd_confirm').blur(function() {
			if($.trim($("#pwd_confirm").val()).length==0){
				$('#pwd_confirm2').html("필수 정보입니다.");
			}else{
				$("#pwd_confirm2").html('');
			}
		});
	});

	$(document).ready(function() {
		$('#name').blur(function() {
			if($.trim($("#name").val()).length==0){
				$('#name2').html("필수 정보입니다.");
			}else{
				$("#name2").html('');
			}
		});
	});

	$(document).ready(function() {
		$('#phone').blur(function() {
			if($.trim($("#phone").val()).length==0){
				$('#phone2').html("필수 정보입니다.");
			}else{
				$("#phone2").html('');
			}
		});
	});
</script>
</head>
<body>
<div style="width:500px; height:650px; margin:auto; text-align:center;">
<form action="#">
<h1>회원가입</h1><br>
<h4 style="text-align:left;margin-left:50px;">아이디</h4>
<input type="text" style="width:450px; height:40px; border:1px solid black; border-radius:10px;" id="id"><br>
<h4 id="id2" style="color:red; text-align:left;margin-left:50px;"></h4>


<h4 style="text-align:left;margin-left:50px;">비밀번호</h4>
<input type="text" style="width:450px; height:40px; border:1px solid black; border-radius:10px;" id="pwd"><br>
<h4 id="pwd2" style="color:red;text-align:left;margin-left:50px;"></h4>


<h4 style="text-align:left;margin-left:50px;">비밀번호 확인</h4>
<input type="text" style="width:450px; height:40px; border:1px solid black; border-radius:10px;" id="pwd_confirm"><br>
<h4 id="pwd_confirm2" style="color:red;text-align:left;margin-left:50px;"></h4>


<h4 style="text-align:left;margin-left:50px;">이름</h4>
<input type="text" style="width:450px; height:40px; border:1px solid black; border-radius:10px;" id="name"><br>
<h4 id="name2" style="color:red;text-align:left;margin-left:50px;"></h4>


<h4 style="text-align:left;margin-left:50px;">이메일(선택)</h4>
<input type="text" style="width:450px; height:40px; border:1px solid black; border-radius:10px;" id="email"><br>
<h4 id="email2" style="color:red;text-align:left;margin-left:50px;"></h4>



<h4 style="text-align:left;margin-left:50px;">휴대전화</h4>
<input type="text" style="width:450px; height:40px; border:1px solid black; border-radius:10px;" id="phone"><br>
<h4 id="phone2" style="color:red;text-align:left;margin-left:50px;"></h4>

<input class="btn btn-success input-lg" style="width:400px;" type="submit" value="가입하기">

</form>
</div>



</body>
</html>