<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Clases.*" %>

<!DOCTYPE html>
<html lang="en">

<%
BDController cbd = new BDController();


ArrayList<Juego> juegos = new ArrayList<Juego>();


juegos = cbd.juegosMasVendidos();


%>



<head>
    <title>ZgameK - Inicio</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/favicon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:jorge@centronelson.org">jorge@centronelson.org</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:646 26 58 52">646 26 58 52</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/centronelson" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/centronelson" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/centronelson" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/school/centro-nelson/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
                <img style="max-width:100px; height:auto;" src="assets/img/logo.png">
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="shop.jsp">Todos los juegos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.jsp?plataforma=PS5">PS5</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.jsp?plataforma=Xbox">Xbox One</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.jsp?plataforma=Switch">Switch</a>
                        </li>
                    </ul>
                </div>
                <li style="list-style: none; margin-right: 8rem;">
                    <a class="text-decoration-none" href="about.jsp">Sobre Nosotros</a>
                </li>
                <li class="nav-item dropdown" style="list-style: none;">
                    <a class="nav-link dropdown-toggle" href="#" id="moderacionDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Moderación
                    </a>
                   <ul class="dropdown-menu" aria-labelledby="moderacionDropdown">
                        <li><a class="dropdown-item" href="altaJuego.jsp">Alta Juego</a></li>
                        <li><a class="dropdown-item" href="altaCliente.jsp">Alta Cliente</a></li>
                        <li><a class="dropdown-item" href="bajaJuego.jsp">Baja Juego</a></li>
                        <li><a class="dropdown-item" href="bajaCliente.jsp">Baja Cliente</a></li>
                        <li><a class="dropdown-item" href="elegirProducto.jsp">Modificación Juego</a></li>
                        <li><a class="dropdown-item" href="elegirCliente.jsp">Modificación Cliente</a></li>
                        <li><a class="dropdown-item" href="listaProductos.jsp">Lista Productos</a></li>
                        <li><a class="dropdown-item" href="listaClientes.jsp">Lista Clientes</a></li>
                        <li><a class="dropdown-item" href="listaVentas.jsp">Lista Ventas</a></li>
                    </ul>
                </li>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active" style="height: 85vh;">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="assets/img/imagen1Carrusel.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>¡YA ESTÁN AQUÍ!</b></h1>
                                <h3 class="h2">¡Prepárate para jugar sin límites con los mejores títulos para todas las consolas!</h3>
                                <br>
                                <p>
                                    ¡Bienvenidos a nuestra tienda de videojuegos, donde la diversión no conoce límites! 
                                    Descubre un universo de emociones en nuestras selecciones para <b>PS5</b>, <b>Xbox</b> y <b>Switch.</b> 
                                    Sumérgete en experiencias épicas, gráficos impresionantes y mundos cautivadores. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="height: 85vh;">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="assets/img/assasins.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1 text-success"><b>¡Nueva saga disponible!</b></h1>
                                <h3 class="h2">¡Sumérgete en la aventura desde la comodidad de tu hogar!</h3>
                                <br>
                                <p>
                                    Descubre mundos históricos vibrantes y sumérgete en la intriga de la antigüedad con
                                    <strong>Assassin's Creed: Mirage</strong> y <strong>Assassin's Creed: Valhalla.</strong>
                                    Experimenta la emoción de la acción furtiva y la épica exploración en estos aclamados títulos de la saga.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="height: 85vh;">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="assets/img/fifas.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1 text-success"><b>¡FIFA 24 YA EN VENTA!</b></h1>
                                <h3 class="h2">¡No esperes más, ya han llegado de nuevo!</h3>
                                <br>
                                <p>
                                    Experimenta la emoción del fútbol como nunca antes con el nuevo <b>FIFA 24</b>, disponible ahora en nuestra tienda digital para Xbox, Play5 y Switch. 
                                    Domina el campo con gráficos impresionantes, jugabilidad innovadora y modos de juego envolventes.
                                    ¡Hazte con tu copia y lleva tu pasión por el fútbol al siguiente nivel!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1"><b>Busca por consola</b></h1>
                <p>
                    Nuestra tienda ofrece los mejores juegos de las últimas consolas.
                </p>
                <p>
                    ¡Haz click para ver los juegos de cada una!
                </p>
                
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="shop.jsp?plataforma=PS5"><img src="./assets/img/ps5.png" class="rounded-circle img-fluid border" ></a>
                <h5 class="text-center mt-3 mb-3">PS5</h5>
                <p class="text-center"><a href="shop.jsp?plataforma=PS5" class="btn btn-success">Ver juegos PS5</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="shop.jsp?plataforma=Xbox"><img src="./assets/img/xbox.png" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Xbox One</h2>
                <p class="text-center"><a href="shop.jsp?plataforma=Xbox" class="btn btn-success">Ver juegos Xbox One</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="shop.jsp?plataforma=Switch"><img src="./assets/img/switch.png" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Switch</h2>
                <p class="text-center"><a href="shop.jsp?plataforma=Switch" class="btn btn-success">Ver juegos Switch</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1"><b>Productos más vendidos</b></h1>
                    <p>
                        Estos son los 6 productos más vendidos de nuestra tienda!
                    </p>
                </div>
            </div>
            <div class="row">
            
            	<% for(int i=0; i < juegos.size(); i++){     %>
            <div class="col-12 col-md-4 mb-4">
			    <div class="product-wap card rounded-0">
			        <div class="card rounded-0" style="display: flex; justify-content: center; align-items: center;">
			            <a href="producto.jsp?idJuego=<%=juegos.get(i).getId()%>">
			                <img style="height: 16em; width:auto;" class="card-img rounded-0 img-fluid card-img-top" src="assets/img/Productos/<%=juegos.get(i).getId()%>/1.png" alt="...">
			                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
			                    <ul class="list-unstyled">
			                        <li><a class="btn btn-success text-white mt-2" href="producto.jsp?idJuego=<%=juegos.get(i).getId()%>"><i class="far fa-eye"></i></a></li>
			                    </ul>
			                </div>
			            </a>
		            </div>
			            <div class="card-body" style="height: 260px">
			                <ul class="list-unstyled d-flex justify-content-between">
			                    <li>
			                        <%for(int j=0; j<juegos.get(i).getValoracion(); j++){ %>
			                        <i class="text-warning fa fa-star"></i>
			                        <%} %>
			                        <%int estrellasRestantes = (5 - juegos.get(i).getValoracion());
			                        for(int j=0; j< estrellasRestantes; j++){%>
			                        <i class="text-muted fa fa-star"></i>
			                        <%} %>
			                    </li>
			                    <li class="text-muted text-right" style="color: green !important;"><b><%=juegos.get(i).getPrecio()%> €</b></li>
			                </ul>
			                <a href="producto.jsp?idJuego=<%=juegos.get(i).getId()%>" class="h2 text-decoration-none text-dark"><b><%=juegos.get(i).getNombre()%></b></a>
			                <div style="display: flex; flex-direction: column; justify-content: space-beetwen;">
			                <p class="card-text">
			                    <%=juegos.get(i).getDescripcionCorta()%>
			                </p>
			                
			                <p><%=juegos.get(i).getPlataforma()%><br><%=juegos.get(i).getCategoria()%></p>
			                </div>
			            </div>
			    </div>
			</div>


               
               <%} %>
               
            </div>
        </div>
    </section>
    <!-- End Featured Product -->


<!-- Start Footer -->
<footer class="bg-dark" id="tempaltemo_footer">
    <div class="container">
        <div class="row">

            <div class="col-md-4 pt-5">
               <h2 class="h2 text-success border-bottom pb-3 border-light logo">ZgameK</h2>
                <ul class="list-unstyled text-light footer-link-list">
                    <li>
                        <i class="fas fa-map-marker-alt fa-fw"></i>
                        <a class="text-decoration-none" href="https://www.google.com/maps/place/Centro+de+Formaci%C3%B3n+Profesional+Nelson/@40.4363834,-3.7145472,17z/data=!3m1!4b1!4m6!3m5!1s0xd4228431423d5db:0x53a0b966ac4d9128!8m2!3d40.4363834!4d-3.7145472!16s%2Fg%2F11b7xtky5f?entry=ttu">Calle Donoso Cortés, 61</a> 
                        
                    </li>
                    <li>
                        <i class="fa fa-phone fa-fw"></i>
                        <a class="text-decoration-none" href="tel:646 26 58 52">646 26 58 52</a>
                    </li>
                    <li>
                        <i class="fa fa-envelope fa-fw"></i>
                        <a class="text-decoration-none" href="mailto:jorge@centronelson.org">jorge@centronelson.org</a>
                    </li>
                </ul>
                <img style="max-width:100px; height:auto margin-top:1rem;" src="assets/img/favicon.png">
            </div>

            <div class="col-md-4 pt-5">
                <h2 class="h2 text-light border-bottom pb-3 border-light">Juegos</h2>
                <ul class="list-unstyled text-light footer-link-list">
                    <li><a class="text-decoration-none" href="shop.jsp">Todos los juegos</a></li>
                    <li><a class="text-decoration-none" href="shop.jsp?plataforma=PS5">PS5</a></li>
                    <li><a class="text-decoration-none" href="shop.jsp?plataforma=Xbox">Xbox One</a></li>
                    <li><a class="text-decoration-none" href="shop.jsp?plataforma=Switch">Switch</a></li>
                </ul>
            </div>

             <div class="col-md-4 pt-5">
                <h2 class="h2 text-light border-bottom pb-3 border-light">Moderación</h2>
                <div class="row">
                    <div class="col-6">
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="altaJuego.jsp">Alta Juego</a></li>
                            <li><a class="text-decoration-none" href="altaCliente.jsp">Alta Cliente</a></li>
                            <li><a class="text-decoration-none" href="bajaJuego.jsp">Baja Juego</a></li>
                            <li><a class="text-decoration-none" href="bajaCliente.jsp">Baja Cliente</a></li>
                            <li><a class="text-decoration-none" href="elegirProducto.jsp">Modificación Juego</a></li>
                        </ul>
                    </div>
                    <div class="col-6">
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="elegirCliente.jsp">Modificación Cliente</a></li>
                            <li><a class="text-decoration-none" href="listaProductos.jsp">Lista Productos</a></li>
                            <li><a class="text-decoration-none" href="listaClientes.jsp">Lista Clientes</a></li>
                            <li><a class="text-decoration-none" href="listaVentas.jsp">Lista Ventas</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>

        <div class="row text-light mb-4">
            <div class="col-12 mb-3">
                <div class="w-100 my-3 border-top border-light"></div>
            </div>
            <div class="col-auto me-auto" style="display: flex;">
                <ul class="list-inline text-left footer-icons">
                    <li class="list-inline-item border border-light rounded-circle text-center">
                        <a class="text-light text-decoration-none" target="_blank" href="https://fb.com/centronelson"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                    </li>
                    <li class="list-inline-item border border-light rounded-circle text-center">
                        <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/centronelson"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                    </li>
                    <li class="list-inline-item border border-light rounded-circle text-center">
                        <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/centronelson"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                    </li>
                    <li class="list-inline-item border border-light rounded-circle text-center">
                        <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/school/centro-nelson/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="w-100 bg-black py-3">
        <div class="container">
            <div class="row pt-2">
                <div class="col-12">
                    <p class="text-left text-light">
                        Copyright &copy; 2024 ZgameK 
                        | Designed by <a rel="sponsored" href="https://www.linkedin.com/in/kilian-garrido-mar%C3%ADn-b52022175/" target="_blank">Kilian Garrido</a> and <a rel="sponsored" href="https://www.linkedin.com/in/zigormateosgonzalez/" target="_blank">Zigor Mateos</a>
                    </p>
                </div>
            </div>
        </div>
    </div>

</footer>
<!-- End Footer -->
    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
	    window.onload = function() {
	        // Desplazarse hacia arriba
	        window.scrollTo(0, 0);
	    }
	</script>
    <!-- End Script -->
</body>

</html>