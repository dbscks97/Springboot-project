<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="./css/member_form_style.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script>

 function button1(){
	 $('#outerline').toggle();
	 
 }
 
 function to(){
	 location.href = "join_2.jsp";
 }
 $toggle = 1;
 $toggle_var=10;
 function active_toggle(a){
	 
	 if($toggle == 1){
		 active_func1();
		 $toggle = 2;
	 }
	 else if($toggle == 2 && $toggle_var == a){
		 active_func2();
		 $toggle = 1;
	 }
	 $toggle_var = a;
 }
 
 
 function active_func1(){
	 $('#tab_content').addClass('tab-content');
	 
 }
 
 function active_func2(){
	 $('#tab_content').removeClass("tab-content");
 }
 
 
</script>

	<script>
	$(document).ready(function(){
		//탭버튼 클릭에 따른 콘텐츠 활성화
		$("#tab button").click(function(){			
			if( $(this).hasClass("active")== true){
				i=0;
				$("#tabContents section").hide();
				$("#tabContents").height(0).css("border","none");
				$(this).removeClass("active");
			}
			else{
				const pos = $(this).index();
				$("#tab button").css("border-bottom","1px solid #e4e8eb").removeClass("active");
				$(this).addClass("active hit");
				$("#tabContents section").eq(pos).show().siblings().hide();
				const h = $("#tabContents section").eq(pos).outerHeight(true);
				console.log(h);
				$("#tabContents").height(h).css("border","1px solid #e4e8eb");
			}
		});
	});
	</script>


	<style>
	* {margin:0; padding:0; box-sizing:border-box;}
	body {font:9pt/160% "나눔고딕";}
	#layout {width:340px; padding:10px; position:relative; top:1px; left:-30px;}
	#tab {display:flex;}
	
	#tab button {flex:1; font-weight:bold; padding:13px 0; background:#EAEAEA; border:1px solid #D8D8D8;}
	#tab button:not(:last-child){ border-right:none;}
	#tab button.active {background:white; border-bottom:none !important;}
	
	#tabContents {position:relative; border-top:none; border-top:none !important;}
	#tabContents section {position:absolute; top:0; width:100%; display:none; padding:20px;color:#444;}
	#tabContents h2 {margin:20px 0; font-size:1rem; color:black; font-weight:normal}
	#tabContents ul {list-style-position:inside;}
	</style>


</head>
<body>
 <button id="click1" onclick="button1()" style="position:absolute; top:0px; right:10px;">홍길동</button>
 <div id="outerline" style="position:absolute; top:30px; right:10px;">
 <span id="nickname" onclick="to()">홍길동 님</span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<span>마이페이지</span> 
 <button id="logout">로그아웃</button><br>
 <p>레벨&nbsp;:&nbsp;<b style="color:blank;">1</b>&nbsp;&nbsp;&nbsp;포인트&nbsp;:&nbsp;<b style="color:blank;">100</b></p>
 
	<div id="layout">
		<div id="tab">
			<button type="button">모니터링</button>
			<button type="button">내코멘트</button>
			<button type="button">북마크</button>
		</div>
		<div id="tabContents">
			<section>
				<h2>모니터링</h2>
				<ul>
					<li>aaaaaaa</li>
					<li>aaaaaaa</li>
					<li>aaaaaaa</li>
					<li>aaaaaaa</li>
					<li>aaaaaaa</li>
				</ul>
			</section>
			<section>
				<h2>내코멘트</h2>
				<ul>
					<li>bbbbb</li>
					<li>bbb</li>
					<li>bbbb</li>
					<li>bbbbbbbbb</li>
					<li>bbbbbbb</li>
				</ul>
			</section>
			<section>
				<h2>IP</h2>
				<ul>
					<li>cccccc</li>
					<li>cccccc</li>
					<li>cccccccccc</li>
					<li>cccccc</li>
					<li>cccccccc</li>
				</ul>
			</section>
		</div>
	</div>





</div>
 
 
 
 
 </div>
</body>
</html>