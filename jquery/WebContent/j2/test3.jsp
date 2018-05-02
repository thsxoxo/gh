<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//show()보이기 	hide()숨기기	 toggle()전환
	//slideDown()슬라이드내림	 slideUp()슬라이드올림 	slideToggle()슬라이드 내렷다가 올림 반복
	//fadeIn()서서히보임	fadeOut()서서히 사라지기		fadeToggle()서서히 보이다가 서서히 사라짐반복
	
	//클릭한 h1태그 대상 클릭이벤트
	//클릭한 대상 다음태그 .next()
	
	$('h1').click(function(){
		$(this).next().toggle('slow',function(){
			alert('이벤트종료');
		});
	});
});
</script>
</head>
<body>
<h1>열고 닫기1</h1>
<div>
<h1>제목1</h1>
<p>내용1</p>
</div>

<h1>열고 닫기2</h1>
<div>
<h1>제목2</h1>
<p>내용2</p>
</div>

<h1>열고 닫기3</h1>
<div>
<h1>제목3</h1>
<p>내용3</p>
</div>








</body>
</html>