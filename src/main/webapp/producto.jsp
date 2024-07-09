<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Clases.*" %>

<!DOCTYPE html>
<html lang="en">

<%
BDController cbd = new BDController();

int juegoId;
try {
    String juego = request.getParameter("idJuego");
    if (juego == null || juego.isEmpty()) {
        juegoId = 1; // Valor predeterminado si idJuego no está presente o está vacío
    } else {
        juegoId = Integer.parseInt(juego);
    }
} catch (NumberFormatException e) {
    juegoId = 1; // Valor predeterminado en caso de excepción de formato numérico
}

Juego juegoAux = cbd.dameJuego(juegoId);

ArrayList<Juego> juegos = new ArrayList<Juego>();

juegos = cbd.juegosPorCategoriaRandom(juegoAux.getCategoria());

%>

<head>
    <title>ZgameK - <%=juegoAux.getNombre() %></title>
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
    
    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
    
    <style>
	   /* Main product image styling */
		.main-product-image-container {
		    text-align: center;
		    padding: 10px;
		    background-color: #f8f9fa;
		    border-radius: 5px;
		}
		
		.main-product-image {
		    width: auto;
		    max-height: 450px; /* Adjust based on your requirements */
		   	min-height: 450px;
		    object-fit: contain;
		}
		
		/* Product thumbnails styling */
		.main-product-thumbnail {
		    max-width: 75%;
		    height: auto;
		    object-fit: cover;
		    padding: 5px;
		    background-color: #ffffff;
		    border: 1px solid #ddd;
		    border-radius: 5px;
		}
		
		.product-links-wap .carousel-item {
		    transition: transform 0.5s ease-in-out;
		}
		
		.product-links-wap .carousel-item img {
		    max-height: 150px; /* Adjust based on your requirements */
		   	min-height: 150px;
		    width: auto;
		    margin: auto;
		    object-fit: contain;
		}
		
		.carousel-control-prev,
		.carousel-control-next {
		    width: 5%;
		}
		
		.carousel-control-prev-icon,
		.carousel-control-next-icon {
		    background-color: #000;
		    border-radius: 50%;
		}
	</style>
    

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


    <!-- Open Content -->
    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
            
            
              <div class="col-lg-5 mt-5">
    <div class="card mb-3 main-product-image-container">
        <img class="card-img img-fluid main-product-image" src="assets/img/Productos/<%= juegoAux.getId() %>/1.png" onerror="this.onerror=null; this.src='assets/img/<%= juegoAux.getPlataforma() %>/1.png';" alt="Juego" id="product-detail">
    </div>
    <div class="row">
        <!--Start Controls-->
        <div class="col-1 align-self-center">
            <a href="#multi-item-example" role="button" data-bs-slide="prev">
                <i class="text-dark fas fa-chevron-left"></i>
                <span class="sr-only">Previous</span>
            </a>
        </div>
        <!--End Controls-->
        <!--Start Carousel Wrapper-->
        <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
            <!--Start Slides-->
            <div class="carousel-inner product-links-wap" role="listbox">

                <!-- Include the main cover image in the carousel -->
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-4 d-flex justify-content-center align-items-center">
                            <a href="#">
                                <img class="card-img img-fluid product-thumbnail" src="assets/img/Productos/<%= juegoAux.getId() %>/1.png" onerror="this.onerror=null; this.src='assets/img/<%= juegoAux.getPlataforma() %>/1.png';" alt="Juego">
                            </a>
                        </div>
                        <% 
                        int numImagenes = juegoAux.getNumImagenes();
                        for (int i = 2; i <= Math.min(numImagenes, 3); i++) {
                        %>
                        <div class="col-4 d-flex justify-content-center align-items-center">
                            <a href="#">
                                <img class="card-img img-fluid product-thumbnail" src="assets/img/Productos/<%= juegoAux.getId() %>/<%= i %>.png" alt="Product Image <%= i %>">
                            </a>
                        </div>
                        <% } %>
                    </div>
                </div>

                <% 
                int slideIndex = 1;
                for (int i = 4; i <= numImagenes; i += 3) {
                %>
                <div class="carousel-item">
                    <div class="row">
                        <% 
                        for (int j = 0; j < Math.min(3, numImagenes - (i - 1)); j++) {
                            int imageIndex = i + j;
                        %>
                        <div class="col-4 d-flex justify-content-center align-items-center">
                            <a href="#">
                                <img class="card-img img-fluid product-thumbnail" src="assets/img/Productos/<%= juegoAux.getId() %>/<%= imageIndex %>.png"  alt="Product Image <%= imageIndex %>">
                            </a>
                        </div>
                        <% } %>
                    </div>
                </div>
                <% 
                slideIndex++;
                } 
                %>

            </div>
            <!--End Slides-->
        </div>
        <!--End Carousel Wrapper-->
        <!--Start Controls-->
        <div class="col-1 align-self-center">
            <a href="#multi-item-example" role="button" data-bs-slide="next">
                <i class="text-dark fas fa-chevron-right"></i>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!--End Controls-->
    </div>
</div>
<!-- col end -->





                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                            <h1 class="h2"><b><%=juegoAux.getNombre()%></b></h1>
                            <p class="h3 py-2"><%=juegoAux.getPrecio()%> €</p>
                            <p class="py-2">
                                 <%for(int j=0; j<juegoAux.getValoracion(); j++){ %>
			                            <i class="text-warning fa fa-star"></i>
			                            <%} %>
			                            <%int estrellasRestantes = (5 - juegoAux.getValoracion());
			                            for(int j=0; j< estrellasRestantes; j++){%>
			                            <i class="text-muted fa fa-star"></i>
			                            <%} %>
                                <span class="list-inline-item text-dark">Rating <%=juegoAux.getValoracion()%></span>
                            </p>
                            </br>
                            <h6>Categoría: <%=juegoAux.getCategoria()%></h6>
                            </br>
                            <h6>Descripción:</h6>
                            <p><%=juegoAux.getDescripcionCorta()%></p>
                            

                            

                            <form action="#" method="GET">
                                <input type="hidden" name="product-title" value="Activewear">
                                <div class="row">
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item text-right">
                                                Cantidad
                                                <input type="hidden" name="product-quanity" id="product-quanity" value="1">
                                            </li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
                                            <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col d-grid">
                                        <button type="button" class="btn btn-success btn-lg" name="submit" value="buy">Comprar</button>
                                    </div>
                                    <div class="col d-grid">
                                        <button type="button"  class="btn btn-success btn-lg" name="submit" value="addtocard">Añadir al carro</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Content -->

    <!-- Start Article -->
    <section class="py-5">
        <div class="container">
            <div class="row text-left p-2 pb-3">
                <h4>Productos Relacionados</h4>
            </div>

            <!--Start Carousel Wrapper-->
            <div id="carousel-related-product">
				
				<%for(int i=0; i< juegos.size(); i++){ 
				
					if(juegos.get(i).getId() != juegoAux.getId()){
				%>
				
				<div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/Productos/<%=juegos.get(i).getId()%>/1.png" onerror="this.onerror=null; this.src='assets/img/<%= juegos.get(i).getPlataforma() %>/1.png';">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white mt-2" href="producto.jsp?idJuego=<%=juegos.get(i).getId()%>"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="producto.jsp?idJuego=<%=juegos.get(i).getId()%>" class="h3 text-decoration-none"><%=juegos.get(i).getNombre()%></a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li><%=juegos.get(i).getCategoria()%></li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
			                            <%for(int j=0; j<juegos.get(i).getValoracion(); j++){ %>
			                            <i class="text-warning fa fa-star"></i>
			                            <%} %>
			                            <%int estrellasFaltantes = (5 - juegos.get(i).getValoracion());
			                            for(int j=0; j< estrellasFaltantes; j++){%>
			                            <i class="text-muted fa fa-star"></i>
			                            <%} %>
			                    	</li>
                            </ul>
                            <p class="text-center mb-0"><%=juegos.get(i).getPrecio()%> €</p>
                        </div>
                    </div>
                </div>
				
				<%
					}					
				} 
				%>
            </div>


        </div>
    </section>
    <!-- End Article -->


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

    <!-- Start Slider Script -->
    <script src="assets/js/slick.min.js"></script>
    <script>
        $('#carousel-related-product').slick({
            infinite: false,
            arrows: false,
            slidesToShow: 5,
            slidesToScroll: 4,
            dots: true,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>
    <!-- End Slider Script -->

</body>

</html>