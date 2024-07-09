<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Clases.*" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>ZgameK - Sobre Nosotros</title>
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

    <section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>Sobre nosotros</h1>
                    <p>
                        En ZgameK, estamos comprometidos a ofrecerte la mejor experiencia de compras de videojuegos en línea. 
                        Con una amplia selección de títulos para todas las plataformas y un equipo apasionado por los videojuegos, nos esforzamos por ser tu destino número uno para todas tus necesidades de juego. 
                        
                    </p>
                    <p>
                    ¡Descubre un mundo de diversión y aventura con ZgameK hoy mismo!
                </p>
                </div>
                <div class="col-md-4">
                    <img style="margin-left: 7rem;" src="assets/img/favicon.png">
                </div>
            </div>
        </div>
    </section>
    <!-- Close Banner -->

    <!-- Start Section -->
    <section class="container py-5">
        <div class="row text-center pt-5 pb-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1"><b>Nuestros servicios</b></h1>
                <br>
            </div>
        </div>
        <div class="row">

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><i class="fa fa-truck fa-lg"></i></div>
                    <h2 class="h5 mt-4 text-center">Reparto a domicilio</h2>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><i class="fas fa-exchange-alt"></i></div>
                    <h2 class="h5 mt-4 text-center">Compras y devoluciones</h2>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><i class="fa fa-percent"></i></div>
                    <h2 class="h5 mt-4 text-center">Promociones</h2>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><i class="fa fa-user"></i></div>
                    <h2 class="h5 mt-4 text-center">Servicio 24 horas</h2>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->

<!-- Start Brands -->
<section class="bg-light py-5">
    <div class="container my-4">
        <div class="row text-center py-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1"><b>Marcas Colaboradoras</b></h1>
                <p>
                    Estas son las marcas con las que estamos afiliados. <br>
                    Solo las mejores del mercado.
                </p>
            </div>
            <div class="col-lg-9 m-auto tempaltemo-carousel">
                <div class="row d-flex flex-row">
                    <!--Carousel Wrapper-->
                    <div class="col">
                        <div class="row">
                            <div class="col-4 p-md-5">
                                <a href="https://www.playstation.com/es-es/ps5/" target="_blank"><img class="img-fluid brand-img" src="assets/img/ps5-logo.png" alt="Brand Logo"></a>
                            </div>
                            <div class="col-4 p-md-5">
                                <a href="https://www.nintendo.com/es-es/" target="_blank"><img class="img-fluid brand-img" src="assets/img/switch-logo.png" alt="Brand Logo"></a>
                            </div>
                            <div class="col-4 p-md-5">
                                <a href="https://www.xbox.com/es-ES" target="_blank"><img class="img-fluid brand-img" src="assets/img/xbox-logo.png" alt="Brand Logo"></a>
                            </div>
                        </div>
                    </div>
                    <!--End Carousel Wrapper-->
                </div>
            </div>
        </div>
    </div>
</section>
<!--End Brands-->


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