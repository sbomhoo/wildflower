<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%> 

<%
	request.setCharacterEncoding("utf-8"); //받아오는 값들을 한글로 인코딩합니다.

	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/sample";
	String id = "user";
	String pass = "1234";


	String name = request.getParameter("name"); //write.jsp에서 name에 입력한 데이터값
	String title = request.getParameter("title"); //write.jsp에서 title에 입력한 데이터값
	String memo = request.getParameter("memo"); //write.jsp에서 memo에 입력한 데이터값
	
	int max = 0;
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT MAX(NUM) FROM notice";
		ResultSet rs = stmt.executeQuery(sql);
		
		
		if(rs.next()){
			max=rs.getInt(1);
		}
		
		sql = "INSERT INTO notice(id,title,memo,ref) VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, memo);
		pstmt.setInt(4, max+1);
		
		pstmt.execute();
		pstmt.close();
		stmt.close();
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	} 

%>
  <script language=javascript>
   self.window.alert("글 작성이 완료되었습니다.");
   location.href="notice.jsp"; 
   </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>