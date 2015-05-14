<%-- 
    Document   : Lv2-Passo4
    Created on : 30/04/2015, 15:34:10
    Author     : Aluno
--%>

<%@page import="modelo.Passos"%>
<%@page import="modelo.Lv2p3"%>
<%@page import="dao.Lv2p3DAO"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.Lv2p4DAO"%>
<%@page import="modelo.Lv2p4"%>
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
        Lv2p3 c = new Lv2p3();
        c.setTerneiroquant(Integer.parseInt(request.getParameter("terneiros1")));
        c.setTerneirovalor(Double.parseDouble(request.getParameter("terneiros2")));
        c.setTerneiraquant(Integer.parseInt(request.getParameter("terneiras1")));
        c.setTerneiravalor(Double.parseDouble(request.getParameter("terneiras2")));
        c.setNovilhaquant(Integer.parseInt(request.getParameter("novilhas1")));
        c.setNovilhavalor(Double.parseDouble(request.getParameter("novilhas2")));
        c.setVacadedescartequant(Integer.parseInt(request.getParameter("vacdescarte1")));
        c.setVacadedescartevalor(Double.parseDouble(request.getParameter("vacdescarte2")));
        c.setVacaprenhasquant(Integer.parseInt(request.getParameter("vacprenha1")));
        c.setVacaprenhavalor(Double.parseDouble(request.getParameter("vacprenha2")));
        c.setVacacomcriaquant(Integer.parseInt(request.getParameter("vaccria1")));
        c.setVacacomcriavalor(Double.parseDouble(request.getParameter("vaccria2")));
        c.setVacagordaquant(Integer.parseInt(request.getParameter("vacgorda1")));
        c.setVacagordavalor(Double.parseDouble(request.getParameter("vacgorda2")));
        c.setNovilhorecriaquant(Integer.parseInt(request.getParameter("novilhosrecria1")));
        c.setNovilhorecriavalor(Double.parseDouble(request.getParameter("novilhosrecria2")));
        c.setNovilhogordoquant(Integer.parseInt(request.getParameter("novilhosgordos1")));
        c.setNovilhogordovalor(Double.parseDouble(request.getParameter("novilhosgordos2")));
        c.setTorunosquant(Integer.parseInt(request.getParameter("torunos1")));
        c.setTorunovalor(Double.parseDouble(request.getParameter("torunos2")));
        c.setTouroquant(Integer.parseInt(request.getParameter("touros1")));
        c.setTourovalor(Double.parseDouble(request.getParameter("touros2")));

        Lv2p3DAO dao = new Lv2p3DAO();
        dao.inserir(c);
        p.setLv2p3(c);
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
                             <li><a href="Lv2-Passo3.jsp"> Passo 3 </a><span class="divider"> / </span></li>
                             <li class="active"> Passo 4 <span class="divider"> / </span></li>
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
                    
                    <h2> Custo de Produção </h2>
                    <br/>
                    
                    <form name="" action="Lv2-Saida.jsp" class="form-horizontal" method ="post" onSubmit="return passo4 ();">
                        <div class="control-group">
                            <label class="control-label">Medicamentos e Vacinas:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="medicamentos" placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Carrapaticidas:</label>
                		<div class="controls">
                			<input type="text" name="carrapaticidas" placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Sal Comum e Mineral:</label>
                		<div class="controls">
                                    
                		    <input type="text" name="sal" placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Rações:</label>
                		<div class="controls">
                			<input type="text" name="raçoes"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Compra de Bovinos:</label>
                		<div class="controls">
                			<input type="text" name="comprabovinos"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Utensílios de uso geral:</label>
                		<div class="controls">
                			<input type="text" name="utensilios"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Sêmen e material para inseminação artificial:</label>
                		<div class="controls">
                                        <br/>
                			<input type="text" name="semen"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Mão-de-obra Fixa:</label>
                		<div class="controls">
                			<input type="text" name="maodeobrafixa"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Mão-de-obra variável:</label>
                		<div class="controls">
                			<input type="text" name="maodeobravariavel"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Sementes:</label>
                		<div class="controls">
                			<input type="text" name="sementes"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Defensivos agrícolas para pastagens:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="defensivospastagens"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Adubos para pastegens:</label>
                		<div class="controls">
                			<input type="text" name="adubos"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Combustíveis e Lubrificantes:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="combustiveis"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Reparos de máquinas:</label>
                		<div class="controls">
                			<input type="text" name="reparomaquinas"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Reparos de benfeitorias:</label>
                		<div class="controls">
                			<input type="text" name="reparosbemfeitorias"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Fretes, taxas e comissão na venda de animais:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="fretes"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Arrendamentos de campo nativo:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="arrendamentosnativo"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Arrendamentos de pastagens cultivadas:</label>
                		<div class="controls">
                                    <br/>
                			<input type="text" name="arrendamentoscultivadas"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Impostos e Taxas:</label>
                		<div class="controls">
                			<input type="text" name="impostos"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Outras despesas:</label>
                		<div class="controls">
                			<input type="text" name="outras"  placeholder="Valor em R$(ANO)">
                		</div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                		<input type="submit" class="btn" value="Saidas" />
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
