<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->

<script>

 $(function(){
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
	 
 });
 function process1(){
	 $('#demo1').removeClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process2(){
	 $('#demo2').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process3(){
	 $('#demo3').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process4(){
	 $('#demo4').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process5(){
	 $('#demo5').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo6').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process6(){
	 $('#demo6').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo7').addClass('d-none');
 }
 
 function process7(){
	 $('#demo7').removeClass('d-none');
	 $('#demo1').addClass('d-none');
	 $('#demo2').addClass('d-none');
	 $('#demo3').addClass('d-none');
	 $('#demo4').addClass('d-none');
	 $('#demo5').addClass('d-none');
	 $('#demo6').addClass('d-none');
 }
</script>
<style>
.btn-light{
 border-radius:10px;
}

.hr1{
 margin: 10px 0px 10px 0px;
}
</style>
<link href="css/member_form.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="../fix/header.jsp" %>
<div class="col-md-2" style="margin-left:150px;">
<!-- ????????? ??? ??????-->
  <!-- ?????? ?????????1 -->
<div class="panel panel-info">
    <div class="panel-heading">
      <h3 class="panel-title">???????????????</h3>
    </div>
    <!-- ???????????? ????????????1 -->
    <ul class="list-group">
      <li class="list-group-item" onclick="process1();"><a href="#demo1">?????? ??? ???</a></li>
      <li class="list-group-item" onclick="process2();"><a href="#">?????? ??? ??????</a></li>
      <li class="list-group-item" onclick="process3();"><a href="#">??? ?????????</a></li>
    </ul>
</div>
  <!-- ?????? ?????????2 -->
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">?????? ??????</h3>
  </div>
    <!-- ???????????? ????????????2 -->
      <ul class="list-group">
        <li class="list-group-item" onclick="process4();"><a href="#">?????? ??????</a></li>
        <li class="list-group-item" onclick="process5();"><a href="#">?????? ??? ??????</a></li>
      </ul>
</div>      
  <!-- ?????? ?????????3 -->
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">???????????? ??????</h3>
  </div>
      <!-- ???????????? ????????????3 -->
      <ul class="list-group">
        <li class="list-group-item" onclick="process6();"><a href="#">About</a></li>
        <li class="list-group-item" onclick="process7();"><a href="#">Help</a></li>
      </ul>
    </div>
</div> 

<div id="demo1">
<table class="table float-right" style="width:50%;margin-right:300px;">
 <thead>
 <tr>
  <th>?????????</th>
  <th>??????</th>
  <th>??????</th>
  <th>?????????</th>
 </tr>
 </thead>
 <tbody>
  <tr>
   <td>Q&A?????????</td>
   <td>?????? ?????? ??????</td>
   <td>2022.01.08</td>
   <td>50</td>
  </tr>
  <tr>
   <td>???????????? ?????????</td>
   <td>?????? ?????????????????????</td>
   <td>2022.01.07</td>
   <td>50</td>
  </tr>
 </tbody>
</table>

 <div class="text-center" style="margin-right:300px;margin-top:250px;">
<ul class="pagination">
 <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <li class="page-item"><a class="page-link" href="#">1</a></li>
 <li class="page-item"><a class="page-link" href="#">2</a></li>
 <li class="page-item"><a class="page-link" href="#">3</a></li>
 <li class="page-item"><a class="page-link" href="#">4</a></li>
 <li class="page-item"><a class="page-link" href="#">5</a></li>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
</div>

<div id="demo2">
<table class="table float-right" style="width:50%;margin-right:300px;">
 <thead>
 <tr>
  <th>?????????</th>
  <th>??????</th>
  <th>??????</th>
 </tr>
 </thead>
 <tbody>
  <tr>
   <td>???????????? ?????????</td>
   <td>??????????????????</td>
   <td>2022.01.08</td>
  </tr>
  <tr>
   <td>???????????????</td>
   <td>????????????</td>
   <td>2022.01.07</td>
  </tr>
 </tbody>
</table>
 <div class="text-center" style="margin-right:300px;margin-top:250px;">
<ul class="pagination">
 <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <li class="page-item"><a class="page-link" href="#">1</a></li>
 <li class="page-item"><a class="page-link" href="#">2</a></li>
 <li class="page-item"><a class="page-link" href="#">3</a></li>
 <li class="page-item"><a class="page-link" href="#">4</a></li>
 <li class="page-item"><a class="page-link" href="#">5</a></li>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
</div>



<div id="demo3">
<table class="table float-right" style="width:50%;margin-right:300px;">
 <thead>
 <tr>
  <th>?????????</th>
  <th>??????</th>
  <th>?????????</th>
  <th>??????</th>
  <th>?????????</th>
 </tr>
 </thead>
 <tbody>
  <tr>
   <td>???????????????</td>
   <td>???????????????</td>
   <td>?????????</td>
   <td>2022.01.08</td>
   <td>50</td>
  </tr>
  <tr>
   <td>???????????????</td>
   <td>??????</td>
   <td>????????????</td>
   <td>2022.01.07</td>
   <td>50</td>
  </tr>
 </tbody>
</table>
 <div class="text-center" style="margin-right:300px;margin-top:250px;">
<ul class="pagination">
 <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <li class="page-item"><a class="page-link" href="#">1</a></li>
 <li class="page-item"><a class="page-link" href="#">2</a></li>
 <li class="page-item"><a class="page-link" href="#">3</a></li>
 <li class="page-item"><a class="page-link" href="#">4</a></li>
 <li class="page-item"><a class="page-link" href="#">5</a></li>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
</div>



<div class="container" id="demo4">
 <p class="h4"><span class="text-danger">???</span> ?????? ??????</p>
 <hr class="hr1">
 *????????? <strong class="text-center a" style="margin-left:100px;">?????????</strong><hr class="hr1">
 *???????????? <button style="margin-left:84px;" type="button" class="btn btn-light btn-sm border-primary">??????</button><hr class="hr1">
 *????????? <strong style="margin-left:100px;">?????????</strong>&nbsp;&nbsp;&nbsp; <button type="button" class="btn btn-light btn-sm border-primary">??????</button><hr class="hr1">
 *????????? <strong class="text-center" style="margin-left:100px;">aaa@naver.com</strong>&nbsp;&nbsp;&nbsp; <button type="button" class="btn btn-light btn-sm border-primary">??????</button><hr class="hr1">
 *????????? <strong class="text-center" style="margin-left:100px;">100???</strong><hr class="hr1">
</div>





 <div id="demo5" class="container">
 <div class="row">
<input type="text" class="col-sm-2 m-3 input-sm">
<input type="text" class="col-sm-2 m-3 input-sm">
<select class="col-sm-2 m-3 input-sm">
 <option>?????? ??????</option>
 <option>1</option>
 <option>2</option>
</select>
<button type="button" class="btn btn-primary col-sm-2 m-3 input-sm">??????</button>
</div>
<div class="row">
<div class="col-md-10">
<table class="table table-striped table-bordered something">
 <thead>
 <tr>
  <th class="col-md-1">?????? ??????</th>
  <th class="col-md-1">?????????</th>
  <th class="col-md-1">??????</th>
  <th class="col-md-1">????????? ??????</th>
 </tr>
 </thead>
  <tbody>
  
  <tr>
   <td class="m-3">37334072</td>
   <td class="text-primary m-3">dbscks97</td>
   <td class="text-danger m-3">1003</td>

   <td class="text-primary m-3">28??? ???</td>
  </tr>
  <tr>
   <td class="m-3">37329279</td>
   <td class="text-primary m-3">dbscks97</td>
   <td class="text-danger m-3">1003</td>

   <td class="text-primary m-3">1?????? ???</td>
  </tr>
  <tr>
  <td class="m-3" >37333478</td>
   <td class="text-primary m-3">dbscks97</td>
   <td class="text-danger m-3">1003</td>
   <td class="text-primary m-3">3?????? ???</td>
   </tr>
 </tbody>
</table>
</div>
</div>

 <div class="text-center align-bottom" style="margin-top:170px;">
<ul class="pagination">
 <li class="page-item"><a class="page-link" href="#">Previous</a></li>
 <li class="page-item"><a class="page-link" href="#">1</a></li>
 <li class="page-item"><a class="page-link" href="#">2</a></li>
 <li class="page-item"><a class="page-link" href="#">3</a></li>
 <li class="page-item"><a class="page-link" href="#">4</a></li>
 <li class="page-item"><a class="page-link" href="#">5</a></li>
 <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
</div>
 
 <div id="demo6" class="text-center" style="margin-right:300px;">
 <br>
 KG ????????? ????????? ?????? ????????? ????????? ????????? ???????????? ??????<br>
  ????????? ???????????? ?????????????????????.<br>
  ????????? ?????????
  <br><br>
  ???????????? : 111-222-3333<br>
  ?????? : ?????? ????????? ??????????????? 171 ??????????????? 301???
  
 </div>
 
 <div id="demo7" style="margin-right:300px;">
  <br>
  ??? ????????? ???????????? ??????
 </div>





</body>
</html>