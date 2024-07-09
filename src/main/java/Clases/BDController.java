package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class BDController {
	private Connection conexion;
	
	public BDController() {
		super();
		// TODO Auto-generated constructor stub
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			this.conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/zgamek?characterEncoding=UTF-8","root","");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en el constructor BDController" + e.getMessage());
		}
	}

	public BDController(Connection conexion) {
		super();
		this.conexion = conexion;
	}

	/**
	 * @return the conexion
	 */
	public Connection getConexion() {
		return conexion;
	}

	/**
	 * @param conexion the conexion to set
	 */
	public void setConexion(Connection conexion) {
		this.conexion = conexion;
	}

	public boolean existeDatoEnTabla(String tabla, String campo, String dato) {
		boolean existe = false;
		
		String sql = "SELECT * FROM " + tabla + " WHERE " + campo + " LIKE '" + dato + "'";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while (rs.next()) {
				existe = true;
			}
			myStatement.close();
			rs.close();			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return existe;
	}
	
	public ArrayList<Juego> todosJuegos() {
		ArrayList<Juego> juegos = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego ORDER BY nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegos.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegos;
	}
	
	public ArrayList<Juego> juegosPs5() {
		ArrayList<Juego> juegosPs5 = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE plataforma like 'PS5' ORDER BY nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosPs5.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosPs5;
	}
	
	public ArrayList<Juego> juegosXbox() {
		ArrayList<Juego> juegosXbox = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE plataforma like 'Xbox' ORDER BY nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosXbox.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosXbox;
	}
	
	public ArrayList<Juego> juegosSwitch() {
		ArrayList<Juego> juegosSwitch = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE plataforma like 'Switch' ORDER BY nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosSwitch.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosSwitch;
	}
	
	public Juego dameJuego (int id) {
		Juego aux = new Juego();
		
		String sql = "SELECT * FROM juego WHERE id = " + id;
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return aux;
	}
	
	public ArrayList<Juego> juegosMasVendidos (){
		ArrayList<Juego> juegosMasVendidos = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego "
				+ "ORDER BY (SELECT COUNT(*) FROM lineaVenta WHERE juego.id = lineaVenta.idJuego) "
				+ "DESC LIMIT 6;";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosMasVendidos.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosMasVendidos;
	}
	
	public ArrayList<Juego> juegosPorCategoria(String cat){
		ArrayList<Juego> juegosPorCategoria = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE categoria LIKE '" + cat + "' GROUP BY juego.id ORDER BY nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosPorCategoria.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosPorCategoria;
	}
	
	public ArrayList<Juego> juegosPorCategoriaRandom(String cat){
		ArrayList<Juego> juegosPorCategoria = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE categoria LIKE '" + cat + "' GROUP BY juego.id ORDER BY RAND()";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosPorCategoria.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosPorCategoria;
	}
	
	public ArrayList<Juego> juegosPorCategoriaYPlataforma(String cat, String plataforma){
		ArrayList<Juego> juegosPorCategoria = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego "
				+ "WHERE categoria LIKE '" + cat + "' "
						+ "AND plataforma like '" + plataforma +  "' "
								+ "GROUP BY juego.id ORDER BY nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosPorCategoria.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosPorCategoria;
	}
	
	public int cantidadJuegosCategoria(String categoria){
		int count = 0;
		
		String sql = "SELECT Count(juego.id) AS 'cantidad' FROM juego WHERE juego.categoria LIKE '" + categoria + "'";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				count = rs.getInt("cantidad");
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int cantidadJuegosCategoriaYPlataforma(String plataforma, String categoria){
		int count = 0;
		
		String sql = "SELECT Count(juego.id) AS 'cantidad' FROM juego WHERE juego.categoria LIKE '" + categoria + "' AND plataforma LIKE '" + plataforma + "'";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				count = rs.getInt("cantidad");
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public ArrayList<Juego> juegosPorPrecio(double precio1, double precio2){
		ArrayList<Juego> juegosPorPrecio = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE precio BETWEEN " + precio1 + " AND " + precio2 + " GROUP BY juego.id ORDER BY precio";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosPorPrecio.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosPorPrecio;
	} 
	
	public ArrayList<Juego> juegosPorPrecioYPlataforma(double precio1, double precio2, String plataforma){
		ArrayList<Juego> juegosPorPrecio = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE precio BETWEEN " + precio1 + " AND " + precio2 + " AND plataforma LIKE '" + plataforma + "' GROUP BY juego.id ORDER BY precio, nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosPorPrecio.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosPorPrecio;
	}
	
	public ArrayList<Juego> juegosPorValoracion(int valoracion){
		ArrayList<Juego> juegosPorValoracion = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE valoracion = " + valoracion + " GROUP BY juego.id ORDER BY nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosPorValoracion.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosPorValoracion;
	}
	
	public ArrayList<Juego> juegosPorValoracionYPlataforma(int valoracion, String plataforma){
		ArrayList<Juego> juegosPorValoracion = new ArrayList<Juego>();
		
		String sql = "SELECT * FROM juego WHERE valoracion = " + valoracion + " AND plataforma LIKE '" + plataforma + "' GROUP BY juego.id ORDER BY nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Juego aux = new Juego( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("categoria"),
						rs.getString("plataforma"),
						rs.getString("descripcionCorta"), 
						rs.getDouble("precio"),
						rs.getInt("numImagenes"),
						rs.getInt("valoracion"));
				juegosPorValoracion.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return juegosPorValoracion;
	}
	
	public ArrayList<Juego> juegosPorCategoriaYPrecio(String cat, int precio1, int precio2) {
	    ArrayList<Juego> juegosPorCategoriaYPrecio = new ArrayList<Juego>();
	    
	    String sql = "SELECT * FROM juego WHERE categoria LIKE '" + cat + "' AND precio BETWEEN " + precio1 + " AND " + precio2 + " GROUP BY juego.id";
	    
	    try {
	        Statement myStatement = this.conexion.createStatement();
	        ResultSet rs = myStatement.executeQuery(sql);
	        while(rs.next()) {
	            Juego aux = new Juego(rs.getInt("id"),
	                    rs.getString("nombre"),
	                    rs.getString("categoria"),
	                    rs.getString("plataforma"),
	                    rs.getString("descripcionCorta"), 
	                    rs.getDouble("precio"),
	                    rs.getInt("numImagenes"),
	                    rs.getInt("valoracion"));
	            juegosPorCategoriaYPrecio.add(aux);
	        }
	        myStatement.close();
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return juegosPorCategoriaYPrecio;
	}

	public ArrayList<Juego> juegosPorCategoriaYPrecioYPlataforma(String cat, int precio1, int precio2, String plataforma) {
	    ArrayList<Juego> juegosPorCategoriaYPrecioYPlataforma = new ArrayList<Juego>();
	    
	    String sql = "SELECT * FROM juego WHERE categoria LIKE '" + cat + "' AND precio BETWEEN " + precio1 + " AND " + precio2 + " AND plataforma LIKE '" + plataforma + "' GROUP BY juego.id";
	    
	    try {
	        Statement myStatement = this.conexion.createStatement();
	        ResultSet rs = myStatement.executeQuery(sql);
	        while(rs.next()) {
	            Juego aux = new Juego(rs.getInt("id"),
	                    rs.getString("nombre"),
	                    rs.getString("categoria"),
	                    rs.getString("plataforma"),
	                    rs.getString("descripcionCorta"), 
	                    rs.getDouble("precio"),
	                    rs.getInt("numImagenes"),
	                    rs.getInt("valoracion"));
	            juegosPorCategoriaYPrecioYPlataforma.add(aux);
	        }
	        myStatement.close();
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return juegosPorCategoriaYPrecioYPlataforma;
	}
	
	public ArrayList<Juego> juegosPorCategoriaPrecioYValoracion(String categoria, int precioMin, int precioMax, int valoracion) {
	    ArrayList<Juego> juegosPorCategoriaPrecioYValoracion = new ArrayList<Juego>();
	    
	    String sql = "SELECT * FROM juego WHERE categoria = ? AND precio BETWEEN ? AND ? AND valoracion = ? GROUP BY juego.id";
	    
	    try {
	        PreparedStatement myStatement = this.conexion.prepareStatement(sql);
	        myStatement.setString(1, categoria);
	        myStatement.setInt(2, precioMin);
	        myStatement.setInt(3, precioMax);
	        myStatement.setInt(4, valoracion);
	        ResultSet rs = myStatement.executeQuery();
	        while (rs.next()) {
	            Juego aux = new Juego(rs.getInt("id"),
	                    rs.getString("nombre"),
	                    rs.getString("categoria"),
	                    rs.getString("plataforma"),
	                    rs.getString("descripcionCorta"),
	                    rs.getDouble("precio"),
	                    rs.getInt("numImagenes"),
	                    rs.getInt("valoracion"));
	            juegosPorCategoriaPrecioYValoracion.add(aux);
	        }
	        myStatement.close();
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return juegosPorCategoriaPrecioYValoracion;
	}
	
	public ArrayList<Juego> juegosPorCategoriaYValoracion(String categoria, int valoracion) {
	    ArrayList<Juego> juegos = new ArrayList<Juego>();
	    
	    String sql = "SELECT * FROM juego WHERE categoria = ? AND valoracion = ?";
	    
	    try {
	        PreparedStatement myStatement = this.conexion.prepareStatement(sql);
	        myStatement.setString(1, categoria);
	        myStatement.setInt(2, valoracion);
	        ResultSet rs = myStatement.executeQuery();
	        while (rs.next()) {
	            Juego aux = new Juego(rs.getInt("id"),
	                    rs.getString("nombre"),
	                    rs.getString("categoria"),
	                    rs.getString("plataforma"),
	                    rs.getString("descripcionCorta"),
	                    rs.getDouble("precio"),
	                    rs.getInt("numImagenes"),
	                    rs.getInt("valoracion"));
	            juegos.add(aux);
	        }
	        myStatement.close();
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return juegos;
	}

	public ArrayList<Juego> juegosPorPrecioYValoracion(int precioMin, int precioMax, int valoracion) {
	    ArrayList<Juego> juegos = new ArrayList<Juego>();
	    
	    String sql = "SELECT * FROM juego WHERE precio BETWEEN ? AND ? AND valoracion = ?";
	    
	    try {
	        PreparedStatement myStatement = this.conexion.prepareStatement(sql);
	        myStatement.setInt(1, precioMin);
	        myStatement.setInt(2, precioMax);
	        myStatement.setInt(3, valoracion);
	        ResultSet rs = myStatement.executeQuery();
	        while (rs.next()) {
	            Juego aux = new Juego(rs.getInt("id"),
	                    rs.getString("nombre"),
	                    rs.getString("categoria"),
	                    rs.getString("plataforma"),
	                    rs.getString("descripcionCorta"),
	                    rs.getDouble("precio"),
	                    rs.getInt("numImagenes"),
	                    rs.getInt("valoracion"));
	            juegos.add(aux);
	        }
	        myStatement.close();
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return juegos;
	}

	public ArrayList<Juego> juegosPorCategoriaPrecioPlataformaYValoracion(String categoria, int precioMin, int precioMax, String plataforma, int valoracion) {
	    ArrayList<Juego> juegos = new ArrayList<Juego>();
	    
	    String sql = "SELECT * FROM juego WHERE categoria = ? AND precio BETWEEN ? AND ? AND plataforma = ? AND valoracion = ?";
	    
	    try {
	        PreparedStatement myStatement = this.conexion.prepareStatement(sql);
	        myStatement.setString(1, categoria);
	        myStatement.setInt(2, precioMin);
	        myStatement.setInt(3, precioMax);
	        myStatement.setString(4, plataforma);
	        myStatement.setInt(5, valoracion);
	        ResultSet rs = myStatement.executeQuery();
	        while (rs.next()) {
	            Juego aux = new Juego(rs.getInt("id"),
	                    rs.getString("nombre"),
	                    rs.getString("categoria"),
	                    rs.getString("plataforma"),
	                    rs.getString("descripcionCorta"),
	                    rs.getDouble("precio"),
	                    rs.getInt("numImagenes"),
	                    rs.getInt("valoracion"));
	            juegos.add(aux);
	        }
	        myStatement.close();
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return juegos;
	}

	public ArrayList<Juego> juegosPorCategoriaYValoracionYPlataforma(String categoria, int valoracion, String plataforma) {
	    ArrayList<Juego> juegos = new ArrayList<Juego>();
	    
	    String sql = "SELECT * FROM juego WHERE categoria = ? AND valoracion = ? AND plataforma = ?";
	    
	    try {
	        PreparedStatement myStatement = this.conexion.prepareStatement(sql);
	        myStatement.setString(1, categoria);
	        myStatement.setInt(2, valoracion);
	        myStatement.setString(3, plataforma);
	        ResultSet rs = myStatement.executeQuery();
	        while (rs.next()) {
	            Juego aux = new Juego(rs.getInt("id"),
	                    rs.getString("nombre"),
	                    rs.getString("categoria"),
	                    rs.getString("plataforma"),
	                    rs.getString("descripcionCorta"),
	                    rs.getDouble("precio"),
	                    rs.getInt("numImagenes"),
	                    rs.getInt("valoracion"));
	            juegos.add(aux);
	        }
	        myStatement.close();
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return juegos;
	}

	public ArrayList<Juego> juegosPorPrecioYPlataformaYValoracion(int precioMin, int precioMax, String plataforma, int valoracion) {
	    ArrayList<Juego> juegos = new ArrayList<Juego>();
	    
	    String sql = "SELECT * FROM juego WHERE precio BETWEEN ? AND ? AND plataforma = ? AND valoracion = ?";
	    
	    try {
	        PreparedStatement myStatement = this.conexion.prepareStatement(sql);
	        myStatement.setInt(1, precioMin);
	        myStatement.setInt(2, precioMax);
	        myStatement.setString(3, plataforma);
	        myStatement.setInt(4, valoracion);
	        ResultSet rs = myStatement.executeQuery();
	        while (rs.next()) {
	            Juego aux = new Juego(rs.getInt("id"),
	                    rs.getString("nombre"),
	                    rs.getString("categoria"),
	                    rs.getString("plataforma"),
	                    rs.getString("descripcionCorta"),
	                    rs.getDouble("precio"),
	                    rs.getInt("numImagenes"),
	                    rs.getInt("valoracion"));
	            juegos.add(aux);
	        }
	        myStatement.close();
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return juegos;
	}

	public ArrayList<Cliente> todosClientes() {
		ArrayList<Cliente> clientes = new ArrayList<Cliente>();
		
		String sql = "SELECT * FROM cliente ORDER BY apellidos, nombre";
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				Cliente aux = new Cliente( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("apellidos"),
						rs.getString("dni"),
						rs.getString("direccion"), 
						rs.getString("cp"),
						rs.getString("provincia"));
				clientes.add(aux);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return clientes;
	}
	
	public Cliente dameCliente(int id) {
		Cliente clienteAux = new Cliente();
		
		String sql = "SELECT * FROM cliente WHERE id = " + id;
		
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while(rs.next()) {
				clienteAux = new Cliente( rs.getInt("id"),
						rs.getString("nombre"),
						rs.getString("apellidos"),
						rs.getString("dni"),
						rs.getString("direccion"), 
						rs.getString("cp"),
						rs.getString("provincia"));
				
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return clienteAux;
	}
	
	public ArrayList<Venta> todasVentas() {
        ArrayList<Venta> ventas = new ArrayList<Venta>();

        String sql = "SELECT * FROM venta";

        try {
            Statement myStatement = this.conexion.createStatement();
            ResultSet rs = myStatement.executeQuery(sql);
            while(rs.next()) {
                Venta aux = new Venta( rs.getInt("idVenta"),
                        rs.getDate("fechaHora"),
                        rs.getInt("idCliente"),
                        rs.getDouble("precioVenta")
                        );
                ventas.add(aux);
            }
            myStatement.close();
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return ventas;
    }
	
	public Venta dameVenta(int idVenta) {
        Venta aux = new Venta();

        String sql = "SELECT * FROM venta WHERE idVenta=" + idVenta;

        try {
            Statement myStatement = this.conexion.createStatement();
            ResultSet rs = myStatement.executeQuery(sql);
            while(rs.next()) {
                aux = new Venta( rs.getInt("idVenta"),
                        rs.getDate("fechaHora"),
                        rs.getInt("idCliente"),
                        rs.getDouble("precioVenta")
                        );
            }
            myStatement.close();
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return aux;
    }
	
	public ArrayList<LineaVenta> todasLineasVentaDeVenta(int idVenta) {
        ArrayList<LineaVenta> lVentas = new ArrayList<LineaVenta>();

        String sql = "SELECT * FROM LineaVenta WHERE idVenta=" + idVenta;

        try {
            Statement myStatement = this.conexion.createStatement();
            ResultSet rs = myStatement.executeQuery(sql);
            while(rs.next()) {
                LineaVenta aux = new LineaVenta( rs.getInt("idLVenta"),
                        rs.getInt("idVenta"),
                        rs.getInt("idJuego"),
                        rs.getInt("unidades")
                        );
                lVentas.add(aux);
            }
            myStatement.close();
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return lVentas;
    }
	
	public ArrayList<Venta> todasVentasDeCliente(int idCliente) {
        ArrayList<Venta> ventas = new ArrayList<Venta>();

        String sql = "SELECT * FROM venta WHERE idCliente=" + idCliente;

        try {
            Statement myStatement = this.conexion.createStatement();
            ResultSet rs = myStatement.executeQuery(sql);
            while(rs.next()) {
                Venta aux = new Venta( rs.getInt("idVenta"),
                        rs.getDate("fechaHora"),
                        rs.getInt("idCliente"),
                        rs.getDouble("precioVenta")
                        );
                ventas.add(aux);
            }
            myStatement.close();
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return ventas;
    }
	
	public void modificarCliente(Cliente cli) {
    	String sql = "UPDATE cliente "
    			+ "SET nombre = '" + cli.getNombre() + "', apellidos = '" + cli.getApellidos() + "', "
    					+ "dni = '" + cli.getDni() + "', direccion = '" + cli.getDireccion() + "', cp = '" + cli.getCp() + "', provincia = '" + cli.getProvincia() +"' " 
    					+ "WHERE id = " + cli.getId(); 
    	
    	Statement myStatement;
		try {
			myStatement = this.conexion.createStatement();
			myStatement.executeUpdate(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	
	public void modificarJuego(Juego jue) {
	    String sql = "UPDATE juego "
	            + "SET nombre = ?, categoria = ?, plataforma = ?, descripcionCorta = ?, precio = ?, numImagenes = ?, valoracion = ? " 
	            + "WHERE id = ?";
	    
	    try (PreparedStatement preparedStatement = this.conexion.prepareStatement(sql)) {
	        preparedStatement.setString(1, jue.getNombre());
	        preparedStatement.setString(2, jue.getCategoria());
	        preparedStatement.setString(3, jue.getPlataforma());
	        preparedStatement.setString(4, jue.getDescripcionCorta());
	        preparedStatement.setDouble(5, jue.getPrecio());
	        preparedStatement.setInt(6, jue.getNumImagenes());
	        preparedStatement.setInt(7, jue.getValoracion());
	        preparedStatement.setInt(8, jue.getId());
	        
	        preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	public void altaCliente(Cliente cli) {
    	String sql = "INSERT INTO cliente (nombre, apellidos, dni, direccion, cp, provincia) "
    				+ "VALUES('" + cli.getNombre() + "','" + cli.getApellidos() + "','" + cli.getDni() + "','" + cli.getDireccion() + "','" + cli.getCp() + "','" + cli.getProvincia() + "')";
    	
    	Statement myStatement;
		try {
			myStatement = this.conexion.createStatement();
			myStatement.executeUpdate(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	
	public void altaJuego(Juego jue) {
    	String sql = "INSERT INTO juego (nombre, categoria, plataforma, descripcionCorta, precio, numImagenes, valoracion) "
    				+ "VALUES('" + jue.getNombre() + "','" + jue.getCategoria() + "','" + jue.getPlataforma() + "','" + jue.getDescripcionCorta() + "','" + jue.getPrecio() + "', '" + jue.getNumImagenes() + "' , '" + jue.getValoracion() + "')";
    	
    	Statement myStatement;
		try {
			myStatement = this.conexion.createStatement();
			myStatement.executeUpdate(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	
	public void bajaCliente(int idCliente) {
    	String sql = "DELETE FROM cliente WHERE id = " + idCliente;
    	
    	Statement myStatement;
		try {
			myStatement = this.conexion.createStatement();
			myStatement.executeUpdate(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	
	public void bajaJuego(int idJuego) {
    	String sql = "DELETE FROM juego WHERE id = " + idJuego;
    	
    	Statement myStatement;
		try {
			myStatement = this.conexion.createStatement();
			myStatement.executeUpdate(sql);
			myStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	
	public ArrayList<String> todasPlataformas() {
        ArrayList<String> plataformas = new ArrayList<String>();

        String sql = "SELECT plataforma FROM juego GROUP BY juego.plataforma";

        try {
            Statement myStatement = this.conexion.createStatement();
            ResultSet rs = myStatement.executeQuery(sql);
            while(rs.next()) {
                 plataformas.add(rs.getString("plataforma"));
            }
            myStatement.close();
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return plataformas;
    }

    public ArrayList<String> todasCategorias() {
        ArrayList<String> plataformas = new ArrayList<String>();

        String sql = "SELECT categoria FROM juego GROUP BY juego.categoria";

        try {
            Statement myStatement = this.conexion.createStatement();
            ResultSet rs = myStatement.executeQuery(sql);
            while(rs.next()) {
                 plataformas.add(rs.getString("categoria"));
            }
            myStatement.close();
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return plataformas;
    }
	
 	
}
