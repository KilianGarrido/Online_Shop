package Clases;

import java.util.Date;

public class Venta {
	private int idVenta;
	private Date fechaHora;
	private int idCliente;
	private double precioVenta;
	
	public Venta() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Venta(int idVenta, Date fechaHora, int idCliente, double precioVenta) {
		super();
		this.idVenta = idVenta;
		this.fechaHora = fechaHora;
		this.idCliente = idCliente;
		this.precioVenta = precioVenta;
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
	 * @return the fechaHora
	 */
	public Date getFechaHora() {
		return fechaHora;
	}

	/**
	 * @param fechaHora the fechaHora to set
	 */
	public void setFechaHora(Date fechaHora) {
		this.fechaHora = fechaHora;
	}

	/**
	 * @return the idCliente
	 */
	public int getIdCliente() {
		return idCliente;
	}

	/**
	 * @param idCliente the idCliente to set
	 */
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	/**
	 * @return the precioVenta
	 */
	public double getPrecioVenta() {
		return precioVenta;
	}

	/**
	 * @param precioVenta the precioVenta to set
	 */
	public void setPrecioVenta(double precioVenta) {
		this.precioVenta = precioVenta;
	}
	
	
}
