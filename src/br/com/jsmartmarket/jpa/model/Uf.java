package br.com.jsmartmarket.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity 
public class Uf {

	@Id
	private int codigo;
	private String sigla;

	public String getSigla() {
		return sigla;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
}
