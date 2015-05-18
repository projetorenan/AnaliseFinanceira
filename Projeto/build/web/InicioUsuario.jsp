<%-- 
    Document   : InicioUsuario
    Created on : 08/04/2015, 15:18:32
    Author     : big
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="modelo.Passos"%>
<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%
    if(request.getParameter("login")!=null)
    {
        Usuario usuario = new Usuario();

        
        usuario.setLogin(request.getParameter("login"));
        usuario.setSenha(request.getParameter("senha"));
        
        UsuarioDAO dao = new UsuarioDAO();
        dao.login(usuario);
        

        session.setAttribute("Usuario", usuario);
        session.setAttribute("Passos", new Passos());
        
        //redirecionar para a tela de escolha de n�veis
        response.sendRedirect("EscolhaNiveis.jsp");
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
                    <!-- .btn-navbar est� classe � usada como alternador para o conteudo coplapsavel-->
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
                <aside class="span8"><h1>Logar no Site</h1><br/><br/></aside>
            </div>
        </div>
        
        <div class="container-fluid">
            <div class="row-fluid">
                
                <aside class="span3">
                    
                    <br/><br/><br/>                 
                    
                    <form action="">
                	<div class="controls input-prepend">
                	    <span class="add-on"><i class="icon-user"></i></span>
                	    <input type="text" class="span11" id="prependInput" placeholder="Pesquisar Usuario">
                	</div>
                    </form>
                    
                    <a href="CadastroUsuario.jsp" class="btn"> Novo Usuario </a>
                    
                </aside>
                
                <aside class="span9">
                    <form name="formulario" action="InicioUsuario.jsp" class="form-horizontal" method ="post" onSubmit="return Cadastro ();">
                	<div class="control-group">
                		<label class="control-label">Login: </label>
                		<div class="controls">
                			<input type="text" name="login">
                		</div>
                	</div>
                	<div class="control-group">
                		<label class="control-label">Senha: </label>
                		<div class="controls">
                			<input type="password" name="senha">
                		</div>
                	</div>
                        <div class="control-group">
                            <div class="controls">
                		<input type="submit" class="btn" value="Entrar" /> 
                            </div>
                	</div>
                    </form>
                </aside>
                
            </div>
        </div>
    </body>
</html>
