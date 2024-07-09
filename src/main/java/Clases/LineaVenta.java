package Clases;

public class LineaVenta {
	private int idLVenta;
	private int idVenta;
	private int idJuego;
	private int unidades;
	
	public LineaVenta() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LineaVenta(int idLVenta, int idVenta, int idJuego, int unidades) {
		super();
		this.idLVenta = idLVenta;
		this.idVenta = idVenta;
		this.idJuego = idJuego;
		this.unidades = unidades;
	}

	/**
	 * @return the idLVenta
	 */
	public int getIdLVenta() {
		return idLVenta;
	}

	/**
	 * @param idLVenta the idLVenta to set
	 */
	public void setIdLVenta(int idLVenta) {
		this.idLVenta = idLVenta;
	}

	/**
	 * @return the idVenta
	 */
	public int getIdVenta() {
		return idVenta;
	}

	/**
	 * @param idVenta the idVenta to set
	 */
	public void setIdVenta(int idVenta) {
		this.idVenta = idVenta;
	}

	/**
	 * @return the idJuego
	 */
	public int getIdJuego() {
		return idJuego;
	}

	/**
	 * @param idJuego the idJuego to set
	 */
	public void setIdJuego(int idJuego) {
		this.idJuego = idJuego;
	}

	/**
	 * @return the unidades
	 */
	public int getUnidades() {
		return unidades;
	}

	/**
	 * @param unidades the unidades to set
	 */
	public void setUnidades(int unidades) {
		this.unidades = unidades;
	}
	
	
}
