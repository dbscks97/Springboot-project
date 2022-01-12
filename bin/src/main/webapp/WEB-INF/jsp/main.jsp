<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" type="text/css">
    <title>Java Community</title>
   
    <style>
     .col-lg-7{
     margin-top:100px;
     }
    </style>
  </head>
  <body>
    <%@ include file="../fix/header.jsp" %>
       
  <header class="py-5 bg-light border-bottom mb-4">
            <div class="container">
                <div class="text-center my-5">
                    <h1 class="fw-bolder">배너 사진이나 글</h1>
                </div>
            </div>
  </header>
<div class="row">
   <div class="col-lg-5">
		<div class="card">
		  <h5 class="card-header">전체글보기</h5>
		  <div class="card-body">
		    <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">글 번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>			      
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.12.31</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.10.27</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.11.23</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
		<div class="card">
		  <h5 class="card-header">주간베스트</h5>
		  <div class="card-body">
		     <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">글 번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>			      
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.12.31</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.10.27</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.11.23</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="card">
		  <h5 class="card-header">자유게시판</h5>
		  <div class="card-body">
		     <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">글 번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>			      
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.12.31</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.10.27</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.11.23</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
		<div class="card">
		  <h5 class="card-header">Q&A게시판</h5>
		  <div class="card-body">
		    <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">글 번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>			      
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.12.31</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.10.27</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>안녕하세요</td>
			      <td>박윤찬</td>
			      <td>2021.11.23</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
	</div>
</div>
<div class="row">
						<center>
                       <div class="col-lg-7">
                            <!-- Blog post-->
                            
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">2021.11.30</div>
                                    <h2 class="card-title h4">문제 제목</h2>
                                    <p class="card-text">문제 설명</p>
                                    <a class="btn btn-primary" href="#!">풀어보기</a>                               
                                </div>
                             </center>
                           </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
    <%@ include file="../fix/footer.jsp" %>
  </body>
</html>