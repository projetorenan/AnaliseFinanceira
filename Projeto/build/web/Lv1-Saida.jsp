<%-- 
    Document   : Lv1-Saida
    Created on : 30/04/2015, 15:33:55
    Author     : Aluno
--%>

<%@page import="modelo.Passos"%>
<%@page import="dao.Lv1p4DAO"%>
<%@page import="modelo.Lv1p4"%>
<%@page import="modelo.Usuario"%>
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
    

<%
        Lv1p4 lv1p4 = new Lv1p4();
        lv1p4.setMadicamento(Double.parseDouble(request.getParameter("medicamentos")));
        lv1p4.setMao_de_obra(Double.parseDouble(request.getParameter("maodeobra")));
        lv1p4.setMaquinas(Double.parseDouble(request.getParameter("maquinas")));
        lv1p4.setPastagem(Double.parseDouble(request.getParameter("dispesas")));

        Lv1p4DAO dao = new Lv1p4DAO();
        dao.inserir(lv1p4);
        p.setLv1p4(lv1p4);
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
                            <li><a href="InicioUsuario.jsp"><%=u.getLogin()%></a></li>
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
                             <li><a href="Lv1-Passo1.jsp"> Passo 1 </a><span class="divider"> / </span></li>
                             <li><a href="Lv1-Passo2.jsp"> Passo 2 </a><span class="divider"> / </span></li>
                             <li><a href="Lv1-Passo3.jsp"> Passo 3 </a><span class="divider"> / </span></li>
                             <li><a href="Lv1-Passo4.jsp"> Passo 4 </a><span class="divider"> / </span></li>
                             <li class="active"> Resultados </li>
                         </ul>
                         </header>
                     </section><br/><br/>
                </aside>
                
                <aside class="span2"></aside>
                
            </div>
        </div>
        
        <div class="container-fluid">
            <div class="row-fluid">
                 
                <aside class="span3"></aside>
                
                <aside class="span9">
                    
                    <h2> Custo de Produção </h2>
                    <br/>
                    
                    <form name="Passo4" action="Lv2-Saida.jsp" class="form-horizontal" method ="post" onSubmit="return passo4 ();">
                        <div class="control-group">
                            <label class="control-label">Percentual do Rebanho com atividade de Cria:</label>
                		<div class="controls">
                                    <br/>
                		    <input type="text" name="percentualrebanho" class="uneditable-input" value="<%=p.percentualcria()%>">
                                    <span class="help-inline">%</span>
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Lotação Média da Propriedade:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="lotaçaomedia"  class="uneditable-input" value="<%=p.lotacaomedia()%>">
                                        <span class="help-inline">Cabeça(s) por hectare</span>
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Receita por Hectare:</label>
                		<div class="controls">
                                    <input type="text" name="receitahectare"  class="uneditable-input" value="<%=p.receitahectar()%>">
                                        <span class="help-inline">R$/Hectare</span>
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Total dos Custos de Produção:</label>
                		<div class="controls">
                                        <br/>
                			<input type="text" name="totalproduçao"  class="uneditable-input" value="<%=p.totalcustoproducao()%>">
                                        <span class="help-inline">R$</span>
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Custo de Atividade de Cria:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="custocria"  class="uneditable-input" value="<%=p.custocria()%>">
                                        <span class="help-inline">R$</span>
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Custo de Produção por Hectar:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="custohectar"  class="uneditable-input" value="<%=p.custohectar()%>">
                                        <span class="help-inline">R$/Hectare</span>
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
