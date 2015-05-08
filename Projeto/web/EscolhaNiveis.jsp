<%-- 
    Document   : EscolhaNiveis
    Created on : 08/05/2015, 09:08:55
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <li><a href="InicioUsuario.jsp"> Usuario </a></li>
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

        <div class="container-fluid">
            <div class="row-fluid"> 
                <aside class="span4"></aside>
                <aside class="span8"><h1>Escolha um Nivel</h1><br/><br/></aside>
            </div>
        </div>
        <br/><br/><br/><br/>

        <div class="container-fluid">
            <div class="row-fluid">

                <aside class="span2">
                </aside>

                <aside class="span10">
                    <ul>
                        <li><a href="Lv1-Passo1.jsp"> Nivel 1 </a></li>
                        <li><a href="Lv2-Passo1.jsp"> Nivel 2 </a></li>
                        <li><a href=""> Nivel 3 </a></li>
                        <li><a href=""> Nivel 4 </a></li>
                    </ul>
                </aside>

            </div><h2></h2>
        </div>
    </body>
</html>
