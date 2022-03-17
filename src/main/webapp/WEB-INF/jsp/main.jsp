<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
	<link rel="stylesheet" href="../css/main.css" type="text/css">
    <title>Java Community</title>
 <link href="css/main.css" rel="stylesheet" type="text/css">
 <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  </head>
 <body>
  <%@ include file="../fix/header.jsp" %>    
 <form method="get" action="main">
 	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
	</script>
 <div id="page-container">
  
<div class="container-fluid idx">

</div>
<div class="row">
   <div class="col-md-5 a">
		<div class="card c">
		  <a class="card-header h" style="font-size:20px" href="bbs_list">전체글보기</a>   	  		  		
		  <div class="card-body">
		    <table class="table table-hover nlist_t">
			  <thead>
			    <tr>
				       <th scope="col">글 번호</th>
				       <th scope="col">제목</th>
				       <th scope="col">작성자</th>
				       <th scope="col">작성일</th>	
				       <th scope="col">조회수</th>
      			   </tr>	
			  </thead>
			  <tbody>
			    <c:if test="${!empty blist}">
        <c:forEach  items="${blist}" var="b">
        <tr>
          <td>${b.bbs_no}</td>
          <td>${b.bbs_title}</td>
          <td>${b.bbs_name}</td>
          <td>${b.bbs_date}</td>  
          <td>${b.bbs_hit}</td>  
        </tr>
        </c:forEach>
      </c:if>
      <c:if test="${empty blist}">
        <tr>
          <th colspan="5">자료실 목록이 없습니다.</th>
        </tr>
      </c:if>
			  </tbody>
			</table>
		  </div>
		</div>
		<div class="card c">
		  <a class="card-header h" style="font-size:20px" href="free_bbs_list">자유게시판</a>
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
			        <td>Peaches</td>
					<td>Max</td>
					<td>2020.11.18</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			        <td>Bad boy</td>
					<td>Chacha</td>
					<td>2019.09.28</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			        <td>Jacob</td>
					<td>Thornton</td>
					<td>2021.2.4</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
	</div>
	<div class="col-md-5 b">
		<div class="card c">
		  <a class="card-header h" style="font-size:20px"  href="#">주간베스트</a>
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
				    <td>Jacob</td>
					<td>Thornton</td>
					<td>2021.2.4</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			        <td>abcdefu</td>
					<td>James</td>
					<td>2020.8.7</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			        <td>Stay</td>
					<td>Marrsella</td>
					<td>2022.1.13</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
		<div class="card c">
		  <a class="card-header h" style="font-size:20px" href="notice_bbs_list">공지사항</a>
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
			        <td>Dynamite</td>
					<td>Juniper</td>
					<td>2021.09.27</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			        <td>Peaches</td>
					<td>Max</td>
					<td>2020.11.18</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			        <td>Ashes</td>
				    <td>Jenny</td>
					<td>2021.03.12</td>
			    </tr>
			  </tbody>
			</table>
		  </div>
		</div>
	</div>
</div>
<div class="row abc">
	<div class="col-md-3 a">					                      
                            <!-- Blog post-->
                            <center>           
                            <div class="card c">
                                <a href="#!"><img class="card-img-top" src="/images/question2.webp" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">2022.01.24</div>
                                    <h2 class="card-title h4">최신 문제</h2>
                                    <p class="card-text">문제 설명</p>
                                    <a class="btn btn-primary" href="question">풀어보기</a>                               
                                </div>                            
                           </div>
                           </center> 
       </div>
                          <div class="col-md-3 a">		
                          <center>			                                           
                            <div class="card c">
                                <a href="#!"><img class="card-img-top" src="/images/question2.webp" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">2021.12.25</div>
                                    <h2 class="card-title h4">오늘의 문제!</h2>
                                    <p class="card-text">문제 설명</p>
                                    <a class="btn btn-primary" href="question">풀어보기</a>                               
                                </div>                            
                           </div>
                           </center>
       </div>
       <div class="col-md-3 a">			
       						<center>                                              
                            <div class="card c">
                                <a href="#!"><img class="card-img-top" src="/images/question2.webp" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">2021.09.30</div>
                                    <h2 class="card-title h4">가장 많이 풀어 본 문제</h2>
                                    <p class="card-text">문제 설명</p>
                                    <a class="btn btn-primary" href="question">풀어보기</a>                               
                                </div>                            
                           </div>
                           </center>	
       </div>
                         
</div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" ></script>
    -->
  
    </div>
    </form>
      <%@ include file="../fix/footer.jsp" %>
  </body>
</html>