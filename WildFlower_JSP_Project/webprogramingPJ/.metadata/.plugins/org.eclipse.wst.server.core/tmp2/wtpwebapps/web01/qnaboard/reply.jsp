<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="qnaboard.*" %>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-red.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.button {
    background-color: #F44336; /* red */
    border: none;
    color: white;
    padding: 7px 20px;
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
<jsp:useBean id="dao" class="qnaboard.DAO"/>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	VO vo = dao.getView(idx);
%> 
<script language = "javascript">  // 자바 스크립트 시작

function replyCheck()
  {
   var form = document.replyform;
   
  if( !form.title.value )
   {
    alert( "제목을 적어주세요" );
    form.title.focus();
    return;
   }
 
  if( !form.memo.value )
   {
    alert( "내용을 적어주세요" );
    form.memo.focus();
    return;
   }
 
  form.submit();
  }
 </script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>Wild Flower</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 </head>


<body style="max-width:650px">

<!-- header부분 -->
<header>
 <%@ include file="../wildflower/header.jsp"%>
</header>

<!-- contents 부분 -->
<div class="w3-container" style="margin-top:75px">
<h3 class="w3-text-red">
	<img src="../image/daisy.png" height="20px" width="20px"/>답글 작성</h3>
	<hr>
	
	
<table>
<form name=replyform method=post action="reply_ok.jsp?idx=<%=idx%>&pg=<%=pg%>">
  <tr>
   <td>
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="title" size="50" maxlength="100" value = "<%=vo.getTitle()%>"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">작성자</td>
      <td><input name="id" size="50" maxlength="50" value="<%= session.getAttribute("id") %>" readonly></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td><textarea name="memo" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#F44336"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2">
      
       <input type=button class="button button2" value="등록"  OnClick="javascript:replyCheck();">
       <input type=button class="button button2" value="취소" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </form>
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