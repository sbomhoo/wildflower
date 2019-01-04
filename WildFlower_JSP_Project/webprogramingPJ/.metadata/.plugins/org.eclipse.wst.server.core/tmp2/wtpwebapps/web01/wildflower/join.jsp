<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String address= request.getParameter("address");
	
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
		
		//3. Statement 생성
		pstmt = conn.prepareStatement(
				"insert into MEMBER values (?,?,?,?,?,?)");
		
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		pstmt.setString(5, tel);
		pstmt.setString(6, address);
		
		
		pstmt.executeUpdate();
		} finally {
			
			//6. 사용된 statement 종료
			
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			
			//7.커넥션 종료
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}

%>

<script type="text/javascript">
	alert("회원가입이 완료되었습니다! 로그인해주세요 ^^*");
	location.href = "index.jsp"; 

</script>

</body>
</html>