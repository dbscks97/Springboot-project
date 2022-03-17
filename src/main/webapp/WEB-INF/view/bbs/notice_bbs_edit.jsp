<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글 작성하기</title>
<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet">
<link href="css/BD_write.css" rel="stylesheet" type="text/css">
</head>
<body>
		<%@ include file="../../fix/header.jsp"%>
		<%@ include file="../../fix/sitebanner.jsp"%>

		<div class="row">
				<div class="col-md-7 qt">
						<div class="title tba">
								<h1>글 작성하기</h1>
								<hr>
						</div>
				</div>
				<div class="col-md-7 qt">
						<form method="post" action="/notice_bbs_edit_ok"
								onsubmit="return write_check();" enctype="multipart/form-data"
								accept-charset="UTF-8">
								<%-- 히든값 --%>
								<input type="hidden" name="bbs_no" value="${b.bbs_no}" />
								<%--번호 --%>
								<input type="hidden" name="page" value="${page}" />
								<%--페이징에서 책갈피 기능때문에 히든으로 쪽번호 전달 --%>

								<table>
										<tr>
												<th>글쓴이</th>
												<td><input type="hidden" value="test" class="form-control"
														name="bbs_name" id="bbs_name"
														style="height: 30px;" /></td>
										</tr>
										
										<tr>
												<th>제목</th>
												<td><input class="form-control" name="bbs_title"
														id="bbs_title" style="height: 30px; width: 1030px"
														value="${b.bbs_title}" /></td>
										</tr>

										<tr>
												<th>내용</th>
												<td><input class="form-control" name="bbs_cont"
														id="bbs_cont" style="height: 500px; width: 1030px"
														value="${b.bbs_cont}" /></td>
										</tr>

										<tr>
												<th>파일 첨부</th>
												<td><input type="file" name="files" /></td>
										</tr>

										<tr>
												<th>비밀번호</th>
												<td><input class="form-control" type="password"
														name="bbs_pwd" id="bbs_pwd" style="height: 30px;" /></td>
										</tr>
								</table>

								<div class="bt">
										<button class="btn btn-primary" type="submit">등록</button>
										<button class="btn btn-primary" type="reset"
												onclick="history.back()">취소</button>
										<button class="btn btn-primary" type="button"
												onclick="location='notice_bbs_list?page=${page}';">목록</button>
										<%--페이징에서 책갈피 기능을 구현을 위해 get방식으로 쪽번호 전달. --%>
								</div>
						</form>
				</div>

		</div>
<%@ include file="../../fix/footer.jsp" %>
</body>
</html>