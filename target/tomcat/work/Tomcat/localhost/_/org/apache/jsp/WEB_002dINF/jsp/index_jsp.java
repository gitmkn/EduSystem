/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-11-27 12:20:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/jsp/head.jsp", Long.valueOf(1543321248857L));
    _jspx_dependants.put("/WEB-INF/jsp/footer.jsp", Long.valueOf(1543299457821L));
  }

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
      out.write("<title>期望教育教务系统</title>\r\n");
      out.write("<link rel=\"icon\" type=\"image/x-icon\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/img/favicon.ico\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"wrapper\">\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<!-- \r\n");
      out.write("content属性值 :\r\n");
      out.write("     width:可视区域的宽度，值可为数字或关键词device-width\r\n");
      out.write("     height:同width\r\n");
      out.write("     intial-scale:页面首次被显示是可视区域的缩放级别，取值1.0则页面按实际尺寸显示，无任何缩放\r\n");
      out.write("     maximum-scale=1.0, minimum-scale=1.0;可视区域的缩放级别，\r\n");
      out.write("     maximum-scale用户可将页面放大的程序，1.0将禁止用户放大到实际尺寸之上。\r\n");
      out.write("     user-scalable:是否可对页面进行缩放，no 禁止缩放\r\n");
      out.write(" -->\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<meta\r\n");
      out.write("\tcontent='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'\r\n");
      out.write("\tname='viewport' />\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/css/ready.css\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/css/demo.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"main-header\">\r\n");
      out.write("\t\t<div class=\"logo-header\">\r\n");
      out.write("\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/home/index\" class=\"logo\">\r\n");
      out.write("\t\t\t <!-- 期望教育教务系统 -->\r\n");
      out.write("\t\t\t <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/img/logo.jpg\" with=\"100\" height=\"50\">\r\n");
      out.write("\t\t\t  </a>\r\n");
      out.write("\t\t\t<button class=\"navbar-toggler sidenav-toggler ml-auto\" type=\"button\"\r\n");
      out.write("\t\t\t\tdata-toggle=\"collapse\" data-target=\"collapse\"\r\n");
      out.write("\t\t\t\taria-controls=\"sidebar\" aria-expanded=\"false\"\r\n");
      out.write("\t\t\t\taria-label=\"Toggle navigation\">\r\n");
      out.write("\t\t\t\t<span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("\t\t\t</button>\r\n");
      out.write("\t\t\t<button class=\"topbar-toggler more\">\r\n");
      out.write("\t\t\t\t<i class=\"la la-smile-o\"></i>\r\n");
      out.write("\t\t\t</button>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<nav class=\"navbar navbar-header navbar-expand-lg\">\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<form class=\"navbar-left navbar-form nav-search mr-md-3\" action=\"\">\r\n");
      out.write("\t\t\t\t<div class=\"input-group\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" placeholder=\"姓名、课程名...\" class=\"form-control\">\r\n");
      out.write("\t\t\t\t\t<div class=\"input-group-append\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"input-group-text\"> <i\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"la la-search search-icon\"></i>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t<ul class=\"navbar-nav topbar-nav ml-md-auto align-items-center\">\r\n");
      out.write("\t\t\t\t<li class=\"nav-item dropdown hidden-caret\"><a\r\n");
      out.write("\t\t\t\t\tclass=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\"\r\n");
      out.write("\t\t\t\t\trole=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\"\r\n");
      out.write("\t\t\t\t\taria-expanded=\"false\"> <i class=\"la la-envelope\"></i>\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"#\">Action</a> <a\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"dropdown-item\" href=\"#\">Another action</a>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"dropdown-divider\"></div>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"#\">Something else here</a>\r\n");
      out.write("\t\t\t\t\t</div></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item dropdown hidden-caret\"><a\r\n");
      out.write("\t\t\t\t\tclass=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\"\r\n");
      out.write("\t\t\t\t\trole=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\"\r\n");
      out.write("\t\t\t\t\taria-expanded=\"false\"> <i class=\"la la-bell\"></i> <span\r\n");
      out.write("\t\t\t\t\t\tclass=\"notification\">3</span>\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<ul class=\"dropdown-menu notif-box\"\r\n");
      out.write("\t\t\t\t\t\taria-labelledby=\"navbarDropdown\">\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"dropdown-title\">You have 4 new notification</div>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"notif-center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"notif-icon notif-primary\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"la la-user-plus\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"notif-content\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"block\"> New user registered </span> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"time\">5 minutes ago</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a> <a href=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"notif-icon notif-success\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"la la-comment\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"notif-content\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"block\"> Rahmad commented on Admin </span> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"time\">12 minutes ago</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a> <a href=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"notif-img\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/img/profile2.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\talt=\"Img Profile\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"notif-content\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"block\"> Reza send messages to you </span> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"time\">12 minutes ago</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a> <a href=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"notif-icon notif-danger\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"la la-heart\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"notif-content\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"block\"> Farrah liked Admin </span> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tclass=\"time\">17 minutes ago</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li><a class=\"see-all\" href=\"javascript:void(0);\"> <strong>See\r\n");
      out.write("\t\t\t\t\t\t\t\t\tall notifications</strong> <i class=\"la la-angle-right\"></i>\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item dropdown\"><a\r\n");
      out.write("\t\t\t\t\tclass=\"dropdown-toggle profile-pic\" data-toggle=\"dropdown\" href=\"#\"\r\n");
      out.write("\t\t\t\t\taria-expanded=\"false\"> <img\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/img/profile.jpg\"\r\n");
      out.write("\t\t\t\t\t\talt=\"user-img\" width=\"36\" class=\"img-circle\"><span>Hizrian</span></span>\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<ul class=\"dropdown-menu dropdown-user\">\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"user-box\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"u-img\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/img/profile.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talt=\"user\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"u-text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h4>马康宁</h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<p class=\"text-muted\">1055482519@qq.com</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"profile.html\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tclass=\"btn btn-rounded btn-danger btn-sm\">查看资料</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"dropdown-divider\"></div>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"#\"><i class=\"ti-settings\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t我的</a>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"dropdown-divider\"></div>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"#\"><i class=\"fa fa-power-off\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t退出</a>\r\n");
      out.write("\t\t\t\t\t</ul> <!-- /.dropdown-user --></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"sidebar\">\r\n");
      out.write("\t\t<div class=\"scrollbar-inner sidebar-wrapper\">\r\n");
      out.write("\t\t\t<div class=\"user\">\r\n");
      out.write("\t\t\t\t<div class=\"photo\">\r\n");
      out.write("\t\t\t\t\t<img\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/img/profile.jpg\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"info\">\r\n");
      out.write("\t\t\t\t\t<a class=\"\" data-toggle=\"collapse\" href=\"#collapseExample\"\r\n");
      out.write("\t\t\t\t\t\taria-expanded=\"true\"> <span> 马康宁 <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"user-level\">超级管理员</span> <span class=\"caret\"></span>\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"collapse in\" id=\"collapseExample\" aria-expanded=\"true\"\r\n");
      out.write("\t\t\t\t\t\tstyle=\"\">\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#profile\"> <span class=\"link-collapse\">My\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tProfile</span>\r\n");
      out.write("\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#edit\"> <span class=\"link-collapse\">Edit\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tProfile</span>\r\n");
      out.write("\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#settings\"> <span class=\"link-collapse\">Settings</span>\r\n");
      out.write("\t\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<ul class=\"nav\">\r\n");
      out.write("\t\t\t\t<li class=\"nav-item active\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/home/index\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"la la-dashboard\"></i>\r\n");
      out.write("\t\t\t\t\t\t<p>首页</p> <span class=\"badge badge-count\">5</span>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/home/student\">\r\n");
      out.write("\t\t\t\t\t<i class=\"la la-child\"></i>\r\n");
      out.write("\t\t\t\t\t\t<p>学生管理</p> <span class=\"badge badge-count\">14</span>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/home/teacher\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"la la-smile-o\"></i>\r\n");
      out.write("\t\t\t\t\t\t<p>教师管理</p> <span class=\"badge badge-count\">50</span>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"tables.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"la la-th-list\"></i>\r\n");
      out.write("\t\t\t\t\t\t<p>课程管理</p> <span class=\"badge badge-count\">6</span>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"notifications.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"la la-bank\"></i>\r\n");
      out.write("\t\t\t\t\t\t<p>教室管理</p> <span class=\"badge badge-success\">3</span>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"typography.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"la la-th\"></i>\r\n");
      out.write("\t\t\t\t\t\t<p>排课管理</p> <span class=\"badge badge-danger\">25</span>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"typography.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"la la-list-alt\"></i>\r\n");
      out.write("\t\t\t\t\t\t<p>成绩管理</p> <span class=\"badge badge-danger\">25</span>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"typography.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"la la-calculator\"></i>\r\n");
      out.write("\t\t\t\t\t\t<p>收费管理</p> <span class=\"badge badge-danger\">25</span>\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/core/jquery.3.2.1.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/core/popper.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/core/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/plugin/chartist/chartist.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/plugin/jquery-mapael/jquery.mapael.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/plugin/jquery-mapael/maps/world_countries.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/plugin/chart-circle/circles.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/ready.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/demo.js\"></script>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"main-panel\">\r\n");
      out.write("\t\t\t<div class=\"content\">\r\n");
      out.write("\t\t\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t\t\t<h4 class=\"page-title\">首页</h4>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<footer class=\"footer\">\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<nav class=\"pull-left\">\r\n");
      out.write("\t\t\t<ul class=\"nav\">\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> 期望教育1 </a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> 期望教育2 </a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> 期望教育3 </a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> 期望教育4 </a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t\t</nav>\r\n");
      out.write("\t\t\t<div class=\"copyright ml-auto\">\r\n");
      out.write("\t\t\t\t2018&copy;,期望教育教务系统 <i class=\"la la-heart heart text-danger\"></i> by\r\n");
      out.write("\t\t\t\t<a href=\"#\">期望教育教务系统</a> <a href=\"#\" target=\"_blank\" title=\"期望教育教务系统\">期望教育教务系统</a>\r\n");
      out.write("\t\t\t\t<a href=\"#\" title=\"期望教育教务系统\" target=\"_blank\">期望教育教务系统</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
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
