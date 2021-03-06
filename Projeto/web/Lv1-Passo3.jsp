<%-- 
    Document   : Lv1-Passo3
    Created on : 28/04/2015, 16:03:33
    Author     : Aluno
--%>

<%@page import="modelo.Calculos"%>
<%@page import="modelo.Passos"%>
<%@page import="dao.Lv1p2DAO"%>
<%@page import="modelo.Lv1p2"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.Lv1p3DAO"%>
<%@page import="modelo.Lv1p3"%>
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
   
    Lv1p2 e = new Lv1p2();
    Lv1p2DAO dao = new Lv1p2DAO();
    
    e.setUsuario_id(u.getId());
    
    if(request.getParameter("saberquantibov").equals("false"))
    {    
    e.setLota_pro(Double.parseDouble(request.getParameter("bovinos")));
    e.setRebanhodecria(Integer.parseInt(request.getParameter("bovinoscria")));
    dao.inserirSim(e);
    }
    else
    {
    e.setVacadecria(Integer.parseInt(request.getParameter("vacasdecria")));
    e.setVacadedescarte(Integer.parseInt(request.getParameter("vacasdedescarte")));
    e.setTerneiro(Integer.parseInt(request.getParameter("terneiros")));
    e.setNovilho1324(Integer.parseInt(request.getParameter("novilhos1")));
    e.setNovilha1324(Integer.parseInt(request.getParameter("novilhas1")));
    e.setNovilho2536(Integer.parseInt(request.getParameter("novilhos2")));
    e.setNovilha2536(Integer.parseInt(request.getParameter("novilhas2")));
    e.setNovilho36(Integer.parseInt(request.getParameter("novilhos3")));
    e.setTouro(Integer.parseInt(request.getParameter("touros")));
    dao.inserirNao(e);
    }
    
    p.setLv1p2(e);

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
                            <li><a href="index.jsp"><%=u.getLogin()%></a></li>
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
                                <li class="active"> Passo 3 <span class="divider"> / </span></li>
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

                    <h2> Receitas Anuais </h2>
                    <br/>

                    <form name="Passo3" action="Lv1-Passo4.jsp" class="form-horizontal" method ="post" onSubmit="return passo3();">
                        <div class="control-group">
                            <label class="control-label">Receita Anual de Bovinos:</label>
                            <div class="controls">
                                <br/>
                                <input type="text" name="bovinosanual">
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
                    <jsp:param name="passo" value="3" />

                </jsp:include>


                <aside class="span2"></aside>  

            </div>
        </div>

    </body>
    
</html>
