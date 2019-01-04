<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="qnaboard.*" %>
<jsp:useBean id="dao" class="qnaboard.DAO"/>
<jsp:useBean id="vo" class="qnaboard.VO"/>
<jsp:setProperty name="vo" property="*" />
<%

        request.setCharacterEncoding("utf-8");

	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	VO vo1 = dao.getView(idx);
	int ref = vo1.getRef();
	int indent = vo1.getIndent();
	int step = vo1.getStep();
		
	dao.UpdateStep(ref, step);
	dao.insertReply(vo, ref, indent, step);
	%>
  <script language=javascript>
   self.window.alert("입력한 답글을 저장하였습니다.");
   location.href="qna.jsp?pg=<%=pg%>"; 
</script>