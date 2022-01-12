<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글 작성하기</title>
<style>
div.bt {
	margin-left: 1220px
}
#floatingTextarea{
margin-left: 340px; width: 1000px
}
#floatingTextarea2{
margin-left: 340px; margin-bottom:20px; width: 1000px
}

textarea.placeholder{
color: black;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	 <%@ include file="../fix/header.jsp" %>
	<h1 style="margin: 30px 0px 0px 340px">글 작성하기</h1>
	<hr />
	<form>
	<div class="form-floating">
		<textarea class="form-control" placeholder="제목을 입력하시오"
			id="floatingTextarea"></textarea>
		<label for="floatingTextarea"></label>
	</div>
	<div class="form-floating">
		<textarea class="form-control" placeholder="내용을 입력하세요"
			id="floatingTextarea2" style="height: 600px" ></textarea>
		<label for="floatingTextarea2"></label>
	</div>
	</form>
	
	<div class="form-check form-switch" style="margin-left:340px">
		<label class="form-check-label" for="flexSwitchCheckDefault">비밀글
			설정</label> <input class="form-check-input" type="checkbox" role="switch"
			id="flexSwitchCheckDefault">
	</div>

	<div class="bt">
		<input class="btn btn-primary" type="submit" value="등록"> <input
			class="btn btn-primary" type="reset" value="취소">
	</div>
	<%@ include file="../fix/footer.jsp" %>
</body>
</html>