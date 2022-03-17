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
<title>문제 제출 페이지</title>
 <link href="css/question_contents.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="../fix/header.jsp" %>
<%@ include file="../fix/sitebanner.jsp" %>

<div class="row">
	<div class="col-md-7 qt">
		<div class="card border-light mb-3">
			  <div class="card-header" style="font-weight:bold; font-size:1.5em;">숌 코드</div>
			  <div class="card-body">
			    <p class="card-text">
			    재용이는 최신 컴퓨터 10대를 가지고 있다. 어느 날 재용이는 많은 데이터를 처리해야 될 일이 생겨서 각 컴퓨터에 1번부터 10번까지의 번호를 부여하고, 10대의 컴퓨터가 다음과 같은 방법으로 데이터들을 처리하기로 하였다.

1번 데이터는 1번 컴퓨터, 2번 데이터는 2번 컴퓨터, 3번 데이터는 3번 컴퓨터, ... ,

10번 데이터는 10번 컴퓨터, 11번 데이터는 1번 컴퓨터, 12번 데이터는 2번 컴퓨터, ...

총 데이터의 개수는 항상 ab개의 형태로 주어진다. 재용이는 문득 마지막 데이터가 처리될 컴퓨터의 번호가 궁금해졌다. 이를 수행해주는 프로그램을 작성하라.
			    </p>
			  </div>
		</div>
		
		<div class="col-md-12 exam">
			<div class="headline"><h4>입력예시</h4>
				<p>입력의 첫 줄에는 테스트 케이스의 개수 T가 주어진다. 그 다음 줄부터 각각의 테스트 케이스에 대해 정수 a와 b가 주어진다. (1 ≤ a < 100, 1 ≤ b < 1,000,000)</p>
			</div>	
		</div>
		<div class="col-md-12 exam">
			<div class="headline" ><h4>출력예시</h4>
				<p>각 테스트 케이스에 대해 마지막 데이터가 처리되는 컴퓨터의 번호를 출력한다.</p>
			</div>	
		</div>
	<div class="card border-light mb-3 source">
			  <div class="card-header" style="font-weight:bold; font-size:1.0em;">소스 코드 입력</div>
			  <div class="card-body">
			    <p class="card-text">int fibonacci(int n) {
    if (n == 0) {
        printf("0");
        return 0;
    } else if (n == 1) {
        printf("1");
        return 1;
    } else {
        return fibonacci(n‐1) + fibonacci(n‐2);
    }
}
			    </p>
			  </div>
		</div>
		<div class="button sourcebt">
		<input class="btn btn-primary" type="submit" value="제출하기"> 
		<input class="btn btn-primary" type="submit" onclick="history.back()" value="뒤로가기">
	</div>
</div>
</div>

<%@ include file="../fix/footer.jsp" %>
</body>
</html>