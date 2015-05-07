<%-- 
    Document   : Lv1-Passo2
    Created on : 28/04/2015, 16:00:25
    Author     : Aluno
--%>

<%@page import="dao.Lv1p1DAO"%>
<%@page import="modelo.Lv1p1"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.Lv1p2DAO"%>
<%@page import="modelo.Lv1p2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario u = new Usuario();
if(session.getAttribute("Usuario")!=null)
{
     u = (Usuario)session.getAttribute("Usuario");
    
}
else
{
    response.sendRedirect("InicioUsuario.jsp"); 
}
    
%>
<%
        Lv1p1 lv1p1 = new Lv1p1();
        lv1p1.setArea_apro(Double.parseDouble(request.getParameter("areapecuaria")));
        

        Lv1p1DAO dao = new Lv1p1DAO();
        dao.inserir(lv1p1); 
        
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
        <script>
            function exibe(numero)
            {
                var texto = document.getElementById("texto");
                var texto2 = document.getElementById("texto2");
                if (numero === 1)
                {
                    texto.style.display = "block";
                    texto2.style.display = "none";
                }
                else
                {
                    texto.style.display = "none";
                    texto2.style.display = "block";
                }
            }

        </script>
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
                            <li><a href="InicioUsuario.jsp"> Usuario </a></li>
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
                                <li class="active"> Passo 2 <span class="divider"> / </span></li>
                                <li><a href="Lv1-Passo3.jsp"> Passo 3 </a><span class="divider"> / </span></li>
                                <li><a href="Lv1-Passo4.jsp"> Passo 4 </a><span class="divider"> / </span></li>
                                <li><a href="Lv1-Saida.jsp"> Resultados </a></li>
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

                <aside class="span6">
                    <h2> Rebanho Bovino </h2>
                    <br/>

                    <form name="passo2" action="Lv1-Passo3.jsp" class="form-horizontal" method ="post" onSubmit="return passo2();">
                        <div class="control-group">
                            <label class="control-label">Você sabe o total do seu rebanho bovino?</label><br/>
                            <div class="controls">
                                <input type="radio" name="saberquantibov" value="false" id="ok"  onclick="exibe(1)"> Sim
                                <input type="radio" name="saberquantibov" value="true" id="ok2" onclick="exibe(2)"> Não
                                <br/>
                            </div>
                        </div>




                        <div id="texto" style="display: none">
                            <div class="control-group">  
                                <label class="control-label">Total Rebanho Bovino:</label>
                                <div class="controls">      
                                    <input type="text" name="bovinos">        
                                </div>         
                            </div>      
                            <div class="control-group">
                                <label class="control-label">Total Rebanho com Atividade de Cria:</label>
                                <div class="controls">                  
                                    <br/>	             
                                    <input type="text" name="bovinoscria">	       
                                </div>                
                            </div>                    
                        </div>

                        <div id="texto2" style="display: none">
                            <div class="control-group">
                                <label class="control-label">Vacas de Cria:</label>
                                <div class="controls">
                                    <input type="text" name="vacasdecria">
                                </div> 
                            </div>
                            <div class="control-group">
                                <label class="control-label">Vacas de Descarte:</label>
                                <div class="controls">
                                    <input type="text" name="vacasdedescarte">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Terneiros:</label>
                                <div class="controls">
                                    <input type="text" name="terneiros">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Terneiras:</label>
                                <div class="controls">
                                    <input type="text" name="terneiras">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Novilhos 13-24:</label>
                                <div class="controls">
                                    <input type="text" name="novilhos1">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Novilhas 13-24:</label>
                                <div class="controls">
                                    <input type="text" name="novilhas1">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Novilhos 25-36:</label>
                                <div class="controls">
                                    <input type="text" name="novilhos2">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Novilhas 25-36:</label>
                                <div class="controls">
                                    <input type="text" name="novilhas2">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Novilhos > 36:</label>
                                <div class="controls">
                                    <input type="text" name="novilhos3">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Touros:</label>
                                <div class="controls">
                                    <input type="text" name="touros">
                                </div>
                            </div>  
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <input type="submit" class="btn" value="Proximo Passo" />
                            </div>
                        </div>   
                    </form>
                </aside>
                 <jsp:include page="bootstrap/resultado.jsp" >
                    <jsp:param name="passo" value="2" />
                   
                  </jsp:include>
                

                <aside class="span2"></aside>

            </div>
        </div>

    </body>
</html>
