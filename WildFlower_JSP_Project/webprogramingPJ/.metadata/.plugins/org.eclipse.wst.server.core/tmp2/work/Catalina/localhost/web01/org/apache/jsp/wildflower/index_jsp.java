/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.46
 * Generated at: 2017-10-06 07:54:44 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.wildflower;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/wildflower/header.jsp", Long.valueOf(1482394836000L));
    _jspx_dependants.put("/wildflower/footer.jsp", Long.valueOf(1481619576000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("java.text");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Wild Flower</title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3-theme-red.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body style=\"max-width:600px\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- header부분 -->\r\n");
      out.write("<header>\r\n");
      out.write(" ");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>HEADER</title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3-theme-red.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<!-- sid nav 부분 -->\r\n");
      out.write("<nav class=\"w3-sidenav w3-card-2 w3-white w3-top\" style=\"width:40%;display:none;z-index:2\" id=\"mySidenav\">\r\n");
      out.write("<div class=\"w3-container w3-theme-d2\">\r\n");
      out.write("  <span onclick=\"w3_close()\" class=\"w3-closenav w3-right w3-xlarge\">x</span>\r\n");
      out.write("  <br>\r\n");
      out.write("  <div class=\"w3-padding w3-center\">\r\n");
      out.write("     ");

        // 현재 로그인된 아이디가 없다면 (= session에 저장된 id가 없다면)
        if(session.getAttribute("id") == null) {
            
      out.write("\r\n");
      out.write("            <img class=\"w3-circle\" src=\"../image/user.png\" alt=\"user\" style=\"width:40%\">\r\n");
      out.write("  \t<br><br> Login을 해주세요.<br>\r\n");
      out.write(" \t\t<button class=\"w3-btn w3-white w3-border w3-small w3-slim w3-round-large\" onclick=\"location.href='../wildflower/loginForm.jsp'\">\r\n");
      out.write(" \t\t\t<i class=\"fa fa-key\"></i> Login \r\n");
      out.write(" \t\t</button>\r\n");
      out.write(" \t\t\t\r\n");
      out.write(" \t\t<button class=\"w3-btn w3-white w3-border w3-small w3-slim w3-round-large\" onclick=\"location.href='../wildflower/joinForm.jsp'\">\r\n");
      out.write(" \t\t\t<i class=\"fa fa-send-o\"></i> &nbsp;  join \r\n");
      out.write(" \t\t</button>\r\n");
      out.write("            ");

        } 
        // 현재 로그인된 아이디가 있다면 (= session에 저장된 id가 있다면)
        else {
        
            
      out.write("\r\n");
      out.write("            <img class=\"w3-circle\" src=\"../image/user.png\" alt=\"user\" style=\"width:40%\">\r\n");
      out.write("  \t\t\t<br><br> ");
 out.println(session.getAttribute("id") + " 님 환영합니다"); 
      out.write("<br>\r\n");
      out.write(" \t\t\r\n");
      out.write(" \t\t<button class=\"w3-btn w3-white w3-border w3-small w3-slim w3-round-large\" onclick=\"location.href='../wildflower/myInfo.jsp'\">\r\n");
      out.write(" \t\t\t<i class=\"fa fa-star\"></i> 내정보수정\r\n");
      out.write(" \t\t</button>\r\n");
      out.write("\t\r\n");
      out.write(" \t\t<button class=\"w3-btn w3-white w3-border w3-small w3-slim w3-round-large\" onclick=\"location.href='../wildflower/logout.jsp'\">\r\n");
      out.write(" \t\t\t<i class=\"fa fa-sign-out\"></i> Logout \r\n");
      out.write(" \t\t</button>\r\n");
      out.write(" \t\t\t\r\n");
      out.write("\r\n");
      out.write("            ");

        }
    
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"w3-container\">\r\n");
      out.write("\t <h3><i class=\"fa fa-tree\"></i> Menu </h3></div>\r\n");
      out.write("\t  <a href=\"../wildflower/index.jsp\">Home</a>\r\n");
      out.write("\t  <a href=\"../noticeboard/notice.jsp\">공지사항</a>\r\n");
      out.write("\t  <a href=\"../wildflower/dictionary.jsp\">야생화 사전</a>\r\n");
      out.write("\t  <a href=\"../wildflower/gallery.jsp\">야생화 갤러리</a>\r\n");
      out.write("\t  <a href=\"../freeboard/freeboard.jsp\">자유게시판</a>\r\n");
      out.write("\t  <a href=\"../qnaboard/qna.jsp\">이름이뭐에요?</a>\r\n");
      out.write("\t  \r\n");
      out.write("\t  \r\n");
      out.write("<!-- \t  <a href=\"../wildflower/test.jsp\">이름이뭐에요?</a> -->\r\n");
      out.write("\t  \r\n");
      out.write("\t  \r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"w3-container\">\r\n");
      out.write("\t  <h3> <i class=\"fa fa-bookmark\"></i>  BookMark</h3></div>\r\n");
      out.write("\t  <a href=\"http://www.naver.com\" target=\"_blank\">NAVER</a>\r\n");
      out.write("\t  <a href=\"http://www.google.co.kr\" target=\"_blank\">구글</a>\r\n");
      out.write("\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- headerbar부분 -->\r\n");
      out.write("<header class=\"w3-container w3-card-4 w3-theme w3-top\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <h2>\r\n");
      out.write("\t  <i class=\"w3-opennav fa fa-bars\" onclick=\"w3_open()\"></i>\r\n");
      out.write("\t  &nbsp;&nbsp;\r\n");
      out.write("\t  <b>Wild Flower</b>\r\n");
      out.write("\t  <a href=\"../wildflower/index.jsp\"><i class=\"fa fa-home w3-padding w3-display-right\"></i></a>\r\n");
      out.write("  </h2>\r\n");
      out.write("\r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("<!-- contents 부분 -->\r\n");
      out.write("<div class=\"w3-container\" style=\"margin-top:75px\">\r\n");
      out.write("\t<img src=\"../image/daisy.png\" height=\"20px\" width=\"20px\"/>\r\n");
      out.write("\t");
 
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("MM월dd일");
		String today = formatter.format(new java.util.Date());
		out.println(today);
	
      out.write("\r\n");
      out.write("\t오늘의 탄생화 - 자색국화 , 꽃말 - 사랑  \r\n");
      out.write("\t<hr>\r\n");
      out.write("\t<div class=\"w3-row\">\r\n");
      out.write("\t  <div class=\"w3-col s9 w3-container\">\r\n");
      out.write("\t    <h3 class=\"w3-text-red\"><a href=\"../noticeboard/notice.jsp\" style=\"text-decoration: none;\">\r\n");
      out.write("\t    공지사항\r\n");
      out.write("\t    <p style=\"font-size: 5px; text-align: right;\">more▶</p>\r\n");
      out.write("\t    </a>\r\n");
      out.write("\t    </h3>\r\n");
      out.write("\t    <p>This is Notice and Event Board.</p>\r\n");
      out.write("\t  </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t  \r\n");
      out.write("\t<hr>\r\n");
      out.write("\t<div class=\"w3-row\">\r\n");
      out.write("\t   <div class=\"w3-col s6 w3-container\">\r\n");
      out.write("\t    <h3 class=\"w3-text-red\" ><a href=\"../wildflower/gallery.jsp\" style=\"text-decoration: none;\">\r\n");
      out.write("\t   \t\t야생화 갤러리  \r\n");
      out.write("\t   \t\t<p style=\"font-size: 5px; text-align: right;\">more▶</p>\r\n");
      out.write("\t   \t\t</a>\r\n");
      out.write("\t   \t</h3>\r\n");
      out.write("\t    \r\n");
      out.write("\t  \r\n");
      out.write("\t    <div class=\"w3-third w3-padding-tiny\">\r\n");
      out.write("\t\t    <div class=\"w3-card-2\">\r\n");
      out.write("\t\t      <img src=\"../image/flower/f2.jpg\" class=\"w3-round\" style=\"width:100%\">\r\n");
      out.write("\t\t    </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t <div class=\"w3-third w3-padding-tiny\">\r\n");
      out.write("\t\t    <div class=\"w3-card-2\">\r\n");
      out.write("\t\t      <img src=\"../image/flower/f6.jpg\" class=\"w3-round\" style=\"width:100%\">   \r\n");
      out.write("\t\t    </div>\r\n");
      out.write("\t\t </div>\r\n");
      out.write(" \r\n");
      out.write("\t\t  <div class=\"w3-third w3-padding-tiny\">\r\n");
      out.write("\t\t    <div class=\"w3-card-2\">\r\n");
      out.write("\t\t      <img src=\"../image/flower/f5.jpg\" class=\"w3-round\" style=\"width:100%\">\r\n");
      out.write("\t\t    </div>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  \r\n");
      out.write("\t\t \r\n");
      out.write("\t\r\n");
      out.write("\t\t  \r\n");
      out.write("\t  </div>\r\n");
      out.write("\t  <div class=\"w3-col s6 w3-container\">\r\n");
      out.write("\t    <h3 class=\"w3-text-red\">\r\n");
      out.write("\t    <a href=\"../qnaboard/qna.jsp\" style=\"text-decoration: none;\">\r\n");
      out.write("\t    이름이 뭐에요?<p style=\"font-size: 5px; text-align: right;\">more▶</p>\r\n");
      out.write("\t    </a></h3>\r\n");
      out.write("\t    <p style=\"font-size: 15px\">길가에 피어있는 꽃이름에 대해 궁금해보신적있나요?<br>이곳에 물어보세요! </p>\r\n");
      out.write("\t    \t\r\n");
      out.write("\t  </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<hr>\r\n");
      out.write("<br><br><br>\r\n");
      out.write("</div>\r\n");
      out.write("<br><br><br><br><br><br>\r\n");
      out.write("\r\n");
      out.write("<!-- footer부분 -->\r\n");
      out.write("<footer class=\"w3-container w3-theme w3-bottom\">\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"w3.css\">\r\n");
      out.write("<title>FOOTER</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"max-width:400px\">\r\n");
      out.write("  <div class=\"w3-container w3-theme\"  style=\"text-align: center;\">\r\n");
      out.write("  \r\n");
      out.write("\t      <a href=\"https://www.facebook.com\"><i class=\"fa fa-facebook  w3-xlarge\" style=\"font-size:40px;color:white\"></i></a>\r\n");
      out.write("          <a href=\"https://twitter.com\"><i class=\"fa fa-twitter w3-xlarge\" style=\"font-size:40px;color:white\"></i></a>\r\n");
      out.write("          <a href=\"www.instagram.com\"><i class=\"fa fa-instagram w3-xlarge\" style=\"font-size:40px;color:white\"></i></a>\r\n");
      out.write("          <br />\r\n");
      out.write("          <b>관리자</b>  ");
      out.print(application.getInitParameter("ceo") );
      out.write("  | \r\n");
      out.write("          <b>Email</b>  ");
      out.print(application.getInitParameter("email") );
      out.write(" <br>\r\n");
      out.write("          <b>Address</b>  ");
      out.print(application.getInitParameter("address") );
      out.write(" |\r\n");
      out.write("          <b>Tel.</b>  ");
      out.print(application.getInitParameter("tel") );
      out.write(" | Copyright (c) 2016 WildFlower <br/>\r\n");
      out.write("  </div>   \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function w3_open() {\r\n");
      out.write("    document.getElementById(\"mySidenav\").style.display = \"block\";\r\n");
      out.write("}\r\n");
      out.write("function w3_close() {\r\n");
      out.write("    document.getElementById(\"mySidenav\").style.display = \"none\";\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
