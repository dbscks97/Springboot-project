<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Introduce Page</title>
<link href="css/introduce.css" rel="stylesheet" type="text/css">
<style>
.logo{
width:300px;
height:300px;
background:url(images/wessist.png) no-repeat ;
background-size: contain;
background-position: center;
border:0;
outline:0;
}
</style>
</head>
<body>
<%@ include file="../fix/header.jsp" %>
<%@ include file="../fix/sitebanner.jsp" %>
<div class="container-fluid logo">

</div>

<div class="container">
	<div class="row">
		<div class="col-sm-4 bd">
			<img class="img-fluid is" src="images/puzzle1.png" alt="">
			<p>많은 문제풀이 보유</p>
		</div>
		<div class="col-sm-4 bd">
			<img class="img-fluid is" src="images/qa2.png" alt="">
			<p>다양한 기술 Q&A</p>
		</div>
		<div class="col-sm-4 bd">
			<img class="img-fluid is" src="images/call1.png" alt="">
			<p>개발자와 취업 상담</p>
		</div>
	</div>
</div>

<div class="card mb-3 mc" style="max-width: 1000px;">
  <div class="row g-0">
    <div class="col-lg-4">
      <img src="images/logo2.webp" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-lg-8">
      <div class="card-body">
        <h5 class="card-title">JAVA COMMUNITY</h5>
        <p class="card-text">사이트 소개글 간단하게</p>
        <p class="card-text">~~~~~~~~~~</p>
        <p class="card-text">~~~~~~~~~~</p>        
      </div>
    </div>
  </div>
</div>

<div class="history">
   <div>
     <h2>2022.03.23</h2>
     <ol>
       <li>프로젝트 종료</li>
       <li>국비 수료</li>
      </ol>
   </div>
   <div>
     <h2>2022.01.14</h2>
     <ol>
       <li>ui 1차 작업 완료날짜</li>
       <li>ui작업</li>
     </ol>
   </div>
   <div>
     <h2>2022.11</h2>
     <ol>
       <li>팀 주제 선정 및 역할 분담</li>
       <li>~~~~~~~~~~~~~~~~</li>
     </ol>
   </div>
    <div>
     <h2>2022.10</h2>
     <ol>
       <li>프로젝트 팀 구성</li>
       <li>박윤찬,김진성,문성일,이소진,김규관</li>
     </ol>
   </div>
    <div>
     <h2>2022.9</h2>
     <ol>
       <li>프로젝트 시작</li>
       <li>스프링 클라우드를 활용한 마이크로소프트 응용</li>
     </ol>
   </div>
</div>


<%@ include file="../fix/footer.jsp" %>
</body>
</html>