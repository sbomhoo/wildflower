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
		
		//3. Statement 생성  내가 입력한 값이 디비에 있는지 확인!
		String sql = "select id,pw from member where id='"+id+"' and pw='"+pw+"'";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery(sql);
		
		// isLogin 은 로그인 확인 유무를 위한 변수
        Boolean isLogin = false;
        while(rs.next()) {
            // rs.next가 true 라면 = 정보가 있다
            isLogin = true;
        }
        
        // DB에 내가 적은 정보가 있다면
        if(isLogin) {
            // 지금 로그인할 id와 pw를 session에 저장하고
            session.setAttribute("id", id); 
            session.setAttribute("pw", pw);
            // 첫 페이지로 돌려보낸다
            response.sendRedirect("index.jsp");    
        } else {
            // DB에 내가적은 정보가 없다면 경고창을 띄워준다
            %> <script> alert("로그인 실패, 아이디와 비밀번호를 다시 확인해주세요!"); history.go(-1); </script> <%            
        }
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