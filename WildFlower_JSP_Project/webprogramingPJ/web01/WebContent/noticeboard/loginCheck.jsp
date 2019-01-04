<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("id")==null){
%>		
	<script> alert("로그인해주세요!"); history.go(-1); </script>
<%
	}else{
		if(session.getAttribute("id").equals("master")){
			response.sendRedirect("write.jsp");
		}else{ %>

<script> alert("공지사항은 운영자만 쓸수있습니다!"); history.go(-1); </script>
<%
		}	
	}
%>

</body>
</html>