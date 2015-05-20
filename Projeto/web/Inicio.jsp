<%-- 
    Document   : Inicio
    Created on : 29/04/2015, 14:58:49
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
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
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
                            <li><a href="index.jsp"> Usuario </a></li>
                            <li><a href="Lv1-Passo1.jsp"> Nivel 1 </a></li>
                            <li><a href=""> Nivel 2 </a></li>
                            <li><a href=""> Nivel 3 </a></li>
                            <li><a href=""> Nivel 4 </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
  
        <div class="container-fluid">
            <div class="row-fluid">
                
                <aside class="span1"></aside>
                
                <aside class="span10">
                    <section id="slide">
                         <header class="page-header">
                         </header>
                         <section class="carousel slide" id="carrossel">
                             <div class="carousel-inner">
                                 <section class="active item">
                                     <img src="bootstrap/img/slide/fazenda.JPG" alt="img1">
                                     <div class="carousel-caption">
                                         <h4> Primeira Fazenda </h4>
                                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores aspernatur dicta laboriosam natus aperiam magnam possimus maiores iste, dolore rerum dolorem adipisci optio eum blanditiis eius, voluptas sit praesentium reiciendis.</p>
                                     </div>
                                 </section>
                                 <section class="item">
                                     <img src="bootstrap/img/slide/fazenda 1.jpg" alt="img2">
                                     <div class="carousel-caption">
                                         <h4> Segunda Fazenda </h4>
                                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas adipisci non architecto nulla officia, dolorum aliquid tempora repellendus, veniam optio possimus assumenda itaque quod sint aut. Odit, eveniet adipisci mollitia.</p>
                                     </div>
                                 </section>
                                 <section class="item">
                                     <img src="bootstrap/img/slide/fazenda2.jpg" alt="img3">
                                     <div class="carousel-caption">
                                         <h4> Terceira Fazenda </h4>
                                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aliquid ab recusandae esse libero cumque et aliquam sapiente pariatur reprehenderit quis in natus quisquam consectetur dicta sequi, unde tempore asperiores!</p>
                                     </div>
                                 </section>
                                 <section class="item">
                                     <img src="bootstrap/img/slide/fazenda4.jpg" alt="img4">
                                     <div class="carousel-caption">
                                         <h4> Quarta Fazenda </h4>
                                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. At enim, iusto. Iste minus aliquid nostrum incidunt repudiandae voluptatum aliquam, nihil nesciunt fugit, perferendis, cupiditate minima obcaecati laudantium nulla ducimus! Placeat?</p>
                                     </div>
                                 </section>
                             </div>
                             <a href="#carrossel" class="carousel-control left" data-slide="prev">&lsaquo;</a>
                             <a href="#carrossel" class="carousel-control right" data-slide="next">&rsaquo;</a>
                         </section>

                     </section></br></br>
                </aside>
                
                <aside class="span1"></aside>
                
            </div>
        </div>
                
        <footer class="footer">
           <div class="container"></div>
        </footer>   
       
        <script type="text/javascript">
            $('.carousel').carousel({
                interval: 4500
            });
        </script>
    </body>
</html>
