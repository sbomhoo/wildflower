<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%> 
<!-- 파일 업로드 처리를 위한 MultipartRequest 객체를 임포트 -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
 
<!-- 파일 중복처리 객체 임포트 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
 
<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8"); //받아오는 값들을 한글로 인코딩합니다.

	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/sample";
	String dbid = "user";
	String dbpass = "1234";


	
	//------파일업로드-------------------------------//
	 String uploadPath = "C://Users/미스터신/Desktop/webprogramingPJ/web01/WebContent/uploadImg";
	 
	 
	 int size = 10*1024*1024;        // 업로드 파일 최대 크기 지정

	 String filename="";
	 String name =""; 
	 String title = "";
	 String memo = "";
	 
	 try{
		 
		  // 파일 업로드. 폼에서 가져온 인자값을 얻기 위해request 객체 전달,
		  //업로드 경로, 파일 최대 크기, 한글처리, 파일 중복처리
		  MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
		 
		  // 폼에서 입력한 값을 가져옴
		  filename = multi.getParameter("filename");
		  name = multi.getParameter("name");
		  title =  multi.getParameter("title");
		  memo = multi.getParameter("memo");
		  
  
		// 업로드한 파일들을 Enumeration 타입으로 반환
		// Enumeration형은 데이터를 뽑아올때 유용한 인터페이스 Enumeration객체는 java.util 팩키지에 정의 되어있으므로
		// java.util.Enumeration을 import 시켜야 한다.
		  Enumeration files = multi.getFileNames();
		 
		  
		  // 업로드한 파일들의 이름을 얻어옴
		  String file = (String)files.nextElement();
		  filename = multi.getFilesystemName(file);
		 
		 
		 }catch(Exception e){
		  // 예외처리
		  e.printStackTrace();
		 }
	 
	 
	 //---------------------------------------------------// 
	 

	
	 

		
		 int max = 0;
	try {	
		Connection conn = DriverManager.getConnection(url,dbid,dbpass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT MAX(NUM) FROM qna";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			max=rs.getInt(1);
		}
		
		sql = "INSERT INTO qna(id,title,memo,ref,uploadPath,filename) VALUES(?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, memo);
		pstmt.setInt(4, max+1);
		pstmt.setString(5, uploadPath);
		pstmt.setString(6, filename);
		
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
	   location.href="qna.jsp"; 
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