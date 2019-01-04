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
<div class="w3-row-padding w3-margin-top">
<h3 class="w3-text-red">
<img src="../image/daisy.png" height="20px" width="20px"/> 이름이 뭐에요?</h3>
<hr>
이곳은 야생화의 이름을 서로 물어볼 수 있는 게시판입니다. <br>
신속하게 개발하겠습니다. 감사합니다.

</div>
<br><br><br>

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