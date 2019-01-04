<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<script> alert("회원탈퇴 되셨습니다.");</script>
				    <%
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
						String sql = "delete from member where id='"+session.getAttribute("id")+"'";
						pstmt = conn.prepareStatement(sql);
						pstmt.executeUpdate(sql);
						
						//삭제하고 메인페이지로				
					
						session.invalidate();
						response.sendRedirect("index.jsp");
					
						}catch (Exception e) {       
				            out.println("DB 연동 실패");
				        } finally {
				    		
				    		//6. 사용된 statement 종료
				    		if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
				    		//7.커넥션 종료
				    		if(conn != null) try {conn.close();} catch(SQLException ex){}
				    	}
				        
%>

</body>
</html>