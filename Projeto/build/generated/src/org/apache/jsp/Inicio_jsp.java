package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Inicio_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap/js/bootstrap.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <nav class=\"navbar navbar-fixed-top navbar-inverse\">\n");
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
      out.write("  \n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row-fluid\">\n");
      out.write("                \n");
      out.write("                <aside class=\"span1\"></aside>\n");
      out.write("                \n");
      out.write("                <aside class=\"span10\">\n");
      out.write("                    <section id=\"slide\">\n");
      out.write("                         <header class=\"page-header\">\n");
      out.write("                         </header>\n");
      out.write("                         <section class=\"carousel slide\" id=\"carrossel\">\n");
      out.write("                             <div class=\"carousel-inner\">\n");
      out.write("                                 <section class=\"active item\">\n");
      out.write("                                     <img src=\"bootstrap/img/slide/fazenda.JPG\" alt=\"img1\">\n");
      out.write("                                     <div class=\"carousel-caption\">\n");
      out.write("                                         <h4> Primeira Fazenda </h4>\n");
      out.write("                                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores aspernatur dicta laboriosam natus aperiam magnam possimus maiores iste, dolore rerum dolorem adipisci optio eum blanditiis eius, voluptas sit praesentium reiciendis.</p>\n");
      out.write("                                     </div>\n");
      out.write("                                 </section>\n");
      out.write("                                 <section class=\"item\">\n");
      out.write("                                     <img src=\"bootstrap/img/slide/fazenda 1.jpg\" alt=\"img2\">\n");
      out.write("                                     <div class=\"carousel-caption\">\n");
      out.write("                                         <h4> Segunda Fazenda </h4>\n");
      out.write("                                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas adipisci non architecto nulla officia, dolorum aliquid tempora repellendus, veniam optio possimus assumenda itaque quod sint aut. Odit, eveniet adipisci mollitia.</p>\n");
      out.write("                                     </div>\n");
      out.write("                                 </section>\n");
      out.write("                                 <section class=\"item\">\n");
      out.write("                                     <img src=\"bootstrap/img/slide/fazenda2.jpg\" alt=\"img3\">\n");
      out.write("                                     <div class=\"carousel-caption\">\n");
      out.write("                                         <h4> Terceira Fazenda </h4>\n");
      out.write("                                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aliquid ab recusandae esse libero cumque et aliquam sapiente pariatur reprehenderit quis in natus quisquam consectetur dicta sequi, unde tempore asperiores!</p>\n");
      out.write("                                     </div>\n");
      out.write("                                 </section>\n");
      out.write("                                 <section class=\"item\">\n");
      out.write("                                     <img src=\"bootstrap/img/slide/fazenda4.jpg\" alt=\"img4\">\n");
      out.write("                                     <div class=\"carousel-caption\">\n");
      out.write("                                         <h4> Quarta Fazenda </h4>\n");
      out.write("                                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. At enim, iusto. Iste minus aliquid nostrum incidunt repudiandae voluptatum aliquam, nihil nesciunt fugit, perferendis, cupiditate minima obcaecati laudantium nulla ducimus! Placeat?</p>\n");
      out.write("                                     </div>\n");
      out.write("                                 </section>\n");
      out.write("                             </div>\n");
      out.write("                             <a href=\"#carrossel\" class=\"carousel-control left\" data-slide=\"prev\">&lsaquo;</a>\n");
      out.write("                             <a href=\"#carrossel\" class=\"carousel-control right\" data-slide=\"next\">&rsaquo;</a>\n");
      out.write("                         </section>\n");
      out.write("\n");
      out.write("                     </section></br></br>\n");
      out.write("                </aside>\n");
      out.write("                \n");
      out.write("                <aside class=\"span1\"></aside>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                \n");
      out.write("        <footer class=\"footer\">\n");
      out.write("           <div class=\"container\"></div>\n");
      out.write("        </footer>   \n");
      out.write("       \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $('.carousel').carousel({\n");
      out.write("                interval: 4500\n");
      out.write("            });\n");
      out.write("        </script>\n");
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
