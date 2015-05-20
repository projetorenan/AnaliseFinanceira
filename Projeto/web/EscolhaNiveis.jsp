<%-- 
    Document   : EscolhaNiveis
    Created on : 08/05/2015, 09:08:55
    Author     : Aluno
--%>

<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Usuario u = new Usuario();
   
if(session.getAttribute("Usuario")!=null)
{
    u = (Usuario)session.getAttribute("Usuario");
}
else
{
    response.sendRedirect("index.jsp"); 
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
                            <li><a href="index.jsp"><%=u.getLogin()%></a></li>
                            <li><a href="Lv1-Passo1.jsp"> Nivel 1 </a></li>
                            <li><a href=""> Nivel 2 </a></li>
                            <li><a href=""> Nivel 3 </a></li>
                            <li><a href=""> Nivel 4 </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <header class="page-header"></header>
        <br/>
        <div class="container-fluid">
            <div class="row-fluid"> 
                <aside class="span3"></aside>
                <aside class="span9"><h1>Escolha o Nivel que Desejar</h1><br/><br/></aside>
            </div>
        </div>
        <br/><br/>

        <div class="container-fluid">
            <div class="row-fluid">

                <aside class="span4">
                </aside>

                <aside class="span4">
                    <div class="control-group" >
                        <a class="btn btn-inverse btn-large" href="Lv1-Passo1.jsp" > Nivel 1 </a>
                        <a class="btn btn-inverse btn-large" href="Lv2-Passo1.jsp" > Nivel 2 </a>
                        <a class="btn btn-inverse btn-large" href="" > Nivel 3 </a>
                        <a class="btn btn-inverse btn-large" href="" > Nivel 4 </a>
                    </div>
                </aside>
                
                <aside class="span4">
                </aside>

            </div><h2></h2>
        </div>
    </body>
</html>
