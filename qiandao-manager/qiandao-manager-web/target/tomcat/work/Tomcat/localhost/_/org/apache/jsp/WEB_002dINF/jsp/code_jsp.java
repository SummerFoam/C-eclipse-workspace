/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-04-01 12:48:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class code_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

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
      out.write("    \r\n");
      out.write("<!DOCTYPE>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>Insert title here</title>\r\n");
      out.write("\t\r\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no\">\r\n");
      out.write("\t<meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\r\n");
      out.write("\t<meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../css/mui.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../css/font-awesome.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../css/code.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"mui-android mui-android-6 mui-android-6-0\">\r\n");
      out.write("\t<header class=\"mui-bar mui-bar-nav\">\r\n");
      out.write("\t<a class=\"fa fa-arrow-left arrow\"></a>\r\n");
      out.write("\t\t<h1 class=\"mui-title\">二维码卡片</h1>\r\n");
      out.write("\t\t<a id=\"info\" class=\"mui-icon mui-icon-info-filled mui-pull-right\" style=\"color: #999;\"></a>\r\n");
      out.write("\t</header>\r\n");
      out.write("\t<div class=\"mui-content\" id=\"cont\">\r\n");
      out.write("\t\t<div class=\"mui-row top_pd\">\r\n");
      out.write("\t\t\t<div class=\"mui-col-sm-2 mui-col-xs-2 pd\">\r\n");
      out.write("\t\t\t\t<img src=\"../images/ggn.png\" style=\"width:50px;height: 50px;\"/>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"mui-col-sm-10 mui-col-xs-10 pd\">夏沫夏初</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"code\" style=\"text-align: center;\">\r\n");
      out.write("\t\t\t<img id=\"icon\" src=\"../images/ggn.png\" style=\"position:absolute;width: 30px;height: 30px;\"/>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<nav class=\"mui-bar mui-bar-tab\">\r\n");
      out.write("\r\n");
      out.write("\t\t<a class=\"mui-tab-item\" href=\"#tabbar-with-map\">\r\n");
      out.write("\t\t\t<span class=\"fa fa-caret-left\"></span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a class=\"mui-tab-item\" href=\"#tabbar-with-contact\">\r\n");
      out.write("\t\t\t<span class=\"fa fa-circle-o\"></span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a class=\"mui-tab-item\" href=\"#tabbar-with-map\">\r\n");
      out.write("\t\t\t<span class=\"fa fa-square-o\"></span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t<script src=\"../js/jquery.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script src=\"../js/jquery.qrcode.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\tvar url='http://182.254.245.209/ftp?time='+");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${time }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(";\r\n");
      out.write("\t\t //根据设计图中的canvas画布的占比进行设置\r\n");
      out.write("\t \tvar clientWidth=$(window).width();\r\n");
      out.write("\t \tvar canvasWidth=Math.floor(clientWidth*100/600)*4;\r\n");
      out.write("\t\t$(\"#code\").qrcode({\r\n");
      out.write("\t\t\trender:'canvas',\r\n");
      out.write("\t\t\twidth:canvasWidth,\r\n");
      out.write("\t\t\theight:canvasWidth,\r\n");
      out.write("\t\t\ttext:url\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t//获取屏幕的高度\r\n");
      out.write("\t\tvar clientHeight=$(window).height();\r\n");
      out.write("\t\tconsole.log(clientHeight);\r\n");
      out.write("\t\tvar imgWidth=$(\"#icon\").width();\r\n");
      out.write("\t\tvar contHeight=$('#cont').height();\r\n");
      out.write("\t\tconsole.log(contHeight);\r\n");
      out.write("\t\tvar iconMargin=(canvasWidth-imgWidth)/2;\r\n");
      out.write("\t\tvar codeMargin=(clientHeight-contHeight)/2;\r\n");
      out.write("\t\t$('#icon').css('margin',iconMargin);\r\n");
      out.write("\t\t$(\"#cont\").css('margin-top',codeMargin);\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
