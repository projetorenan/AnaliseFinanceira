<%-- 
    Document   : Lv2-Passo1
    Created on : 30/04/2015, 15:33:00
    Author     : Aluno
--%>

<%@page import="modelo.Passos"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.Lv2p1DAO"%>
<%@page import="modelo.Lv2p1"%>
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
    response.sendRedirect("InicioUsuario.jsp"); 
}
    
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
                             <li class="active"> Passo 1 <span class="divider"> / </span></li>
                             <li><a href="Lv2-Passo2.jsp"> Passo 2 </a><span class="divider"> / </span></li>
                             <li><a href="Lv2-Passo3.jsp"> Passo 3 </a><span class="divider"> / </span></li>
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
                    <h2> Informações </h2>
                    <br/>
                    <form name="Passo1" action="Lv2-Passo2.jsp" class="form-horizontal" method ="post" onSubmit="return passo1();">
                        <div class="control-group">
                            <label class="control-label">Pastagem Nativa:</label>
                		<div class="controls">
                			<input type="text" name="pn">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Pastagem Nativa Melhorada:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="pnm">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Pastagem Cultivada Perene:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="pcp">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Pastagem Anuais de Inverno:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="pai">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Pastagem Anuais de Verão:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="pav">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Agricultura:</label>
                		<div class="controls">
                                    <input type="text" name="agriV" placeholder="No Verão">
                                    <input type="text" name="agriI" placeholder="No Inverno">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Florestas Plantadas:</label>
                		<div class="controls">
                			<input type="text" name="florestas">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Outras Culturas:</label>
                		<div class="controls">
                			<input type="text" name="outras">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Matas Nativas:</label>
                		<div class="controls">
                			<input type="text" name="matasnativas">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Sede, estradas, Açudes:</label>
                		<div class="controls">
                			<input type="text" name="sea">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Inaproveitável(banhados,pedras,etc):</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="inaproveitavel">
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
