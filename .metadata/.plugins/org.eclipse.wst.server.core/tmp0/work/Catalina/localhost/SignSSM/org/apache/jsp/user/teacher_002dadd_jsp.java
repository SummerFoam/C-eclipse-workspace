/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.59
 * Generated at: 2018-04-30 08:42:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class teacher_002dadd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link href=\"../layui/css/layui.css\" rel=\"stylesheet\" >\r\n");
      out.write("<link href=\"../css/info.css\"  rel=\"stylesheet\"/>\r\n");
      out.write("<link href=\"../css/common.css\"  rel=\"stylesheet\"/>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"pageContent\">\r\n");
      out.write("\t\t<form class=\"layui-form\" id=\"form\" action=\"\">\r\n");
      out.write("\t\t  \t<div class=\"layui-form-item\">\r\n");
      out.write("\t\t\t    <label class=\"layui-form-label\">*课程名称</label>\r\n");
      out.write("\t\t\t    <div class=\"layui-input-inline\">\r\n");
      out.write("\t\t\t      <input type=\"text\" name=\"name\" required lay-verify=\"required\" placeholder=\"请输入课程名\" autocomplete=\"off\" class=\"layui-input name\">\r\n");
      out.write("\t\t\t    </div>\r\n");
      out.write("\t\t  \t</div>\r\n");
      out.write("\t\t  \t<div class=\"layui-form-item\">\r\n");
      out.write("\t\t\t    <label class=\"layui-form-label\">*课程课时</label>\r\n");
      out.write("\t\t\t    <div class=\"layui-input-inline\">\r\n");
      out.write("\t\t\t      <input type=\"text\" name=\"courseCount\" required lay-verify=\"required\" placeholder=\"请输入课时\" aut.ocomplete=\"off\" class=\"layui-input courseCount\">\r\n");
      out.write("\t\t\t    </div>\r\n");
      out.write("\t\t  \t</div>\r\n");
      out.write("\t\t  \t<div class=\"layui-form-item\">\r\n");
      out.write("\t\t\t    <div class=\"layui-input-block\">\r\n");
      out.write("\t\t\t      <input class=\"layui-btn submit-btn\" type=\"button\" value=\"提交\" lay-submit lay-filter=\"formDemo\"></input>\r\n");
      out.write("\t\t\t      <button type=\"reset\" class=\"layui-btn layui-btn-primary\">重置</button>\r\n");
      out.write("\t\t\t    </div>\r\n");
      out.write("\t\t  \t</div>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
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
