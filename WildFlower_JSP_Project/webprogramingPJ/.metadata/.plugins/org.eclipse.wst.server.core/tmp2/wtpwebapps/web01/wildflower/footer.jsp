<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="w3.css">
<title>FOOTER</title>
</head>
<body style="max-width:400px">
  <div class="w3-container w3-theme"  style="text-align: center;">
  
	      <a href="https://www.facebook.com"><i class="fa fa-facebook  w3-xlarge" style="font-size:40px;color:white"></i></a>
          <a href="https://twitter.com"><i class="fa fa-twitter w3-xlarge" style="font-size:40px;color:white"></i></a>
          <a href="www.instagram.com"><i class="fa fa-instagram w3-xlarge" style="font-size:40px;color:white"></i></a>
          <br />
          <b>관리자</b>  <%=application.getInitParameter("ceo") %>  | 
          <b>Email</b>  <%=application.getInitParameter("email") %> <br>
          <b>Address</b>  <%=application.getInitParameter("address") %> |
          <b>Tel.</b>  <%=application.getInitParameter("tel") %> | Copyright (c) 2016 WildFlower <br/>
  </div>   
</body>
</html>