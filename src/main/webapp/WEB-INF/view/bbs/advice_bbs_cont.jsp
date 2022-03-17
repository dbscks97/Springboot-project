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
		rel="stylesheet">
<title>취업정보 상담게시판</title>
<link href="css/BD_Cont.css" rel="stylesheet" type="text/css">
<style>
th {
	margin-left: 10px;
}
</style>
</head>
<body>
		<%@ include file="../../fix/header.jsp"%>
		<%@ include file="../../fix/sitebanner.jsp"%>

		<div class="row">
				<div class="col-md-7 qt">
						<div class="title tba">
								<h1>취업정보 상담게시판</h1>
								<hr>
						</div>
				</div>
				<div class="col-md-7 qt">
						<div class="card comsize">

								<div class="card-header">
										<table>
												<tr>
														<th>작성자 :</th>
														<td>${b.bbs_name}</td>
														<th>&nbsp;&nbsp;작성일 :</th>
														<td>${b.bbs_date}</td>
														<th>&nbsp;&nbsp;조회수 :</th>
														<td>${b.bbs_hit}</td>
												</tr>
										</table>
								</div>
								<div class="card-header">
										<table>
												<tr>
														<th>제목 :</th>
														<td>${b.bbs_title}</td>
												</tr>
										</table>
								</div>

								<i class="bi bi-bookmark"></i>
								<div class="card-body">
										<table>
												<tr>
														<th></th>
														<td valign="top" style="height: 400px">${b.bbs_cont}</td>
														<td><img src="/images/${b.fileName}" style="width:300px;height:auto;" onerror="this.style.display='none'"></td>
												</tr>
										</table>
								</div>
						</div>

								<button class="btn btn-primary" type="button"
										onclick="location='advice_bbs_cont?bbs_no=${b.bbs_no}&page=${page}&state=reply';">답글</button>
								<button class="btn btn-primary" type="button"
										onclick="location='advice_bbs_cont?bbs_no=${b.bbs_no}&page=${page}&state=edit';">수정</button>
								<button class="btn btn-primary" type="button"
										onclick="location='advice_bbs_cont?bbs_no=${b.bbs_no}&page=${page}&state=del';">삭제</button>

								<button class="btn btn-primary but" type="button"
										onclick="location='advice_bbs_list?page=${page}';">목록</button>
						</div>
				</div>
		</div>
		<!-- Optional JavaScript; choose one of the two! -->

		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

		<!-- Option 2: Separate Popper and Bootstrap JS -->
		<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
<%@ include file="../../fix/footer.jsp" %>
</body>
</html>