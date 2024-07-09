<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Clases.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operaciones</title>
</head>

<% 

BDController cbd = new BDController();

String origen = request.getParameter("tipo");

if(origen.equalsIgnoreCase("modificarCliente")){
	
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos");
	String dni = request.getParameter("dni");
	String direccion = request.getParameter("direccion");
	String cp = request.getParameter("cp");
	String provincia = request.getParameter("provincia");
	String id = request.getParameter("idCliente");
	
	int idCliente = Integer.parseInt(id);
	
	Cliente clienteAux = new Cliente(idCliente, nombre, apellidos, dni, direccion, cp, provincia);
	
	cbd.modificarCliente(clienteAux);
	
	response.sendRedirect("elegirCliente.jsp?mensaje=Modificacion del cliente realizada con exito!");
	
}else if(origen.equalsIgnoreCase("modificarJuego")){
	
	String nombre = request.getParameter("nombre");
	String categoria = request.getParameter("categoria");
	String plataforma = request.getParameter("plataforma");
	String descripcion = request.getParameter("descripcion");
	double precio = Double.parseDouble(request.getParameter("precio"));
	int numImagenes = Integer.parseInt(request.getParameter("imagenes"));
	int valoracion = Integer.parseInt(request.getParameter("valoracion"));
	String id = request.getParameter("idJuego");
	
	int idJuego = Integer.parseInt(id);
	
	Juego juegoAux = new Juego(idJuego, nombre, categoria, plataforma, descripcion, precio, numImagenes, valoracion);

	cbd.modificarJuego(juegoAux);
	
	response.sendRedirect("elegirProducto.jsp?mensaje=Modificacion del juego realizada con exito!");
	
}else if(origen.equalsIgnoreCase("altaCliente")){
	
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos");
	String dni = request.getParameter("dni");
	String direccion = request.getParameter("direccion");
	String cp = request.getParameter("cp");
	String provincia = request.getParameter("provincia");
	
	Cliente clienteAux = new Cliente(1, nombre, apellidos, dni, direccion, cp, provincia);
	
	cbd.altaCliente(clienteAux);
	
	response.sendRedirect("altaCliente.jsp?mensaje=Alta del cliente realizada con exito!");
	
}else if(origen.equalsIgnoreCase("altaJuego")){
	
	String nombre = request.getParameter("nombre");
	String categoria = request.getParameter("categoria");
	String plataforma = request.getParameter("plataforma");
	String descripcion = request.getParameter("descripcion");
	double precio = Double.parseDouble(request.getParameter("precio"));
	int numImagenes = 1;
	int valoracion = Integer.parseInt(request.getParameter("valoracion"));
	
	Juego juegoAux = new Juego(1, nombre, categoria, plataforma, descripcion, precio, numImagenes, valoracion);
	
	cbd.altaJuego(juegoAux);
	
	response.sendRedirect("altaJuego.jsp?mensaje=Alta del juego realizada con exito!");
	
}else if(origen.equalsIgnoreCase("bajaCliente")){
	
	String id = request.getParameter("cliente");
	int idCliete = Integer.parseInt(id);
		
	cbd.bajaCliente(idCliete);
	
	response.sendRedirect("bajaCliente.jsp?mensaje=Baja del cliente realizada con exito!");	
	
}else if(origen.equalsIgnoreCase("bajaJuego")){
	
	String id = request.getParameter("juego");
	int idJuego = Integer.parseInt(id);
		
	cbd.bajaJuego(idJuego);
	
	response.sendRedirect("bajaJuego.jsp?mensaje=Baja del juego realizada con exito!");	
	
}


%>

<body>

</body>
</html>