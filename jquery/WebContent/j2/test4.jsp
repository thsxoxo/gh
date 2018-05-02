<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{margin:0px; padding:0px;}
ul{list-style: none;}
img{width:500px;height:350px;}
</style>
<script src="../js/jquery-3.3.1.js"></script>
<script src="../js/jquery.innerfade.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#inner_fade').innerfade({
		animationtype:'fade',//
		speed:750,//그림이 변하는 속도
		timeout:2000,//
		type:'random',//그림을 랜덤하게
		containerheight:'350px'//컨테이너내의 높이
		
	});
	
	
});
</script>
</head>
<body>
<ul id="inner_fade">
	<li><img src="1.gif"></li>
	<li><img src="2.gif"></li>
	<li><img src="3.gif"></li>
	<li><img src="4.jpg"></li>
	<li><img src="5.jpg"></li>

</ul>
</body>
</html>