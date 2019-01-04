<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HEADER</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-red.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<!-- sid nav 부분 -->
<nav class="w3-sidenav w3-card-2 w3-white w3-top" style="width:40%;display:none;z-index:2" id="mySidenav">
<div class="w3-container w3-theme-d2">
  <span onclick="w3_close()" class="w3-closenav w3-right w3-xlarge">x</span>
  <br>
  <div class="w3-padding w3-center">
     <%
        // 현재 로그인된 아이디가 없다면 (= session에 저장된 id가 없다면)
        if(session.getAttribute("id") == null) {
            %>
            <img class="w3-circle" src="../image/user.png" alt="user" style="width:40%">
  	<br><br> Login을 해주세요.<br>
 		<button class="w3-btn w3-white w3-border w3-small w3-slim w3-round-large" onclick="location.href='../wildflower/loginForm.jsp'">
 			<i class="fa fa-key"></i> Login 
 		</button>
 			
 		<button class="w3-btn w3-white w3-border w3-small w3-slim w3-round-large" onclick="location.href='../wildflower/joinForm.jsp'">
 			<i class="fa fa-send-o"></i> &nbsp;  join 
 		</button>
            <%
        } 
        // 현재 로그인된 아이디가 있다면 (= session에 저장된 id가 있다면)
        else {
        
            %>
            <img class="w3-circle" src="../image/user.png" alt="user" style="width:40%">
  			<br><br> <% out.println(session.getAttribute("id") + " 님 환영합니다"); %><br>
 		
 		<button class="w3-btn w3-white w3-border w3-small w3-slim w3-round-large" onclick="location.href='../wildflower/myInfo.jsp'">
 			<i class="fa fa-star"></i> 내정보수정
 		</button>
	
 		<button class="w3-btn w3-white w3-border w3-small w3-slim w3-round-large" onclick="location.href='../wildflower/logout.jsp'">
 			<i class="fa fa-sign-out"></i> Logout 
 		</button>
 			

            <%
        }
    %>
  </div>
</div>

<div class="w3-container">
	 <h3><i class="fa fa-tree"></i> Menu </h3></div>
	  <a href="../wildflower/index.jsp">Home</a>
	  <a href="../noticeboard/notice.jsp">공지사항</a>
	  <a href="../wildflower/dictionary.jsp">야생화 사전</a>
	  <a href="../wildflower/gallery.jsp">야생화 갤러리</a>
	  <a href="../freeboard/freeboard.jsp">자유게시판</a>
	  <a href="../qnaboard/qna.jsp">이름이뭐에요?</a>
	  
	  
<!-- 	  <a href="../wildflower/test.jsp">이름이뭐에요?</a> -->
	  
	  
	
	<div class="w3-container">
	  <h3> <i class="fa fa-bookmark"></i>  BookMark</h3></div>
	  <a href="http://www.naver.com" target="_blank">NAVER</a>
	  <a href="http://www.google.co.kr" target="_blank">구글</a>

</nav>


<!-- headerbar부분 -->
<header class="w3-container w3-card-4 w3-theme w3-top">


  <h2>
	  <i class="w3-opennav fa fa-bars" onclick="w3_open()"></i>
	  &nbsp;&nbsp;
	  <b>Wild Flower</b>
	  <a href="../wildflower/index.jsp"><i class="fa fa-home w3-padding w3-display-right"></i></a>
  </h2>

</header>

</body>
</html>