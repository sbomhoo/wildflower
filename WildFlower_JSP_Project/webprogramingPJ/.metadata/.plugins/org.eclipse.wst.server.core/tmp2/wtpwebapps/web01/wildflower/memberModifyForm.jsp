<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
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
		 
		<h1 style="font-family: Arial; font-weight: bolder; color:#353535;"> <i class="fa fa-star"></i> 비밀번호 변경 </h1>

		<br>
		<% request.setCharacterEncoding("UTF-8"); %>
		 <form class="w3-container w3-display-container" style="width:400px" id="modifyForm" action="memberModify.jsp"
		  method="post">
			<table  border="0" width="350px" align="w3-left">

				<tr>
					<td><B>현재 비밀번호 </B></td>
					<td>
		<%	
					request.setCharacterEncoding("utf-8");

					String id = request.getParameter("id");
					String pw = request.getParameter("pw");
					
					//1. JDBC 드라이버 로딩
					Class.forName("com.mysql.jdbc.Driver");
				
					Connection conn = null;
					PreparedStatement pstmt = null;
				
					try{
						String jdbcDriver = "jdbc:mysql://localhost:3306/sample";
						String dbUser="user";
						String dbPass="1234";
								
						
						//2. 데이터베이스 커넥션 생성
						conn= DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
						
						//3. Statement 생성  현재 이메일 찾아오기
						String sql = "select pw from member where id='"+session.getAttribute("id")+"'";
						pstmt = conn.prepareStatement(sql);
						ResultSet rs=pstmt.executeQuery(sql);
						
						//rs.에 정보가있다면
				        while(rs.next()) {
				            // rs.next가 true 라면 = 정보가 있다
				           out.println(rs.getString("pw"));
				        }}catch (Exception e) {       
				            out.println("DB 연동 실패");
				        } finally {
				    		
				    		//6. 사용된 statement 종료
				    		if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
				    		//7.커넥션 종료
				    		if(conn != null) try {conn.close();} catch(SQLException ex){}
				    	}
					
%>
					
					
					</td>
				</tr>
				
				<tr>
					<td><B>변경 하실 P/W </B></td>
					<TD><input class="w3-input w3-border w3-round" id="pw_c" name="pw_c" type="password" ></TD>
				</tr>
				
				<tr>
					<td><B>P/W 확인 </B></td>
					<TD><input class="w3-input w3-border w3-round" id="pw_ck" name="pw_ck" type="password" ></TD>
				</tr>
				
			</table>
			<p></p>
				<input class="button button2" type="submit" value="비밀번호 변경" >
				
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