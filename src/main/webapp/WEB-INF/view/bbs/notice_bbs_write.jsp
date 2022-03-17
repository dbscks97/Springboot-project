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
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
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

						<form role="form" method="post" action="/notice_bbs_write_ok"
								onsubmit="return write_check();" enctype="multipart/form-data" autocomplete="off">
										<label>게시판</label>
											<select class="category1" name="bbs_cateno" id="bbs_cateno">
												<option value="">전체</option>
											</select>
								<table>
								       <tr>											
												<td><input type="hidden" value="test" class="form-control"
														name="bbs_name" id="bbs_name"
														style="height: 30px;" /></td>
										</tr>
										
										<tr>
												<th>제목</th>
												<td><textarea class="form-control"
																placeholder="제목을 입력하시오" name="bbs_title" id="bbs_title"
																style="height: 30px; width: 1030px"></textarea></td>
										</tr>
										
									
										<tr>
												<th>내용</th>
												<td><textarea class="form-control"
																placeholder="내용을 입력하시오" name="bbs_cont" id="bbs_cont"
																style="height: 500px; width: 1030px"></textarea></td>
										</tr>

										<tr>
												<th>파일 첨부</th>
												<td><input type="file" name="files" /></td>
										</tr>

										<tr>
												<th>비밀 번호</th>
												<td><input type="password" class="form-control"
														placeholder="비밀번호 입력하시오" name="bbs_pwd" id="bbs_pwd"
														style="height: 30px;" /></td>
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
<script>
// 컨트롤러에서 데이터 받기
var jsonData = JSON.parse('${category}');
console.log(jsonData);

var cate1Arr = new Array();
var cate1Obj = new Object();

// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
for(var i = 0; i < jsonData.length; i++) {
 
 if(jsonData[i].level == "1") {
  cate1Obj = new Object();  //초기화
  cate1Obj.cateno = jsonData[i].cateno;
  cate1Obj.catename = jsonData[i].catename;
  cate1Arr.push(cate1Obj);
 }
}

// 1차 분류 셀렉트 박스에 데이터 삽입
var cate1Select = $("select.category1")

for(var i = 0; i < cate1Arr.length; i++) {
 cate1Select.append("<option value='" + cate1Arr[i].cateno + "'>"
      + cate1Arr[i].catename + "</option>"); 
}

</script>
<%@ include file="../../fix/footer.jsp" %>
</body>
</html>