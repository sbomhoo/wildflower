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
		 
		<h1 style="font-family: Arial; font-weight: bolder; color:#353535;"> <i class="fa fa-send-o"></i> 회 원 가 입 </h1>

		<p>* <b>ID, P/W, 이름</b>은 꼭 입력해주세요 !</p>
		<br>
		<% request.setCharacterEncoding("UTF-8"); %>
		 <form class="w3-container w3-display-container" style="width:400px" id="joinForm" action="join.jsp" method="post">
			<table  border="0" width="350px" align="w3-left">
				<tr>
					<td><B>ID </B></td>
					<TD><input class="w3-input w3-border w3-round" name="id" type="text" placeholder="  아이디"></TD>
				</tr>
				<tr>
					<td><B>P/W </B></td>
					<TD><input class="w3-input w3-border w3-round" name="pw" type="password" placeholder="  비밀번호"></TD>
				</tr>
				<tr>
					<td><B>Name </B></td>
					<TD><input class="w3-input w3-border w3-round" name="name" type="text" ></TD>
				</tr>
				<tr>
					<td><B>Email </B></td>
					<TD><input class="w3-input w3-border w3-round" name="email" type="text" placeholder="  xxxxx@naver.com"></TD>
				</tr>
				<tr>
					<td><B>Tel. </B></td>
					<TD><input class="w3-input w3-border w3-round" name="tel" type="text" placeholder="  010-xxxx-xxxx" ></TD>
				</tr>
				<tr>
					<td><B>Address </B></td>
					<TD><input class="w3-input w3-border w3-round" name="address" type="text" ></TD>
				</tr>
			</table>
			<p></p>
				<input class="button button2" type="submit" value="회원가입" >
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