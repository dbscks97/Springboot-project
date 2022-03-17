<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="java">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>전체글보기</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet">
	 <link href="css/BD_list.css" rel="stylesheet" type="text/css">
</head>
<body>
 <%@ include file="../../fix/header.jsp" %>
  <%@ include file="../../fix/sitebanner.jsp" %>
  
<form method="get" action="free_bbs_list">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
	</script>
	
<div class="row">
	<div class="col-md-7 qt">
		<div class="title tba">
			<h1>전체글보기</h1><hr>			
		</div>
	</div>
	<div class="col-md-7 qt">	
		<div class="list">
			<table class="table table-hover nlist_t">		
			<thead>	
					<tr>
				       <th width="6%" height="26">번호</th>
				       <th width="50%">제목</th>
				       <th width="14%">작성자</th>
				       <th width="17%">작성일</th>
				       <th width="14%">조회수</th>
      			   </tr>			
      		 </thead>	
      		 <tbody>
				<c:if test="${!empty blist}">
        <c:forEach  items="${blist}" var="b">
        <tr>
          <td>${b.bbs_no}</td>
          <td>
          <a href="free_bbs_cont?bbs_no=${b.bbs_no}&state=cont&page=${page}" style="text-decoration:none;color:black;" >${b.bbs_title}</a></td>
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
		<div class="d-grid gap-2 d-md-flex justify-content-md-end writebutton" >
		<button class="btn btn-primary me-md-2" type="button" 
		onclick="location='free_bbs_write?page=${page}';">글작성</button>
	</div>
	</div>
		

	<%-- 페이징 쪽나누기 --%>
  <div class="pageNum" style="margin-top: 50px">
	  <nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
    <%--검색전 페이징 --%>
    <c:if test="${(empty find_field) && (empty find_name)}">
     <c:if test="${page <= 1}">
      [이전]&nbsp;
     </c:if>
     <c:if test="${page>1}">
      <a href="free_bbs_list?page=${page-1}">[이전]</a>&nbsp;
     </c:if>
     
     <%-- 쪽번호 출력 --%>
     <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
       <c:if test="${a == page}"><${a}></c:if> <%--현재 쪽번호가 선택된 경우 --%>
       
       <c:if test="${a !=page}"> <%--현재 쪽번호가 선택 안된 경우 --%>
        <a href="free_bbs_list?page=${a}">[${a}]</a>&nbsp;
       </c:if>
     </c:forEach>
     
     <c:if test="${page >= maxpage}">[다음]</c:if>
     <c:if test="${page < maxpage}">
      <a href="free_bbs_list?page=${page+1}">[다음]</a>
     </c:if>
    </c:if>
    
    <%-- 검색후 페이징 --%>
     <c:if test="${(!empty find_field) && (!empty find_name)}">
     <c:if test="${page <= 1}">
      [이전]&nbsp;
     </c:if>
     <c:if test="${page>1}">
      <a href="free_bbs_list?page=${page-1}&find_field=${find_field}&find_name=${find_name}">[이전]</a>&nbsp;
     </c:if>
     
     <%-- 쪽번호 출력 --%>
     <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
       <c:if test="${a == page}"><${a}></c:if> <%--현재 쪽번호가 선택된 경우 --%>
       
       <c:if test="${a !=page}"> <%--현재 쪽번호가 선택 안된 경우 --%>
        <a href="free_bbs_list?page=${a}&find_field=${find_field}&find_name=${find_name}">[${a}]</a>&nbsp;
       </c:if>
     </c:forEach>
     
     <c:if test="${page >= maxpage}">[다음]</c:if>
     <c:if test="${page < maxpage}">
      <a href="free_bbs_list?page=${page+1}&find_field=${find_field}&find_name=${find_name}">[다음]</a>
     </c:if>
    </c:if>
       </ul>
    </nav>     
  </div>

  <%-- 검색 폼 추가 --%>
  <div id="bFind_wrap">
   <select name="find_field">
    <option value="bbs_title" <c:if test="${find_field == 'bbs_title'}"> ${'selected'}</c:if>>제목</option>
    <option value="bbs_cont" <c:if test="${find_field == 'bbs_cont'}"> ${'selected'}</c:if>>내용</option>
   </select>
   <input name="find_name" size="14" value="${find_name}" />
   <input type="submit" value="검색" />
  </div>
 </div>
	</form>
	<%@ include file="../../fix/footer.jsp" %>
</body>
</html>