/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-04-05 03:40:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link rel=\"stylesheet\" href=\"../css/style.css\" />\r\n");
      out.write("<script src=\"../js/jquery.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"stars\"></div>\r\n");
      out.write("\t\t<canvas id=\"myCanvas\" width=\"476\" height=\"686\"></canvas>\r\n");
      out.write("\t\t<div class=\"login\">\r\n");
      out.write("\t\t\t<div class=\"login_title\">\r\n");
      out.write("\t\t\t\t<span>账号登录</span>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"login_fields\">\r\n");
      out.write("\t\t\t\t<div class=\"login_fields__user\">\r\n");
      out.write("\t\t\t\t\t<div class=\"icon\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"../images/user_icon_copy.png\" />\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<input placeholder=\"用户名\" type=\"text\" class=\"search-input\" name=\"name\">\r\n");
      out.write("\t\t\t\t\t<div class=\"validation\" style=\"opacity: 0; right: 20px;\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"../images/tick.png\" /> \r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"speed\"></div> \r\n");
      out.write("\t\t\t\t<div class=\"login_fields__user\">\r\n");
      out.write("\t\t\t\t\t<div class=\"icon\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"../images/lock_icon_copy.png\" />\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<input placeholder=\"密码\" type=\"password\" class=\"search-input\" name=\"password\">\r\n");
      out.write("\t\t\t\t\t<div class=\"validation\" style=\"opacity: 0; right: 20px;\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"../images/tick.png\" /> \r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"speed\"></div>\r\n");
      out.write("\t\t\t\t<div class=\"login_fields__submit\">\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"登录\" />\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\t\r\n");
      out.write("\t\t\t\t<div class=\"success\">\r\n");
      out.write("\t\t\t\t\t<h2>认证成功</h2>\r\n");
      out.write("\t\t\t\t\t<p>欢迎回来</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"disclaimer\">\r\n");
      out.write("\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper laoreet placerat. Nullam semper auctor justo, rutrum posuere odio vulputate nec.\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"authent\">\r\n");
      out.write("\t\t\t\t\t<img src=\"../images/puff.svg\" />\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("\t<script src='../js/stopExecutionOnTimeout.js'></script>\r\n");
      out.write("\t<script src=\"../js/prefixfree.min.js\"></script>\r\n");
      out.write("\t<script> \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\".search-input\").focus(function(){\r\n");
      out.write("\t\t\tvar speed = $(this).parent('.login_fields__user').next();\r\n");
      out.write("\t\t\tspeed.animate({\r\n");
      out.write("\t\t\t\twidth:\"320px\"\r\n");
      out.write("\t\t\t},500);\r\n");
      out.write("\t\t\t\r\n");
      out.write("//\t\t\t$(this).prev().css('opacity',1);\r\n");
      out.write("\t\t\t$(this).prev().animate({\r\n");
      out.write("\t\t\t\topacity:\"1\"\r\n");
      out.write("\t\t\t},200);\r\n");
      out.write("\t\t}).blur(function(){\r\n");
      out.write("\t\t\tvar speed = $(this).parent('.login_fields__user').next();\r\n");
      out.write("\t\t\tspeed.animate({\r\n");
      out.write("\t\t\t\twidth:\"0px\"\r\n");
      out.write("\t\t\t},500); \r\n");
      out.write("\t\t\t$(this).prev().animate({\r\n");
      out.write("\t\t\t\topacity:\"0.5\"\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\".search-input\").keyup(function(){\r\n");
      out.write("\t\t\tvar $search=$(this).val();\r\n");
      out.write("\t\t\tconsole.log($search);\r\n");
      out.write("\t\t\tif ($search == \"\") {\r\n");
      out.write("\t\t\t\t$(this).next().animate({\r\n");
      out.write("\t\t\t\tright:'20px',\r\n");
      out.write("\t\t\t\topacity:'0'\r\n");
      out.write("\t\t\t},200);\r\n");
      out.write("\t\t\t}else{\r\n");
      out.write("\t\t\t\t$(this).next().animate({\r\n");
      out.write("\t\t\t\tright:'30px',\r\n");
      out.write("\t\t\t\topacity:'1'\r\n");
      out.write("\t\t\t},200);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t $('input[type=\"submit\"]').click(function(){\r\n");
      out.write("\t\t \t$(\".login\").addClass(\"test\");\r\n");
      out.write("\t\t \tsetTimeout(function(){\r\n");
      out.write("\t\t \t\t$(\".login\").addClass(\"testtwo\");\r\n");
      out.write("\t\t \t},300);\r\n");
      out.write("\t\t \t\r\n");
      out.write("\t\t \tsetTimeout(function(){\r\n");
      out.write("\t\t \t\t$(\".authent\").show().animate({right:-320,opacity:1},{\r\n");
      out.write("\t\t \t\t\teasing: 'easeOutQuint',\r\n");
      out.write("\t\t            duration: 600,\r\n");
      out.write("\t\t            queue: false\r\n");
      out.write("\t\t \t\t});\r\n");
      out.write("\t\t \t},500);\r\n");
      out.write("\t\t \t\r\n");
      out.write("\t\t \tsetTimeout(function(){\r\n");
      out.write("\t\t \t\t$(\".authent\").show().animate({right:90,opacity:0},{\r\n");
      out.write("\t\t \t\t\teasing: 'easeOutQuint',\r\n");
      out.write("\t\t            duration: 600,\r\n");
      out.write("\t\t            queue: false\r\n");
      out.write("\t\t \t\t});\r\n");
      out.write("\t\t \t\t$(\".login\").removeClass('testtwo');\r\n");
      out.write("\t\t \t},1000);\r\n");
      out.write("\t\t \t\r\n");
      out.write("\t\t \tsetTimeout(function(){\r\n");
      out.write("\t\t \t\t$(\".login\").removeClass('test');\r\n");
      out.write("\t\t \t\t$(\".login div\").fadeOut();\r\n");
      out.write("\t\t \t\t$(\".success\").fadeIn();\r\n");
      out.write("\t\t \t},1500);\r\n");
      out.write("\t\t \t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t//星空特效\r\n");
      out.write("\t\tvar stars = 800;\r\n");
      out.write("\t    var $stars = $('.stars');\r\n");
      out.write("\t    var r = 800;\r\n");
      out.write("\t    for (var i = 0; i < stars; i++) {\r\n");
      out.write("\t        if (window.CP.shouldStopExecution(1)) {\r\n");
      out.write("\t            break;\r\n");
      out.write("\t        }\r\n");
      out.write("\t        var $star = $('<div/>').addClass('star');\r\n");
      out.write("\t        $stars.append($star);\r\n");
      out.write("\t    }\r\n");
      out.write("\t    window.CP.exitedLoop(1);\r\n");
      out.write("\t    $('.star').each(function () {\r\n");
      out.write("\t        var cur = $(this);\r\n");
      out.write("\t        var s = 0.2 + Math.random() * 1;\r\n");
      out.write("\t        var curR = r + Math.random() * 300;\r\n");
      out.write("\t        cur.css({\r\n");
      out.write("\t            transformOrigin: '0 0 ' + curR + 'px',\r\n");
      out.write("\t            transform: ' translate3d(0,0,-' + curR + 'px) rotateY(' + Math.random() * 360 + 'deg) rotateX(' + Math.random() * -50 + 'deg) scale(' + s + ',' + s + ')'\r\n");
      out.write("\t        });\r\n");
      out.write("\t    });\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t</script>\r\n");
      out.write("\t\r\n");
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