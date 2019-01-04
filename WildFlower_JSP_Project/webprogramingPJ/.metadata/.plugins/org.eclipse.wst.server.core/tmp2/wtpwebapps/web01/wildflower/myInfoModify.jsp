<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.DAO" %>

<jsp:useBean id="member" class="member.VO">
 <jsp:setProperty name="member" property="*" />
</jsp:useBean>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
 request.setCharacterEncoding("utf-8");

 String id = (String)session.getAttribute("id");
 member.setId(id);
 
 DAO dao = new DAO();
 dao.update(member);
 response.sendRedirect("../wildflower/myInfo.jsp");
%>

</body>
</html>