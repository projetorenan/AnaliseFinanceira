<%-- 
    Document   : Lv2-Passo2
    Created on : 30/04/2015, 15:33:14
    Author     : Aluno
--%>

<%@page import="modelo.Passos"%>
<%@page import="dao.Lv2p1DAO"%>
<%@page import="modelo.Lv2p1"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.Lv2p2DAO"%>
<%@page import="modelo.Lv2p2"%>
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
        Lv2p1 a = new Lv2p1();
        a.setPastagemnativa(Double.parseDouble(request.getParameter("pn")));
        a.setPastagemnativamelhorada(Double.parseDouble(request.getParameter("pnm")));
        a.setPastagemcultivadaperene(Double.parseDouble(request.getParameter("pcp")));
        a.setPastagemanuaisdeinverno(Double.parseDouble(request.getParameter("pai")));
        a.setPastagemanuaisdeverao(Double.parseDouble(request.getParameter("pav")));
        a.setAgriculturav(Double.parseDouble(request.getParameter("agriV")));
        a.setAgriculturai(Double.parseDouble(request.getParameter("agriI")));
        a.setFlorestaplantadas(Double.parseDouble(request.getParameter("florestas")));
        a.setOutrasplantadas(Double.parseDouble(request.getParameter("outras")));
        a.setMatasnativas(Double.parseDouble(request.getParameter("matasnativas")));
        a.setSea(Double.parseDouble(request.getParameter("sea")));
        a.setInaproveitavel(Double.parseDouble(request.getParameter("inaproveitavel")));
        a.setUsuarioid(u.getId());

        Lv2p1DAO dao = new Lv2p1DAO();
        dao.inserir(a);
        p.setLv2p1(a);
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
                            <li><a href="index.jsp"> <%=u.getLogin()%> </a></li>
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
                             <li class="active"> Passo 2 <span class="divider"> / </span></li>
                             <li><a href="Lv2-Passo3.jsp"> Passo 3 </a><span class="divider"> / </span></li>
                             <li><a href="Lv2-Passo4.jsp"> Passo 4 </a><span class="divider"> / </span></li>
                             <li><a href="Lv2-Saida.jsp"> Resultados </a></li>
                         </ul>
                         </header>
                     </section><br/>
                </aside>
                
                <aside class="span2"></aside>
                
            </div>
        </div>
        
        <div class="container-fluid">
            <div class="row-fluid">
                 
                <aside class="span1"></aside>
                
                <aside class="span11">
                    <h2> Rebanho Bovino </h2>
                    <br/>
                    
                    <form name="passo2" action="Lv2-Passo3.jsp" class="form-horizontal" method ="post" onSubmit="return passo2 ();">
                        <div class="control-group">
                            <label class="control-label">Vacas de Cria:</label>
                		<div class="controls">
                                    <input type="text" name="vacasdecria1" placeholder="Jan-Mar">
                                    <input type="text" name="vacasdecria2" placeholder="Abr-Jun">
                                    <input type="text" name="vacasdecria3" placeholder="Jul-Set">
                                    <input type="text" name="vacasdecria4" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Vacas de Descarte:</label>
                		<div class="controls">
                                    <input type="text" name="vacasdedescarte1" placeholder="Jan-Mar">
                                    <input type="text" name="vacasdedescarte2" placeholder="Abr-Jun">
                                    <input type="text" name="vacasdedescarte3" placeholder="Jul-Set">
                                    <input type="text" name="vacasdedescarte4" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Terneiros:</label>
                		<div class="controls">
                                    <input type="text" name="terneiros1" placeholder="Jan-Mar">
                                    <input type="text" name="terneiros2" placeholder="Abr-Jun">
                                    <input type="text" name="terneiros3" placeholder="Jul-Set">
                                    <input type="text" name="terneiros4" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Terneiras:</label>
                		<div class="controls">
                                    <input type="text" name="terneiras1" placeholder="Jan-Mar">
                                    <input type="text" name="terneiras2" placeholder="Abr-Jun">
                                    <input type="text" name="terneiras3" placeholder="Jul-Set">
                                    <input type="text" name="terneiras4" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Novilhos 13-24:</label>
                		<div class="controls">
                                    <input type="text" name="novilhos1" placeholder="Jan-Mar">
                                    <input type="text" name="novilhos2" placeholder="Abr-Jun">
                                    <input type="text" name="novilhos3" placeholder="Jul-Set">
                                    <input type="text" name="novilhos4" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Novilhas 13-24:</label>
                		<div class="controls">
                                    <input type="text" name="novilhas1" placeholder="Jan-Mar">
                                    <input type="text" name="novilhas2" placeholder="Abr-Jun">
                                    <input type="text" name="novilhas3" placeholder="Jul-Set">
                                    <input type="text" name="novilhas4" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Novilhos 25-36:</label>
                		<div class="controls">
                                    <input type="text" name="novilhos11" placeholder="Jan-Mar">
                                    <input type="text" name="novilhos22" placeholder="Abr-Jun">
                                    <input type="text" name="novilhos33" placeholder="Jul-Set">
                                    <input type="text" name="novilhos44" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Novilhas 25-36:</label>
                		<div class="controls">
                                    <input type="text" name="novilhas11" placeholder="Jan-Mar">
                                    <input type="text" name="novilhas22" placeholder="Abr-Jun">
                                    <input type="text" name="novilhas33" placeholder="Jul-Set">
                                    <input type="text" name="novilhas44" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Novilhos > 36:</label>
                		<div class="controls">
                                    <input type="text" name="novilhos111" placeholder="Jan-Mar">
                                    <input type="text" name="novilhos222" placeholder="Abr-Jun">
                                    <input type="text" name="novilhos333" placeholder="Jul-Set">
                                    <input type="text" name="novilhos444" placeholder="Out-Dez">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Touros:</label>
                		<div class="controls">
                                    <input type="text" name="touros1" placeholder="Jan-Mar">
                                    <input type="text" name="touros2" placeholder="Abr-Jun">
                                    <input type="text" name="touros3" placeholder="Jul-Set">
                                    <input type="text" name="touros4" placeholder="Out-Dez">
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
