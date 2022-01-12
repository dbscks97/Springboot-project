<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="java">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>@@게시판</title>
<style>
div.list {
	margin: 30px 0px 50px 160px;
}
</style>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
 <%@ include file="../fix/header.jsp" %>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
	</script>
	<div class="title">
		<h1 style="margin: 30px 0px 0px 150px">@@게시판</h1><hr />
	</div>
		
	<div class="list">
		<table class="table table-hover" style="width: 90%">
			<thead>
				<tr>
					<th scope="col" style="width: 5%">번호</th>
					<th scope="col" style="width: 50%">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>2022.1.1</</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>2022.1.1</</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">4</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">5</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">6</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">7</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">8</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">9</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">10</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
				<tr>
					<th scope="row">11</th>
					<td>Larry the Bird</td>
					<td>Thornton</td>
					<td>2022.1.1</td>
					<td>13</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="d-grid gap-2 d-md-flex justify-content-md-end" style="margin-right: 170px">
		<button class="btn btn-primary me-md-2" type="button" 
		onclick="location.href='http://localhost:8080/BD_write'">글작성</button>
	</div>
	
	<div class="pageNum" style="margin-top: 50px">
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled"><a class="page-link">이전</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">6</a></li>
			<li class="page-item"><a class="page-link" href="#">7</a></li>
			<li class="page-item"><a class="page-link" href="#">8</a></li>
			<li class="page-item"><a class="page-link" href="#">9</a></li>
			<li class="page-item"><a class="page-link" href="#">10</a></li>
			<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>
	</nav>
	</div>
	<%@ include file="../fix/footer.jsp" %>
</body>
</html>