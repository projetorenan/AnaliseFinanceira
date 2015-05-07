package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import dao.UsuarioDAO;
import modelo.Usuario;

public final class InicioUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Usuario usuario = new Usuario();
    
    usuario.setId(1);
    usuario.setLogin("Renan");
    
    session.setAttribute("Usuario", usuario);

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("\t<meta charset=\"utf-8\"/>\n");
      out.write("\t<meta name=\"description\" content=\"Fazenda\"/>\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/>\n");
      out.write("\n");
      out.write("\t<title>Fazenda</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"bootstrap/css/bootstrap.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"bootstrap/css/bootstrap-responsive.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"bootstrap/style.css\">\n");
      out.write("        <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js\"></script>\n");
      out.write("        <script>window.jQuery || document.write('<script src=\"js/jquery-1.7.1.min.js\"><\\/script>')</script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap/TesteJavaScript.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("       <nav class=\"navbar navbar-fixed-top navbar-inverse\">\n");
      out.write("            <div class=\"navbar-inner\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <!-- .btn-navbar está classe é usada como alternador para o conteudo coplapsavel-->\n");
      out.write("                    <button class=\"btn btn-navbar\" data-toggle=\"collapse\" data-target=\".nav-collapse\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a href=\"Inicio.jsp\" class=\"brand\">Fazenda</a>\n");
      out.write("\n");
      out.write("                    <div class=\"nav-collapse collapse\">\n");
      out.write("                        <ul class=\"nav\">\n");
      out.write("                            <li><a></a></li>\n");
      out.write("                            <li><a></a></li>\n");
      out.write("                            <li><a></a></li>\n");
      out.write("                            <li><a></a></li>\n");
      out.write("                            <li><a></a></li>\n");
      out.write("                            <li><a href=\"InicioUsuario.jsp\"> Usuario </a></li>\n");
      out.write("                            <li><a href=\"Lv1-Passo1.jsp\"> Nivel 1 </a></li>\n");
      out.write("                            <li><a href=\"\"> Nivel 2 </a></li>\n");
      out.write("                            <li><a href=\"\"> Nivel 3 </a></li>\n");
      out.write("                            <li><a href=\"\"> Nivel 4 </a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        \n");
      out.write("        <header class=\"page-header\"></header>\n");
      out.write("        \n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row-fluid\"> \n");
      out.write("                <aside class=\"span4\"></aside>\n");
      out.write("                <aside class=\"span8\"><h1>Logar no Site</h1><br/><br/></aside>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row-fluid\">\n");
      out.write("                \n");
      out.write("                <aside class=\"span3\">\n");
      out.write("                    \n");
      out.write("                    <br/><br/><br/>                 \n");
      out.write("                    \n");
      out.write("                    <form action=\"\">\n");
      out.write("                \t<div class=\"controls input-prepend\">\n");
      out.write("                \t    <span class=\"add-on\"><i class=\"icon-user\"></i></span>\n");
      out.write("                \t    <input type=\"text\" class=\"span11\" id=\"prependInput\" placeholder=\"Pesquisar Usuario\">\n");
      out.write("                \t</div>\n");
      out.write("                    </form>\n");
      out.write("                    \n");
      out.write("                    <a href=\"CadastroUsuario.jsp\" class=\"btn\"> Novo Usuario </a>\n");
      out.write("                    \n");
      out.write("                </aside>\n");
      out.write("                \n");
      out.write("                <aside class=\"span9\">\n");
      out.write("                    <form name=\"formulario\" action=\"Lv1-Passo1.jsp\" class=\"form-horizontal\" method =\"post\" onSubmit=\"return Cadastro ();\">\n");
      out.write("                \t<div class=\"control-group\">\n");
      out.write("                \t\t<label class=\"control-label\">Login: </label>\n");
      out.write("                \t\t<div class=\"controls\">\n");
      out.write("                \t\t\t<input type=\"text\" name=\"login\">\n");
      out.write("                \t\t</div>\n");
      out.write("                \t</div>\n");
      out.write("                \t<div class=\"control-group\">\n");
      out.write("                \t\t<label class=\"control-label\">Senha: </label>\n");
      out.write("                \t\t<div class=\"controls\">\n");
      out.write("                \t\t\t<input type=\"password\" name=\"senha\">\n");
      out.write("                \t\t</div>\n");
      out.write("                \t</div>\n");
      out.write("                        <div class=\"control-group\">\n");
      out.write("                            <div class=\"controls\">\n");
      out.write("                \t\t<input type=\"submit\" class=\"btn\" value=\"Entrar\" /> \n");
      out.write("                            </div>\n");
      out.write("                \t</div>\n");
      out.write("                    </form>\n");
      out.write("                </aside>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
