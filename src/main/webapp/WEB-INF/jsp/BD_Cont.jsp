<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css"
	type="text/css">
<title>Java Community</title>

<style>
.col-lg-7 {
	margin-top: 100px;
}
</style>

</head>
<body>
	<%@ include file="../fix/header.jsp"%>

	<header class="py-5 bg-light border-bottom mb-4">
		<div class="container">
			<div class="text-center my-5">
				<h1 class="fw-bolder">배너 사진이나 글</h1>
			</div>
		</div>
	</header>

	<div class="container">
		<h1>@@게시판</h1>
		<hr />
	</div>

	<div class="container">
		<div class="card">
			<div class="card-header">제목</div>
			<div align="right">
				<i class="bi bi-bookmark"></i>
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					fill="currentColor" class="bi bi-bookmark" viewBox="0 0 16 16">
  <path
						d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
</svg>
					<div class="card-body">
							<p align="left">내용입니다.</p>
							<div class="min-vh-100"></div>
					</div>
				</div>
			</div>
			
		<header class="py-2 bg-light border-bottom mb-2">
			<div class="container">
				<div class="text-center my-5">
					<h1 class="fw-bolder"></h1>
				</div>
			</div>
		</header>
	</div>

	<div class="container">
		<h3>댓글</h3>
		<hr />
	</div>
	<div class="container">
		<div class="card">
			<div class="card-header">
				아이디
				<div align="right">
					<i class="bi bi-hand-thumbs-up"></i>
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="currentColor" class="bi bi-hand-thumbs-up"
						viewBox="0 0 16 16">
  <path
							d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
</svg>
				</div>
			</div>

			<div class="card-body">
				<p class="card-text">내용입니다.</p>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-primary" type="button">답글 달기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="card">
			<div class="card-header">아이디</div>
			<div class="card-body">
				<p class="card-text">내용입니다.</p>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-primary" type="button">답글 달기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="card">
			<div class="card-header">아이디</div>
			<div class="card-body">
				<p class="card-text">내용입니다.</p>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-primary" type="button">답글 달기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<header class="py-3 bg-light border-bottom mb-3">
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button class="btn btn-primary me-md-2" type="button">목록</button>
			</div>
			<div class="text-center my-3">
				<h1 class="fw-bolder"></h1>
			</div>
		</header>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
	<%@ include file="../fix/footer.jsp"%>
</body>
</html>
</body>
</html>