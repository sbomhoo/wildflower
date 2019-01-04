<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="freeboard.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="dao" class="freeboard.DAO"/>

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
<%	
	int total = dao.count();
	ArrayList<VO> alist = dao.getMemberList();
	int size = alist.size();
	int size2 = size;
	
	final int ROWSIZE = 4;
	final int BLOCK = 5;
	int indent = 0;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int end = (pg*ROWSIZE);
	
	int allPage = 0;

	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;
	
	allPage = (int)Math.ceil(total/(double)ROWSIZE);
	
	if(endPage > allPage) {
		endPage = allPage;
	}
	
	size2 -=end;
	if(size2 < 0) {
		end = size;
	}
	
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
<div class="w3-container" style="margin-top:75px">
<h3 class="w3-text-red">
	<img src="../image/daisy.png" height="20px" width="20px"/>자유게시판</h3>
		<p>&nbsp;&nbsp;&nbsp;&nbsp; 욕설/음란/비방글 금지!</p>
	<hr>

<table width="100%" class="w3-table-all">
  <tr class="w3-red" style="font-size: 15px">
	   <td width="73">번호</td>
	   <td width="330" style="text-align: center;">제목</td>
	   <td width="110">작성자</td>
	   <td width="164">작성일</td>
	   <td width="75">조회수</td>
  </tr>
  <%
	if(total==0) {
%>
	 	<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6" align="center">등록된 글이 없습니다.</td>
	 	</tr>
 <%
	 	} else {
	 		for(int i=ROWSIZE*(pg-1); i<end;i++){
				VO vo = alist.get(i);
				indent = vo.getIndent();
				int idx = vo.getNum();
%>
	<tr height="25" align="center">
	<td><%=idx %></td>
	<td align="left">
	<% 
		for(int j=0;j<indent;j++){
		%> &nbsp;&nbsp;&nbsp;<%
		}
		if(indent!=0){
			%><img src='../image/reply.gif'/>
	<%
		}
	%> 
	<a href="view.jsp?idx=<%=idx%>&pg=<%=pg%>" style="text-decoration: none;"><%=vo.getTitle() %></a>
		<%
			if(vo.isDayNew()){
		%>
			<img src='../image/new.jpg' />
		<%
		}
		%>
	</td>
	<td align="center"><%=vo.getId()%></td>
	<td align="center"><%=vo.getNdate() %></td>
	<td align="center"><%=vo.getHit() %></td>
</tr>
 
<% 
		}
	} 
%>
 <td colspan="6" width="752"></td>
 </table>


<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr>
		<td align="center">
		<%
			if(pg>BLOCK) {
		%>
			[<a href="freeboard.jsp?pg=1">◀◀</a>]
			[<a href="freeboard.jsp?pg=<%=startPage-1%>">◀</a>]
		<%
			}
		%>
		
		<%
			for(int i=startPage; i<= endPage; i++){
				if(i==pg){
		%>
					<u><b>[<%=i %>]</b></u>
		<%
				}else{
		%>
					[<a href="freeboard.jsp?pg=<%=i %>"><%=i %></a>]
		<%
				}
			}
		%>
		
		<%
			if(endPage<allPage){
		%>
			[<a href="freeboard.jsp?pg=<%=endPage+1%>">▶</a>]
			[<a href="freeboard.jsp?pg=<%=allPage%>">▶▶</a>]
		<%
			}
		%>
		</td>
		</tr>
<tr align="right">
   <td><input type=button class="button button2" OnClick="window.location='loginCheck.jsp'" value="글쓰기"></td>
</tr>
 </table>
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