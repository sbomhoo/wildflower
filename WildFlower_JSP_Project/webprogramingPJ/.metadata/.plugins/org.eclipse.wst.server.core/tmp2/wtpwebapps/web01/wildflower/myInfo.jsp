<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.DAO" %>
<%@ page import = "member.VO" %>
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
    padding: 7px 20px;
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

<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("id");
	DAO dao = new DAO();
	VO member = dao.selectmember(id);
%>


	<div class="w3-content w3-display-container" style="max-width:1200px" id="logindiv">
		 
		<h1 style="font-family: Arial; font-weight: bolder; color:#353535;"> <i class="fa fa-send-o"></i> 정 보 수 정 </h1>
		<p>* <b>ID</b>는 수정하실 수 없습니다.</p>
		<p>* <b>비밀번호 변경</b>은 밑에 버튼을 눌러주세요.</p>
		<br>
		<% request.setCharacterEncoding("UTF-8"); %>
		 <form class="w3-container w3-display-container" style="width:400px" id="joinForm" action="myInfoModify.jsp" method="post">
			<table  border="0" width="350px" align="w3-left">
				<tr>
					<td><B>ID </B></td>
					<TD><input class="w3-input w3-border w3-round" name="id" type="text" value="<%= member.getId() %>" readonly></TD>
				</tr>
				
				<tr>
					<td><B>Name </B></td>
					<TD><input class="w3-input w3-border w3-round" name="name" type="text" value="<%= member.getName() %>" ></TD>
				</tr>
				<tr>
					<td><B>Email </B></td>
					<TD><input class="w3-input w3-border w3-round" name="email" type="text" value="<%= member.getEmail() %>" ></TD>
				</tr>
				<tr>
					<td><B>Tel. </B></td>
					<TD><input class="w3-input w3-border w3-round" name="tel" type="text" value="<%= member.getTel() %>"  ></TD>
				</tr>
				<tr>
					<td><B>Address </B></td>
					<TD><input class="w3-input w3-border w3-round" name="address" type="text" value="<%= member.getAddress() %>"  ></TD>
				</tr>
			</table>
			<p></p>
						
 		<input class="button button2" type="submit" value="정보수정" >
	 		
	
		</form>
		
		
			<button class="button button2" onclick="yesorno()">
	 			<i class="fa fa-times"></i> 회원탈퇴
	 		</button>
		
			<script> 
				function yesorno(){
				if(confirm("정말로 회원탈퇴를 하시겠습니까?")){
				      location.href="../wildflower/memberDelete.jsp";
				}else{
				     return;
					}
				}
			</script>
		<button class="button button2" onclick="location.href='../wildflower/memberModifyForm.jsp'">
		 		<i class="fa fa-key"></i>	 p/w 변경
		 </button>
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