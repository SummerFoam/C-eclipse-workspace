/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.59
 * Generated at: 2018-06-10 09:01:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.weixin.teacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sign_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>扫码签到</title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no\">\r\n");
      out.write("<meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\r\n");
      out.write("<meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\r\n");
      out.write("<!--标准mui.css-->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/mui.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/font-awesome.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/personal.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/sign.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<header class=\"mui-bar mui-bar-nav\">\r\n");
      out.write("\t\t<a class=\"fa fa-chevron-left info_icon\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/teacher/tch_personal\"></a>\r\n");
      out.write("\t\t<a class=\"mui-icon mui-icon-info-filled mui-pull-right\"></a>\r\n");
      out.write("\t\t<h1 class=\"mui-title\">功能</h1>\r\n");
      out.write("\t</header>\r\n");
      out.write("\t<div class=\"mui-content\">\r\n");
      out.write("\t\t<div class=\"info_img head\">\r\n");
      out.write("\t\t\t<div class=\"bg-shadow\">\r\n");
      out.write("\t\t\t\t<img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.headimg }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" width=\"60\" height=\"60\" />\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"nickname\"><span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.nickname }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</span></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"\">\r\n");
      out.write("        <ul class=\"mui-table-view mui-grid-view mui-grid-9\">\r\n");
      out.write("            <li class=\"mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3\">\r\n");
      out.write("\t            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/arrange/findClasses\">\r\n");
      out.write("\t               <span class=\"fa fa-newspaper-o pic_stu\"></span>\r\n");
      out.write("\t               <div class=\"mui-media-body\">班级学生列表</div>\r\n");
      out.write("\t            </a>\r\n");
      out.write("             </li>\r\n");
      out.write("             <li class=\"mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3\">\r\n");
      out.write("\t            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/weixin/teacher/findSign.jsp\">\r\n");
      out.write("\t               <span class=\"fa fa-check-square-o pic_curr\"></span>\r\n");
      out.write("\t               <div class=\"mui-media-body\">本节课程签到</div>\r\n");
      out.write("\t            </a>\r\n");
      out.write("             </li>\r\n");
      out.write("             <li class=\"mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3\">\r\n");
      out.write("\t            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/weixin/teacher/findDaySign.jsp\">\r\n");
      out.write("\t               <span class=\"fa fa-calendar-check-o pin_month\"></span>\r\n");
      out.write("\t               <div class=\"mui-media-body\">每日签到统计</div>\r\n");
      out.write("\t            </a>\r\n");
      out.write("             </li>\r\n");
      out.write("              <li class=\"mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3\">\r\n");
      out.write("\t            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/sign/findClassesByTeaId\">\r\n");
      out.write("\t               <span class=\"fa fa fa-calendar pin_week\"></span>\r\n");
      out.write("\t               <div class=\"mui-media-body\">周签到统计</div>\r\n");
      out.write("\t            </a>\r\n");
      out.write("             </li>\r\n");
      out.write("             <li class=\"mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3\">\r\n");
      out.write("\t            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/weixin/teacher/findTermSign.jsp\"\">\r\n");
      out.write("\t               <span class=\"fa fa-caret-square-o-right pic_term\"></span>\r\n");
      out.write("\t               <div class=\"mui-media-body\">学期签到统计</div>\r\n");
      out.write("\t            </a>\r\n");
      out.write("             </li>\r\n");
      out.write("             <li class=\"mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3\">\r\n");
      out.write("\t            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/weixin/teacher/random.jsp\">\r\n");
      out.write("\t               <span class=\"fa fa-random pic_random\"></span>\r\n");
      out.write("\t               <div class=\"mui-media-body\">随机抽查</div>\r\n");
      out.write("\t            </a>\r\n");
      out.write("             </li><li class=\"mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3\">\r\n");
      out.write("\t            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/sign/absent\">\r\n");
      out.write("\t               <span class=\"fa fa-calendar-times-o pic_absence\"></span>\r\n");
      out.write("\t               <div class=\"mui-media-body\">缺勤统计</div>\r\n");
      out.write("\t            </a>\r\n");
      out.write("             </li>\r\n");
      out.write("             \r\n");
      out.write("        </ul> \r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<nav class=\"mui-bar mui-bar-tab\">\r\n");
      out.write("\t\t<a class=\"mui-tab-item\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/teacher/tch_personal\">\r\n");
      out.write("\t\t\t<span class=\"mui-icon mui-icon-home\"></span>\r\n");
      out.write("\t\t\t<span class=\"mui-tab-label\">首页</span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a class=\"mui-tab-item  mui-active\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/teacher/tch_personal\">\r\n");
      out.write("\t\t\t<span class=\"mui-icon fa fa-th-large\"></span>\r\n");
      out.write("\t\t\t<span class=\"mui-tab-label\">功能</span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a class=\"mui-tab-item\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/teacher/tch_personal\">\r\n");
      out.write("\t\t\t<span class=\"mui-icon mui-icon-undo\"></span>\r\n");
      out.write("\t\t\t<span class=\"mui-tab-label\">返回</span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t</nav>\r\n");
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