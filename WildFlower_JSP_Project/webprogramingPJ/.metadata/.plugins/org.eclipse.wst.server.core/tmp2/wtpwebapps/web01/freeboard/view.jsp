<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="freeboard.*" %>
<jsp:useBean id="dao" class="freeboard.DAO"/>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-red.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.button {
    background-color: #F44336; /* red */
    border: none;
    color: white;
    padding: 7px 15px;
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
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	VO vo = dao.getView(idx);	
	dao.UpdateHit(idx);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Wild Flower</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 </head>


<body style="max-width:650px">

<!-- header부분 -->
<header>
 <%@ include file="../wildflower/header.jsp"%>
</header>

<!-- contents 부분 -->
<div class="w3-container"  style="margin-top:75px">
<h3 class="w3-text-red">
	<img src="../image/daisy.png" height="20px" width="20px"/>글 읽기</h3>
	<hr>

<table width="80%">
  <tr>
   <td>
   <table width="100%">
   	<tr height="1" bgcolor="#F44336"><td colspan="4" width="407"></td></tr>
   	<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">글번호</td>
      <td width="319"><%=idx%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">조회수</td>
      <td width="319"><%=vo.getHit()%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성자</td>
      <td width="319"><%=vo.getId()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성일</td>
      <td width="319"><%=vo.getNdate()%></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">제목</td>
      <td width="319"><%=vo.getTitle()%></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
                <tr>
      <td width="0">&nbsp;</td>
                   <td width="399" colspan="2" height="200">
                   <%=vo.getMemo().replaceAll("\r\n","<br/>")%>
                </tr>
   
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#F44336"><td colspan="4" width="407"></td></tr>
     <tr align="center" width="100%">
      <td width="0">&nbsp;</td>
      <td colspan="2">
      
		<% if(session.getAttribute("id")==null){%>
			<input type=button class="button button2" value="글쓰기"  OnClick="window.location='loginCheck.jsp'">
			<input type=button class="button button2" value="답글" OnClick="window.location='reply.jsp?idx=<%=idx%>&pg=<%=pg%>'">
			<input type=button class="button button2" value="목록" OnClick="window.location='freeboard.jsp?pg=<%=pg%>'">
		<% }else{ %>	
		<% if(session.getAttribute("id").equals(vo.getId())){%>
			<input type=button class="button button2" value="글쓰기"  OnClick="window.location='loginCheck.jsp'">
			<input type=button class="button button2" value="목록" OnClick="window.location='freeboard.jsp?pg=<%=pg%>'">
			<input type=button class="button button2" value="수정" OnClick="window.location='modify.jsp?idx=<%=idx%>&pg=<%=pg%>'">
			<input type=button class="button button2" value="삭제" OnClick="window.location='delete.jsp?idx=<%=idx%>&pg=<%=pg%>'">
		<% }else{ %>
			<input type=button class="button button2" value="글쓰기"  OnClick="window.location='loginCheck.jsp'">
			<input type=button class="button button2" value="답글" OnClick="window.location='reply.jsp?idx=<%=idx%>&pg=<%=pg%>'">
			<input type=button class="button button2" value="목록" OnClick="window.location='freeboard.jsp?pg=<%=pg%>'">
		<% }}%>
			
		
		
      <td width="0">&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
 
 <br><br><br>
 </div>
 <br><br><br>
 
 <!-- footer부분 -->
<footer class="w3-container w3-theme w3-bottom">
  <%@ include file="../wildflower/footer.jsp"%>
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