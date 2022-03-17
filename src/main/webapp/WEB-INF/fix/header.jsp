<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>Java Community</title>
    <link href="css/header.css" rel="stylesheet" type="text/css">
    
    <script src="https://kit.fontawesome.com/4c11db821c.js" ></script>
   <style>
   
   </style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <button type="button" class="btm_image i" onclick="location.href='http://localhost:8080/main'"><img  src="images/logo_white.jpg"  width="180" height="50"></button>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse fontspace" id="navbarNavAltMarkup">
      <div class="navbar-nav text1">
	        <a class="nav-link active " aria-current="page" href="notice_bbs_list">공지사항</a>
	        <a class="nav-link active " aria-current="page" href="free_bbs_list">자유게시판</a>
	        <a class="nav-link active " aria-current="page" href="qna_bbs_list">Q&A</a>
	        <a class="nav-link active " aria-current="page" href="advice_bbs_list">취업정보상담</a>
	        <a class="nav-link active " aria-current="page" href="question">문제풀이</a>
	        <a class="nav-link active " aria-current="page" href="introduce">소개</a>
      </div>
    </div>
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
    <button type="button" class="fas fa-user-circle i" onclick="location.href='http://localhost:8080/mypage'"></button>    
  </div>
  </nav>
  </header>
</body>
</html>