<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<img src="../image/daisy.png" height="20px" width="20px"/> 야생화 갤러리</h3>
<hr>
  <div class="w3-third">
    <div class="w3-card-2">
      <img src="../image/flower/f1.jpg" class="w3-opacity w3-hover-opacity-off" style="width:100%">
      <div class="w3-container">
        <h5>붉은톱풀</h5>
      </div>
    </div>
  </div>

  <div class="w3-third">
    <div class="w3-card-2">
      <img src="../image/flower/f2.jpg" class="w3-opacity w3-hover-opacity-off" style="width:100%">
      <div class="w3-container">
        <h5>청겹도라지</h5>
      </div>
    </div>
  </div>

  <div class="w3-third">
    <div class="w3-card-2">
      <img src="../image/flower/f3.jpg" class="w3-opacity w3-hover-opacity-off" style="width:100%">
      <div class="w3-container">
        <h5>꽃댕강나무</h5>
      </div>
    </div>
  </div>
</div>

<div class="w3-row-padding w3-margin-top">
  <div class="w3-third">
    <div class="w3-card-2">
      <img src="../image/flower/f4.jpg" class="w3-opacity w3-hover-opacity-off" style="width:100%">
      <div class="w3-container">
        <h5>벌개미취</h5>
      </div>
    </div>
  </div>

  <div class="w3-third">
    <div class="w3-card-2">
      <img src="../image/flower/f5.jpg" class="w3-opacity w3-hover-opacity-off" style="width:100%">
      <div class="w3-container">
        <h5>털중나리</h5>
      </div>
    </div>
  </div>

  <div class="w3-third">
    <div class="w3-card-2">
      <img src="../image/flower/f6.jpg" class="w3-opacity w3-hover-opacity-off" style="width:100%">
      <div class="w3-container">
        <h5>미나리 아재비</h5>
      </div>
    </div>
  </div>
</div>
<hr>
<br><br><br><br><br><br>
</div>


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