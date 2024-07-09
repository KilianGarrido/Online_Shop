package Clases;

public class Juego {
	private int id;
	private String nombre;
	private String categoria;
	private String plataforma;
	private String descripcionCorta;
	private double precio;
	private int numImagenes;
	private int valoracion;
	
	public Juego() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Juego(int id, String nombre, String categoria, String plataforma,
			String descripcionCorta, double precio, int numImagenes, int valoracion) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.categoria = categoria;
		this.plataforma = plataforma;
		this.descripcionCorta = descripcionCorta;
		this.precio = precio;
		this.numImagenes = numImagenes;
		this.valoracion = valoracion;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	/**
	 * @return the categoria
	 */
	public String getCategoria() {
		return categoria;
	}

	/**
	 * @param categoria the categoria to set
	 */
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	/**
	 * @return the plataforma
	 */
	public String getPlataforma() {
		return plataforma;
	}

	/**
	 * @param plataforma the plataforma to set
	 */
	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}

	/**
	 * @return the descripcionCorta
	 */
	public String getDescripcionCorta() {
		return descripcionCorta;
	}

	/**
	 * @param descripcionCorta the descripcionCorta to set
	 */
	public void setDescripcionCorta(String descripcionCorta) {
		this.descripcionCorta = descripcionCorta;
	}

	/**
	 * @return the precio
	 */
	public double getPrecio() {
		return precio;
	}

	/**
	 * @param precio the precio to set
	 */
	public void setPrecio(double precio) {
		this.precio = precio;
	}

	/**
	 * @return the numImagenes
	 */
	public int getNumImagenes() {
		return numImagenes;
	}

	/**
	 * @param numImagenes the numImagenes to set
	 */
	public void setNumImagenes(int numImagenes) {
		this.numImagenes = numImagenes;
	}

	/**
	 * @return the valoracion
	 */
	public int getValoracion() {
		return valoracion;
	}

	/**
	 * @param valoracion the valoracion to set
	 */
	public void setValoracion(int valoracion) {
		if(valoracion >= 0 && valoracion <= 5) {
			this.valoracion = valoracion;
		}else {
			System.out.println("No se puede establecer esa valoración");
		}		
	}
	
	
	
	
}
