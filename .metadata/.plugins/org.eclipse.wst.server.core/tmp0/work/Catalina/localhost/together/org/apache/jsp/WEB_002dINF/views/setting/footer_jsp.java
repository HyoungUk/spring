/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.7
 * Generated at: 2018-06-19 08:43:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.setting;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(6);
    _jspx_dependants.put("jar:file:/F:/DBMS/spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/together/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1523458448078L));
    _jspx_dependants.put("/WEB-INF/lib/spring-webmvc-4.2.4.RELEASE.jar", Long.valueOf(1523458399714L));
    _jspx_dependants.put("jar:file:/F:/DBMS/spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/together/WEB-INF/lib/spring-webmvc-4.2.4.RELEASE.jar!/META-INF/spring-form.tld", Long.valueOf(1450280850000L));
    _jspx_dependants.put("/WEB-INF/views/setting/setting.jsp", Long.valueOf(1525248067499L));
    _jspx_dependants.put("jar:file:/F:/DBMS/spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/together/WEB-INF/lib/spring-webmvc-4.2.4.RELEASE.jar!/META-INF/spring.tld", Long.valueOf(1450280850000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

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
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
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

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/pavi.png\" type=\"image/x-icon\">\r\n");
      out.write("<link rel=\"icon\" href=\"images/pavi.png\" type=\"image/x-icon\">\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/jquery.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/bootstrap.min.js\"></script>\r\n");
      out.write("<style>\t\r\n");
      out.write(".err { color: red; font-size: 20px; }\t\r\n");
      out.write("* {\t\r\n");
      out.write("\tmargin:0 auto;\r\n");
      out.write("\tpadding:0;\r\n");
      out.write("\tfont-size:14px;}\r\n");
      out.write("a{\ttext-decoration:none; }\r\n");
      out.write("ul{\tclear:both; }\r\n");
      out.write("ul:nth-child(2) {\r\n");
      out.write("\tclear:none;\r\n");
      out.write("\tfloat:right }\r\n");
      out.write("li {list-style:none;}\r\n");
      out.write("#container {\r\n");
      out.write("\tposition:absolute !important;\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\tmin-height: 100%;\r\n");
      out.write("\tpadding-bottom: 150px;}\r\n");
      out.write("#container #container {\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\theight: 100%;\r\n");
      out.write("\tpadding-bottom: 20px;\r\n");
      out.write("}\r\n");
      out.write(".hid {\tdisplay:none;}\r\n");
      out.write("</style>");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>footer</title>\r\n");
      out.write("<style>\r\n");
      out.write("#f5 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tbottom:0;\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\theight:150px;\r\n");
      out.write("\tborder:1px solid #999;\r\n");
      out.write("\tbackground-color:#eee;\r\n");
      out.write("\tz-index: 3;\r\n");
      out.write("}\r\n");
      out.write("#f5_addr {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\twidth:50%;\r\n");
      out.write("\tright:350px;\r\n");
      out.write("\tpadding-top:20px;\r\n");
      out.write("}\r\n");
      out.write("#f5_addr p {\r\n");
      out.write("\tmargin-bottom:2px;\r\n");
      out.write("}\r\n");
      out.write("#f5_copy {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\twidth:50%;\r\n");
      out.write("\tright:0px;\r\n");
      out.write("\tpadding-top:75px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"f5\">\r\n");
      out.write("\t\t<div id=\"f5_addr\">\r\n");
      out.write("\t\t\t<p>주소 : 서울특별시 xx구 xx동 xxx빌딩 x층</p>\r\n");
      out.write("\t\t\t<p>이메일 : nugunga0642@naver.com</p>\r\n");
      out.write("\t\t\t<p>대표전화 : 010-20xx-xxxx</p>\r\n");
      out.write("\t\t\t<p>고객센터 : 02-24x-xxxx</p>\r\n");
      out.write("\t\t\t<p>업무시간 : 9:00 ~ 18:00</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"f5_copy\">\r\n");
      out.write("\t\t\t<p>Copyright 2018. all rights reserved</p>\r\n");
      out.write("\t\t\t<p>Open Source Software License</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("    </div>\r\n");
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

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    boolean _jspx_th_c_005fset_005f0_reused = false;
    try {
      _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f0.setParent(null);
      // /WEB-INF/views/setting/setting.jsp(6,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("path");
      // /WEB-INF/views/setting/setting.jsp(6,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/setting/setting.jsp(6,0) '${pageContext.request.contextPath}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
      if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      _jspx_th_c_005fset_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
    }
    return false;
  }
}
