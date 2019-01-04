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
<style>
	.button {
    background-color: #F44336; /* red */
    border: none;
    color: white;
    padding: 7px 50px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer; }
    .button2 {border-radius: 4px;}

	.mySlides {display:none}
	.w3-left, .w3-right, .w3-badge {cursor:pointer}
	.w3-badge {height:13px;width:13px;padding:0}
	.city {display:none;}

</style>
</head>

<body style="max-width:600px">

<!-- header부분 -->
<header>
 <%@ include file="header.jsp"%>
</header>


<!-- contents 부분 -->
<div class="w3-container" style="margin-top:75px">
<hr>
<section>
	<center>
		<div class="w3-content w3-display-container" style="max-width:1200px" id="logindiv">
			 
			<h1 style="font-family: Arial; font-weight: bolder; color:#353535;">Login <i class="fa fa-key"></i> </h1>

			 <form class="w3-container w3-display-container" style="width:400px" id="loginform" action="login.jsp" method="post">
					<p><input class="w3-input w3-border w3-round" name="id" type="text" placeholder="  ID"></p>
	 				<p><input class="w3-input w3-border w3-round" name="pw" type="password" placeholder="  Password"> 
	 					<input class="w3-check w3-small" type="checkbox" checked="checked"> <label class="w3-validate">자동로그인</label> </p>
					
					<input class="button button2" type="submit" value="로그인" >
					<input class="button button2" type="button" value="회원가입" onclick="location.href='joinForm.jsp'">	
			</form>
			
		</div>

	</center>
	<br><br><br><br><br><br><br><br><br>


	
</section>



<hr>
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