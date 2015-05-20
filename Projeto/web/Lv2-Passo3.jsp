<%-- 
    Document   : Lv2-Passo3
    Created on : 30/04/2015, 15:33:31
    Author     : Aluno
--%>

<%@page import="modelo.Passos"%>
<%@page import="modelo.Lv2p2"%>
<%@page import="dao.Lv2p2DAO"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.Lv2p3DAO"%>
<%@page import="modelo.Lv2p3"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario u = new Usuario();
    Passos p = new Passos();
if(session.getAttribute("Usuario")!=null)
{
     u = (Usuario)session.getAttribute("Usuario");
     p = (Passos)session.getAttribute("Passos");
    
}
else
{
    response.sendRedirect("index.jsp"); 
}
    
%>
<%
        Lv2p2 b = new Lv2p2();
        b.setVacadecriajanmar(Integer.parseInt(request.getParameter("vacasdecria1")));
        b.setVacadecriaabrjun(Integer.parseInt(request.getParameter("vacasdecria2")));
        b.setVacadecriajulset(Integer.parseInt(request.getParameter("vacasdecria3")));
        b.setVacadecriaoutdez(Integer.parseInt(request.getParameter("vacasdecria4")));

        b.setVacadedescartejanmar(Integer.parseInt(request.getParameter("vacasdedescarte1")));
        b.setVacadedescarteabrjun(Integer.parseInt(request.getParameter("vacasdedescarte2")));
        b.setVacadedescartejulset(Integer.parseInt(request.getParameter("vacasdedescarte3")));
        b.setVacadedescarteoutdez(Integer.parseInt(request.getParameter("vacasdedescarte4")));

        b.setTerneirosjanmar(Integer.parseInt(request.getParameter("terneiros1")));
        b.setTerneirosabrjun(Integer.parseInt(request.getParameter("terneiros2")));
        b.setTerneirosjulset(Integer.parseInt(request.getParameter("terneiros3")));
        b.setTerneirosoutdez(Integer.parseInt(request.getParameter("terneiros4")));
        
        b.setTerneirasjanmar(Integer.parseInt(request.getParameter("terneiras1")));
        b.setTerneirasabrjun(Integer.parseInt(request.getParameter("terneiras2")));
        b.setTerneirasjulset(Integer.parseInt(request.getParameter("terneiras3")));
        b.setTerneirasoutdez(Integer.parseInt(request.getParameter("terneiras4")));
        
        b.setNovilho1324janmar(Integer.parseInt(request.getParameter("novilhos1")));
        b.setNovilho1324abrjun(Integer.parseInt(request.getParameter("novilhos2")));
        b.setNovilho1324julset(Integer.parseInt(request.getParameter("novilhos3")));
        b.setNovilho1324outdez(Integer.parseInt(request.getParameter("novilhos4")));
        
        b.setNovilha1324janmar(Integer.parseInt(request.getParameter("novilhas1")));
        b.setNovilha1324abrjun(Integer.parseInt(request.getParameter("novilhas2")));
        b.setNovilha1324julset(Integer.parseInt(request.getParameter("novilhas3")));
        b.setNovilha1324outdez(Integer.parseInt(request.getParameter("novilhas4")));
        
        b.setNovilho2536janmar(Integer.parseInt(request.getParameter("novilhos11")));
        b.setNovilho2536abrjun(Integer.parseInt(request.getParameter("novilhos22")));
        b.setNovilho2536julset(Integer.parseInt(request.getParameter("novilhos33")));
        b.setNovilho2536outdez(Integer.parseInt(request.getParameter("novilhos44")));
        
        b.setNovilha2536janmar(Integer.parseInt(request.getParameter("novilhas11")));
        b.setNovilha2536abrjun(Integer.parseInt(request.getParameter("novilhas22")));
        b.setNovilha2536julset(Integer.parseInt(request.getParameter("novilhas33")));
        b.setNovilha2536outdez(Integer.parseInt(request.getParameter("novilhas44")));
        
        b.setNovilho36janmar(Integer.parseInt(request.getParameter("novilhos111")));
        b.setNovilho36abrjun(Integer.parseInt(request.getParameter("novilhos222")));
        b.setNovilho36julset(Integer.parseInt(request.getParameter("novilhos333")));
        b.setNovilho36outdez(Integer.parseInt(request.getParameter("novilhos444")));
        
        b.setTourojanmar(Integer.parseInt(request.getParameter("touros1")));
        b.setTouroabrjun(Integer.parseInt(request.getParameter("touros2")));
        b.setTourojulset(Integer.parseInt(request.getParameter("touros3")));
        b.setTourooutdez(Integer.parseInt(request.getParameter("touros4")));

        b.setUsuarioid(u.getId());
        
        Lv2p2DAO dao = new Lv2p2DAO();
        dao.inserir(b);
        p.setLv2p2(b);
%>
<!DOCTYPE html>
<html>
    <head>

	<meta charset="utf-8"/>
	<meta name="description" content="Fazenda"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>

	<title>Fazenda</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.css">
	<link rel="stylesheet" href="bootstrap/style.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.7.1.min.js"><\/script>')</script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript" src="bootstrap/TesteJavaScript.js"></script>
    </head>
    <body>
        
        <nav class="navbar navbar-fixed-top navbar-inverse">
            <div class="navbar-inner">
                <div class="container">
                    <!-- .btn-navbar está classe é usada como alternador para o conteudo coplapsavel-->
                    <button class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="Inicio.jsp" class="brand">Fazenda</a>

                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li><a></a></li>
                            <li><a></a></li>
                            <li><a></a></li>
                            <li><a></a></li>
                            <li><a></a></li>
                            <li><a href="InicioUsuario.jsp"> <%=u.getLogin()%> </a></li>
                            <li><a href="Lv1-Passo1.jsp"> Nivel 1 </a></li>
                            <li><a href="Lv2-Passo1.jsp"> Nivel 2 </a></li>
                            <li><a href=""> Nivel 3 </a></li>
                            <li><a href=""> Nivel 4 </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        
        <header class="page-header"></header>
        
        <div class="container-fluid">
            <div class="row-fluid">
                 
                <aside class="span10">
                    <section id="breadcrumbs">
                         <header class="page-header">
                             <h3> Progresso </h3>
                         
                         <ul class="breadcrumb">                            
                             <li><a href="Lv2-Passo1.jsp"> Passo 1 </a><span class="divider"> / </span></li>
                             <li><a href="Lv2-Passo2.jsp"> Passo 2 </a><span class="divider"> / </span></li>
                             <li class="active"> Passo 3 <span class="divider"> / </span></li>
                             <li><a href="Lv2-Passo4.jsp"> Passo 4 </a><span class="divider"> / </span></li>
                             <li><a href="Lv2-Saida.jsp"> Resultados </a></li>
                         </ul>
                         </header>
                     </section><br/><br/>
                </aside>
                
                <aside class="span2"></aside>
                
            </div>
        </div>
        
        <div class="container-fluid">
            <div class="row-fluid">
                 
                <aside class="span1"></aside>
                
                <aside class="span11">
                    
                    <h2> Receita Anual de Bovinos </h2>
                    <br/>
                    
                    <form name="Passo3" action="Lv2-Passo4.jsp" class="form-horizontal" method ="post" onSubmit="return passo3 ();">
                        <div class="control-group">
                            <label class="control-label">Terneiros:</label>
                		<div class="controls">
                		    <input type="text" name="terneiros1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="terneiros2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Terneiras:</label>
                		<div class="controls">
                		    <input type="text" name="terneiras1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="terneiras2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Novilhas:</label>
                		<div class="controls">
                		    <input type="text" name="novilhas1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="novilhas2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Vacas de Descarte:</label>
                		<div class="controls">
                		    <input type="text" name="vacdescarte1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="vacdescarte2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Vacas Prenhas:</label>
                		<div class="controls">
                		    <input type="text" name="vacprenha1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="vacprenha2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Vacas com Cria:</label>
                		<div class="controls">
                		    <input type="text" name="vaccria1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="vaccria2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Vacas Gordas:</label>
                		<div class="controls">
                		    <input type="text" name="vacgorda1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="vacgorda2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Novilhos para Recria:</label>
                		<div class="controls">
                		    <input type="text" name="novilhosrecria1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="novilhosrecria2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Novilhos Gordos:</label>
                		<div class="controls">
                		    <input type="text" name="novilhosgordos1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="novilhosgordos2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Torunos:</label>
                		<div class="controls">
                		    <input type="text" name="torunos1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="torunos2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Touros:</label>
                		<div class="controls">
                		    <input type="text" name="touros1" placeholder="Quantidade(cabeças)">
                                    <input type="text" name="touros2" placeholder="Valor Unitário">
                		</div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                		<input type="submit" class="btn" value="Proximo Passo" />
                            </div>
                	</div>
                    </form>               
                    
                </aside>
                 
            </div>
        </div>
        <footer class="footer">
           <div class="container">
           </div>
        </footer>
    </body>
    
</html>
