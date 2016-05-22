package br.com.jsmartmarket.jpa.model;

import java.util.Calendar;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity 
public class Compra {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int codigoCompra;
	private int codigoCliente;
	private int codigoPagamento;
	private Calendar dataCompra;
	
	public int getCodigoCompra() {
		return codigoCompra;
	}
	public void setCodigoCompra(int codigoCompra) {
		this.codigoCompra = codigoCompra;
	}
	public int getCodigoCliente() {
		return codigoCliente;
	}
	public void setCodigoCliente(int codigoCliente) {
		this.codigoCliente = codigoCliente;
	}
	public int getCodigoPagamento() {
		return codigoPagamento;
	}
	public void setCodigoPagamento(int codigoPagamento) {
		this.codigoPagamento = codigoPagamento;
	}
	public Calendar getDataCompra() {
		return dataCompra;
	}
	public void setDataCompra(Calendar dataCompra) {
		this.dataCompra = dataCompra;
	}
	
}
