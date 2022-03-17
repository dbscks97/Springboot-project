<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="java">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>문제풀이</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet">
	 <link href="css/BD_list.css" rel="stylesheet" type="text/css">
</head>
<body>
 <%@ include file="../fix/header.jsp" %>
 <%@ include file="../fix/sitebanner.jsp" %>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
	</script>
	
<div class="row">
	<div class="col-md-7 qt">
		<div class="title tba">
			<h1>문제풀이 게시판</h1><hr>
		</div>
	</div>
	<div class="col-md-7 qt">	
		<div class="list">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col" >번호</th>
						<th scope="col" >제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td onClick="location.href='question_contents'">Mark</td>
						<td>Otto</td>
						<td>2021.12.25</td>
						<td>133</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>2021.2.4</td>
						<td>311</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry the Bird</td>
						<td>Thornton</td>
						<td>2022.1.1</td>
						<td>97</td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>abcdefu</td>
						<td>James</td>
						<td>2020.8.7</td>
						<td>526</td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>Stay</td>
						<td>Marrsella</td>
						<td>2022.1.13</td>
						<td>8</td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>Dynamite</td>
						<td>Juniper</td>
						<td>2021.09.27</td>
						<td>1870</td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>Peaches</td>
						<td>Max</td>
						<td>2020.11.18</td>
						<td>1002</td>
					</tr>
					<tr>
						<th scope="row">8</th>
						<td>Ashes</td>
						<td>Jenny</td>
						<td>2021.03.12</td>
						<td>776</td>
					</tr>
					<tr>
						<th scope="row">9</th>
						<td>Shape of you</td>
						<td>Julliet</td>
						<td>2020.12.3</td>
						<td>334</td>
					</tr>
					<tr>
						<th scope="row">10</th>
						<td>Bad boy</td>
						<td>Chacha</td>
						<td>2019.09.28</td>
						<td>1300</td>
					</tr>
					<tr>
						<th scope="row">11</th>
						<td>On my way</td>
						<td>Thornton</td>
						<td>2022.1.1</td>
						<td>13</td>
					</tr>
				</tbody>
			</table>			
		</div>
	</div>
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