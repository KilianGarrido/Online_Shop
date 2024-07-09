<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Clases.*" %>

<!DOCTYPE html>
<html lang="en">

<%
BDController cbd = new BDController();

String plataforma;
try {
    plataforma = request.getParameter("plataforma");
    if (plataforma == null || plataforma.isEmpty()) {
        plataforma = "todos";
    }
} catch (Exception e) {
    plataforma = "todos";
}

String categoria;
try {
    categoria = request.getParameter("categoria");
    if (categoria == null || categoria.isEmpty()) {
        categoria = "todos";
    }
} catch (Exception e) {
    categoria = "todos";
}

String precio;
try {
    precio = request.getParameter("precio");
    if (precio == null || precio.isEmpty()) {
        precio = "todos";
    }
} catch (Exception e) {
    precio = "todos";
}

String valoracion;
try {
    valoracion = request.getParameter("valoracion");
    if (valoracion == null || valoracion.isEmpty()) {
        valoracion = "todos";
    }
} catch (Exception e) {
    valoracion = "todos";
}

ArrayList<Juego> juegos = new ArrayList<Juego>();
int cantJuegosAccion = 0;
int cantJuegosAventura = 0;
int cantJuegosBaile = 0;
int cantJuegosCarreras = 0;
int cantJuegosDeportes = 0;
int cantJuegosLucha = 0;
int cantJuegosPlataforma = 0;
int cantJuegosShooter = 0;
int cantJuegosTerror = 0;

int cantJuegosPrecio1_20 = 0;
int cantJuegosPrecio21_30 = 0;
int cantJuegosPrecio31_40 = 0;
int cantJuegosPrecio41_50 = 0;
int cantJuegosPrecio51_60 = 0;
int cantJuegosPrecio61_70 = 0;

int cantJuegosValoracion0 = 0;
int cantJuegosValoracion1 = 0;
int cantJuegosValoracion2 = 0;
int cantJuegosValoracion3 = 0;
int cantJuegosValoracion4 = 0;
int cantJuegosValoracion5 = 0;

String[] precioRango;
int precioMin = 0;
int precioMax = 0;

if (!precio.equals("todos")) {
    precioRango = precio.split("-");
    precioMin = Integer.parseInt(precioRango[0]);
    precioMax = Integer.parseInt(precioRango[1]);
}

switch (plataforma){
case "todos":{
    if (!categoria.equals("todos")) {
        if (!precio.equals("todos")) {
            if (!valoracion.equals("todos")) {
                juegos = cbd.juegosPorCategoriaPrecioYValoracion(categoria, precioMin, precioMax, Integer.parseInt(valoracion));
            } else {
                juegos = cbd.juegosPorCategoriaYPrecio(categoria, precioMin, precioMax);
            }
        } else if (!valoracion.equals("todos")) {
            juegos = cbd.juegosPorCategoriaYValoracion(categoria, Integer.parseInt(valoracion));
        } else {
            juegos = cbd.juegosPorCategoria(categoria);
        }
    } else if (!precio.equals("todos")) {
        if (!valoracion.equals("todos")) {
            juegos = cbd.juegosPorPrecioYValoracion(precioMin, precioMax, Integer.parseInt(valoracion));
        } else {
            juegos = cbd.juegosPorPrecio(precioMin, precioMax);
        }
    } else if (!valoracion.equals("todos")) {
        juegos = cbd.juegosPorValoracion(Integer.parseInt(valoracion));
    } else {
        juegos = cbd.todosJuegos();
    }
    break;
}
case "PS5":{
    if (!categoria.equals("todos")) {
        if (!precio.equals("todos")) {
            if (!valoracion.equals("todos")) {
                juegos = cbd.juegosPorCategoriaPrecioPlataformaYValoracion(categoria, precioMin, precioMax, "PS5", Integer.parseInt(valoracion));
            } else {
                juegos = cbd.juegosPorCategoriaYPrecioYPlataforma(categoria, precioMin, precioMax, "PS5");
            }
        } else if (!valoracion.equals("todos")) {
            juegos = cbd.juegosPorCategoriaYValoracionYPlataforma(categoria, Integer.parseInt(valoracion), "PS5");
        } else {
            juegos = cbd.juegosPorCategoriaYPlataforma(categoria, "PS5");
        }
    } else if (!precio.equals("todos")) {
        if (!valoracion.equals("todos")) {
            juegos = cbd.juegosPorPrecioYPlataformaYValoracion(precioMin, precioMax, "PS5", Integer.parseInt(valoracion));
        } else {
            juegos = cbd.juegosPorPrecioYPlataforma(precioMin, precioMax, "PS5");
        }
    } else if (!valoracion.equals("todos")) {
        juegos = cbd.juegosPorValoracionYPlataforma(Integer.parseInt(valoracion), "PS5");
    } else {
        juegos = cbd.juegosPs5();
    }
    break;
}
case "Xbox":{
    if (!categoria.equals("todos")) {
        if (!precio.equals("todos")) {
            if (!valoracion.equals("todos")) {
                juegos = cbd.juegosPorCategoriaPrecioPlataformaYValoracion(categoria, precioMin, precioMax, "Xbox", Integer.parseInt(valoracion));
            } else {
                juegos = cbd.juegosPorCategoriaYPrecioYPlataforma(categoria, precioMin, precioMax, "Xbox");
            }
        } else if (!valoracion.equals("todos")) {
            juegos = cbd.juegosPorCategoriaYValoracionYPlataforma(categoria, Integer.parseInt(valoracion), "Xbox");
        } else {
            juegos = cbd.juegosPorCategoriaYPlataforma(categoria, "Xbox");
        }
    } else if (!precio.equals("todos")) {
        if (!valoracion.equals("todos")) {
            juegos = cbd.juegosPorPrecioYPlataformaYValoracion(precioMin, precioMax, "Xbox", Integer.parseInt(valoracion));
        } else {
            juegos = cbd.juegosPorPrecioYPlataforma(precioMin, precioMax, "Xbox");
        }
    } else if (!valoracion.equals("todos")) {
        juegos = cbd.juegosPorValoracionYPlataforma(Integer.parseInt(valoracion), "Xbox");
    } else {
        juegos = cbd.juegosXbox();
    }
    break;
}
case "Switch":{
    if (!categoria.equals("todos")) {
        if (!precio.equals("todos")) {
            if (!valoracion.equals("todos")) {
                juegos = cbd.juegosPorCategoriaPrecioPlataformaYValoracion(categoria, precioMin, precioMax, "Switch", Integer.parseInt(valoracion));
            } else {
                juegos = cbd.juegosPorCategoriaYPrecioYPlataforma(categoria, precioMin, precioMax, "Switch");
            }
        } else if (!valoracion.equals("todos")) {
            juegos = cbd.juegosPorCategoriaYValoracionYPlataforma(categoria, Integer.parseInt(valoracion), "Switch");
        } else {
            juegos = cbd.juegosPorCategoriaYPlataforma(categoria, "Switch");
        }
    } else if (!precio.equals("todos")) {
        if (!valoracion.equals("todos")) {
            juegos = cbd.juegosPorPrecioYPlataformaYValoracion(precioMin, precioMax, "Switch", Integer.parseInt(valoracion));
        } else {
            juegos = cbd.juegosPorPrecioYPlataforma(precioMin, precioMax, "Switch");
        }
    } else if (!valoracion.equals("todos")) {
        juegos = cbd.juegosPorValoracionYPlataforma(Integer.parseInt(valoracion), "Switch");
    } else {
        juegos = cbd.juegosSwitch();
    }
    break;
}
}

if(plataforma.equalsIgnoreCase("todos")){
	cantJuegosAccion = cbd.cantidadJuegosCategoria("Acción");
	cantJuegosAventura = cbd.cantidadJuegosCategoria("Aventura");
	cantJuegosBaile = cbd.cantidadJuegosCategoria("Baile");
	cantJuegosCarreras = cbd.cantidadJuegosCategoria("Carreras");
	cantJuegosDeportes = cbd.cantidadJuegosCategoria("Deportes");
	cantJuegosLucha = cbd.cantidadJuegosCategoria("Lucha");
	cantJuegosPlataforma = cbd.cantidadJuegosCategoria("Plataforma");
	cantJuegosShooter = cbd.cantidadJuegosCategoria("Shooter");
	cantJuegosTerror = cbd.cantidadJuegosCategoria("Terror");
	
	cantJuegosPrecio1_20 = cbd.juegosPorPrecio(1, 20).size();
	cantJuegosPrecio21_30 = cbd.juegosPorPrecio(21, 30).size();
	cantJuegosPrecio31_40 = cbd.juegosPorPrecio(31, 40).size();
	cantJuegosPrecio41_50 = cbd.juegosPorPrecio(41, 50).size();
	cantJuegosPrecio51_60 = cbd.juegosPorPrecio(51, 60).size();
	cantJuegosPrecio61_70 = cbd.juegosPorPrecio(61, 70).size();
	
	cantJuegosValoracion0 = cbd.juegosPorValoracion(0).size();
	cantJuegosValoracion1 = cbd.juegosPorValoracion(1).size();
	cantJuegosValoracion2 = cbd.juegosPorValoracion(2).size();
	cantJuegosValoracion3 = cbd.juegosPorValoracion(3).size();
	cantJuegosValoracion4 = cbd.juegosPorValoracion(4).size();
	cantJuegosValoracion5 = cbd.juegosPorValoracion(5).size();
}else{
	cantJuegosAccion = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Acción");
	cantJuegosAventura = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Aventura");
	cantJuegosBaile = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Baile");
	cantJuegosCarreras = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Carreras");
	cantJuegosDeportes = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Deportes");
	cantJuegosLucha = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Lucha");
	cantJuegosPlataforma = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Plataforma");
	cantJuegosShooter = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Shooter");
	cantJuegosTerror = cbd.cantidadJuegosCategoriaYPlataforma(plataforma, "Terror");

	cantJuegosPrecio1_20 = cbd.juegosPorPrecioYPlataforma(1, 20, plataforma).size();
	cantJuegosPrecio21_30 = cbd.juegosPorPrecioYPlataforma(21, 30, plataforma).size();
	cantJuegosPrecio31_40 = cbd.juegosPorPrecioYPlataforma(31, 40, plataforma).size();
	cantJuegosPrecio41_50 = cbd.juegosPorPrecioYPlataforma(41, 50, plataforma).size();
	cantJuegosPrecio51_60 = cbd.juegosPorPrecioYPlataforma(51, 60, plataforma).size();
	cantJuegosPrecio61_70 = cbd.juegosPorPrecioYPlataforma(61, 70, plataforma).size();

	cantJuegosValoracion0 = cbd.juegosPorValoracionYPlataforma(0, plataforma).size();
	cantJuegosValoracion1 = cbd.juegosPorValoracionYPlataforma(1, plataforma).size();
	cantJuegosValoracion2 = cbd.juegosPorValoracionYPlataforma(2, plataforma).size();
	cantJuegosValoracion3 = cbd.juegosPorValoracionYPlataforma(3, plataforma).size();
	cantJuegosValoracion4 = cbd.juegosPorValoracionYPlataforma(4, plataforma).size();
	cantJuegosValoracion5 = cbd.juegosPorValoracionYPlataforma(5, plataforma).size();
}


%>

<head>
    <title>ZgameK - Productos</title>
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


    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">Filtrar por</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            <b>Categoría</b>
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Acción&plataforma=<%=plataforma%>">Acción    </a><p style="display:inline; color: gray;">(<%=cantJuegosAccion%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Aventura&plataforma=<%=plataforma%>">Aventura    </a><p style="display:inline; color: gray;">(<%=cantJuegosAventura%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Baile&plataforma=<%=plataforma%>">Baile    </a><p style="display:inline; color: gray;">(<%=cantJuegosBaile%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Carreras&plataforma=<%=plataforma%>">Carreras    </a><p style="display:inline; color: gray;">(<%=cantJuegosCarreras%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Deportes&plataforma=<%=plataforma%>">Deportes    </a><p style="display:inline; color: gray;">(<%=cantJuegosDeportes%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Lucha&plataforma=<%=plataforma%>">Lucha    </a><p style="display:inline; color: gray;">(<%=cantJuegosLucha%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Plataforma&plataforma=<%=plataforma%>">Plataforma    </a><p style="display:inline; color: gray;">(<%=cantJuegosPlataforma%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Shooter&plataforma=<%=plataforma%>">Shooter    </a><p style="display:inline; color: gray;">(<%=cantJuegosShooter%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?categoria=Terror&plataforma=<%=plataforma%>">Terror    </a><p style="display:inline; color: gray;">(<%=cantJuegosTerror%>)</p></li>
                        </ul>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            <b>Precio</b>
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="shop.jsp?precio=1-20&plataforma=<%=plataforma%>">1-20  €    </a><p style="display:inline; color: gray;">(<%=cantJuegosPrecio1_20%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?precio=21-30&plataforma=<%=plataforma%>">21-30  €    </a><p style="display:inline; color: gray;">(<%=cantJuegosPrecio21_30%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?precio=31-40&plataforma=<%=plataforma%>">31-40  €    </a><p style="display:inline; color: gray;">(<%=cantJuegosPrecio31_40%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?precio=41-50&plataforma=<%=plataforma%>">41-50  €    </a><p style="display:inline; color: gray;">(<%=cantJuegosPrecio41_50%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?precio=51-60&plataforma=<%=plataforma%>">51-60  €    </a><p style="display:inline; color: gray;">(<%=cantJuegosPrecio51_60%>)</p></li>
                            <li><a class="text-decoration-none" href="shop.jsp?precio=61-70&plataforma=<%=plataforma%>">61-70  €    </a><p style="display:inline; color: gray;">(<%=cantJuegosPrecio61_70%>)</p></li>
                        </ul>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            <b>Valoración</b>
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseThree" class="collapse list-unstyled pl-3">
                            <li><a href="shop.jsp?valoracion=0&plataforma=<%=plataforma%>" style="text-decoration: none;">
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>    
                                </a><p style="display:inline; color: gray;">(<%=cantJuegosValoracion0%>)</p></li>
                            </li>
                            <li><a href="shop.jsp?valoracion=1&plataforma=<%=plataforma%>" style="text-decoration: none;">
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>    
                                </a><p style="display:inline; color: gray;">(<%=cantJuegosValoracion1%>)</p></li>
                            </li>
                            <li><a href="shop.jsp?valoracion=2&plataforma=<%=plataforma%>" style="text-decoration: none;">
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>    
                                </a><p style="display:inline; color: gray;">(<%=cantJuegosValoracion2%>)</p></li>
                            </li>
                            <li><a href="shop.jsp?valoracion=3&plataforma=<%=plataforma%>" style="text-decoration: none;">
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-muted"></i>
                                    <i class="fa fa-star text-muted"></i>    
                                </a><p style="display:inline; color: gray;">(<%=cantJuegosValoracion3%>)</p></li>
                            </li>
                            <li><a href="shop.jsp?valoracion=4&plataforma=<%=plataforma%>" style="text-decoration: none;">
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-muted"></i>    
                                </a><p style="display:inline; color: gray;">(<%=cantJuegosValoracion4%>)</p></li>
                            </li>
                            <li><a href="shop.jsp?valoracion=5&plataforma=<%=plataforma%>" style="text-decoration: none;">
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                    <i class="fa fa-star text-warning"></i>
                                </a><p style="display:inline; color: gray;">(<%=cantJuegosValoracion5%>)</p></li>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
			    <div class="row">
			        <% 
			        int pageSize = 9; // Tamaño de la página
			        int totalPages = (int) Math.ceil(juegos.size() / (double) pageSize); // Total de páginas
			        int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1; // Página actual
			        
			        int startIndex = (currentPage - 1) * pageSize; // Índice inicial de los productos a mostrar
			        int endIndex = Math.min(startIndex + pageSize, juegos.size()); // Índice final de los productos a mostrar
			        
			        for(int i = startIndex; i < endIndex; i++) { 
			        %>
			        <div class="col-md-4">
			            <div class="card mb-4 product-wap rounded-0">
			                <div class="card rounded-0" >
			                    <img class="card-img rounded-0 img-fluid" src="assets/img/Productos/<%=juegos.get(i).getId()%>/1.png" onerror="this.onerror=null; this.src='assets/img/<%= juegos.get(i).getPlataforma()%>/1.png';">
			                    <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
			                        <ul class="list-unstyled">
			                            <li><a class="btn btn-success text-white mt-2" href="producto.jsp?idJuego=<%=juegos.get(i).getId()%>"><i class="far fa-eye"></i></a></li>
			                        </ul>
			                    </div>
			                </div>
			                <div class="card-body">
			                    <a href="producto.jsp?idJuego=<%=juegos.get(i).getId()%>" class="h3 text-decoration-none"><b><%=juegos.get(i).getNombre()%></b></a>
			                    <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
			                        <li><%=juegos.get(i).getCategoria()%></li>
			                    </ul>
			                    <ul class="list-unstyled d-flex justify-content-center mb-1">
			                        <li>
			                            <%for(int j=0; j<juegos.get(i).getValoracion(); j++){ %>
			                            <i class="text-warning fa fa-star"></i>
			                            <%} %>
			                            <%int estrellasRestantes = (5 - juegos.get(i).getValoracion());
			                            for(int j=0; j< estrellasRestantes; j++){%>
			                            <i class="text-muted fa fa-star"></i>
			                            <%} %>
			                        </li>
			                    </ul>
			                    <p class="text-center mb-0"><%=juegos.get(i).getPrecio()%> €</p>
			                </div>
			            </div>
			        </div>
			        <% } %>
			    </div>
			    
			    <!-- Paginación -->
			    <div class="row">
			        <ul class="pagination pagination-lg justify-content-end">
			            <%-- Página anterior --%>
			            <% if(currentPage > 1) { %>
			            <li class="page-item">
			                <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="?page=<%=currentPage - 1%>&plataforma=<%=plataforma%>&precio=<%=precio%>&categoria=<%=categoria%>&valoracion=<%=valoracion%>">Anterior</a>
			            </li>
			            <% } %>
			            <%-- Páginas --%>
			            <% for(int i = 1; i <= totalPages; i++) { %>
			            <li class="page-item <%= i == currentPage ? "active" : "" %>">
			                <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="?page=<%=i%>&plataforma=<%=plataforma%>&precio=<%=precio%>&categoria=<%=categoria%>&valoracion=<%=valoracion%>"><%=i%></a>
			            </li>
			            <% } %>
			            <%-- Página siguiente --%>
			            <% if(currentPage < totalPages) { %>
			            <li class="page-item">
			                <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="?page=<%=currentPage + 1%>&plataforma=<%=plataforma%>&precio=<%=precio%>&categoria=<%=categoria%>&valoracion=<%=valoracion%>">Siguiente</a>
			            </li>
			            <% } %>
			        </ul>
			    </div>
			</div>
			 
                    
               
            </div>

        </div>
    </div>
    <!-- End Content -->

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