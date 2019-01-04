<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*, java.text.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wild Flower</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-red.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>



<body style="max-width:600px">


<!-- header부분 -->
<header>
 <%@ include file="header.jsp"%>
</header>

<!-- contents 부분 -->
<div class="w3-container" style="margin-top:75px">
	<img src="../image/daisy.png" height="20px" width="20px"/>
	<% 
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("MM월dd일");
		String today = formatter.format(new java.util.Date());
		out.println(today);
	%>
	오늘의 탄생화 - 자색국화 , 꽃말 - 사랑  
	<hr>
	<div class="w3-row">
	  <div class="w3-col s9 w3-container">
	    <h3 class="w3-text-red"><a href="../noticeboard/notice.jsp" style="text-decoration: none;">
	    공지사항
	    <p style="font-size: 5px; text-align: right;">more▶</p>
	    </a>
	    </h3>
	    <p>This is Notice and Event Board.</p>
	  </div>
	</div>
	  
	<hr>
	<div class="w3-row">
	   <div class="w3-col s6 w3-container">
	    <h3 class="w3-text-red" ><a href="../wildflower/gallery.jsp" style="text-decoration: none;">
	   		야생화 갤러리  
	   		<p style="font-size: 5px; text-align: right;">more▶</p>
	   		</a>
	   	</h3>
	    
	  
	    <div class="w3-third w3-padding-tiny">
		    <div class="w3-card-2">
		      <img src="../image/flower/f2.jpg" class="w3-round" style="width:100%">
		    </div>
		</div>
		
		 <div class="w3-third w3-padding-tiny">
		    <div class="w3-card-2">
		      <img src="../image/flower/f6.jpg" class="w3-round" style="width:100%">   
		    </div>
		 </div>
 
		  <div class="w3-third w3-padding-tiny">
		    <div class="w3-card-2">
		      <img src="../image/flower/f5.jpg" class="w3-round" style="width:100%">
		    </div>
		  </div>
		  
		 
	
		  
	  </div>
	  <div class="w3-col s6 w3-container">
	    <h3 class="w3-text-red">
	    <a href="../qnaboard/qna.jsp" style="text-decoration: none;">
	    이름이 뭐에요?<p style="font-size: 5px; text-align: right;">more▶</p>
	    </a></h3>
	    <p style="font-size: 15px">길가에 피어있는 꽃이름에 대해 궁금해보신적있나요?<br>이곳에 물어보세요! </p>
	    	
	  </div>
	</div>
	<hr>
<br><br><br>
</div>
<br><br><br><br><br><br>

<!-- footer부분 -->
<footer class="w3-container w3-theme w3-bottom">
  <%@ include file="footer.jsp"%>
</footer>

<script>
function w3_open() {
    document.getElementById("mySidenav").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
}
</script>

</body>

</html>