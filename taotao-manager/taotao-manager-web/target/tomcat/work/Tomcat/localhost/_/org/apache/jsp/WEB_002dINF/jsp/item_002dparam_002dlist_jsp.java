/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-03-30 02:48:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class item_002dparam_002dlist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<table class=\"easyui-datagrid\" id=\"itemParamList\" title=\"商品列表\" \r\n");
      out.write("       data-options=\"singleSelect:false,collapsible:true,pagination:true,url:'/item/param/list',method:'get',pageSize:30,toolbar:itemParamListToolbar\">\r\n");
      out.write("    <thead>\r\n");
      out.write("        <tr>\r\n");
      out.write("        \t<th data-options=\"field:'ck',checkbox:true\"></th>\r\n");
      out.write("        \t<th data-options=\"field:'id',width:60\">ID</th>\r\n");
      out.write("        \t<th data-options=\"field:'itemCatId',width:80\">商品类目ID</th>\r\n");
      out.write("        \t<th data-options=\"field:'itemCatName',width:100\">商品类目</th>\r\n");
      out.write("            <th data-options=\"field:'paramData',width:300,formatter:formatItemParamData\">规格(只显示分组名称)</th>\r\n");
      out.write("            <th data-options=\"field:'created',width:130,align:'center',formatter:TAOTAO.formatDateTime\">创建日期</th>\r\n");
      out.write("            <th data-options=\"field:'updated',width:130,align:'center',formatter:TAOTAO.formatDateTime\">更新日期</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </thead>\r\n");
      out.write("</table>\r\n");
      out.write("<div id=\"itemEditWindow\" class=\"easyui-window\" title=\"编辑商品\" data-options=\"modal:true,closed:true,iconCls:'icon-save',href:'/item-edit'\" style=\"width:80%;height:80%;padding:10px;\">\r\n");
      out.write("</div>\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("\tfunction formatItemParamData(value , index){\r\n");
      out.write("\t\tvar json = JSON.parse(value);\r\n");
      out.write("\t\tvar array = [];\r\n");
      out.write("\t\t$.each(json,function(i,e){\r\n");
      out.write("\t\t\tarray.push(e.group);\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\treturn array.join(\",\");\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("    function getSelectionsIds(){\r\n");
      out.write("    \tvar itemList = $(\"#itemParamList\");\r\n");
      out.write("    \tvar sels = itemList.datagrid(\"getSelections\");\r\n");
      out.write("    \tvar ids = [];\r\n");
      out.write("    \tfor(var i in sels){\r\n");
      out.write("    \t\tids.push(sels[i].id);\r\n");
      out.write("    \t}\r\n");
      out.write("    \tids = ids.join(\",\");\r\n");
      out.write("    \treturn ids;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    var itemParamListToolbar = [{\r\n");
      out.write("        text:'新增',\r\n");
      out.write("        iconCls:'icon-add',\r\n");
      out.write("        handler:function(){\r\n");
      out.write("        \tTAOTAO.createWindow({\r\n");
      out.write("        \t\turl : \"/item-param-add\",\r\n");
      out.write("        \t});\r\n");
      out.write("        }\r\n");
      out.write("    },{\r\n");
      out.write("        text:'编辑',\r\n");
      out.write("        iconCls:'icon-edit',\r\n");
      out.write("        handler:function(){\r\n");
      out.write("        \t$.messager.alert('提示','该功能未实现!');\r\n");
      out.write("        }\r\n");
      out.write("    },{\r\n");
      out.write("        text:'删除',\r\n");
      out.write("        iconCls:'icon-cancel',\r\n");
      out.write("        handler:function(){\r\n");
      out.write("        \tvar ids = getSelectionsIds();\r\n");
      out.write("        \tif(ids.length == 0){\r\n");
      out.write("        \t\t$.messager.alert('提示','未选中商品规格!');\r\n");
      out.write("        \t\treturn ;\r\n");
      out.write("        \t}\r\n");
      out.write("        \t$.messager.confirm('确认','确定删除ID为 '+ids+' 的商品规格吗？',function(r){\r\n");
      out.write("        \t    if (r){\r\n");
      out.write("        \t    \tvar params = {\"ids\":ids};\r\n");
      out.write("                \t$.post(\"/item/param/delete\",params, function(data){\r\n");
      out.write("            \t\t\tif(data.status == 200){\r\n");
      out.write("            \t\t\t\t$.messager.alert('提示','删除商品规格成功!',undefined,function(){\r\n");
      out.write("            \t\t\t\t\t$(\"#itemParamList\").datagrid(\"reload\");\r\n");
      out.write("            \t\t\t\t});\r\n");
      out.write("            \t\t\t}\r\n");
      out.write("            \t\t});\r\n");
      out.write("        \t    }\r\n");
      out.write("        \t});\r\n");
      out.write("        }\r\n");
      out.write("    }];\r\n");
      out.write("</script>");
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
