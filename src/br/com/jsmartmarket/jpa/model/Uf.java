package br.com.jsmartmarket.jpa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity 
public class Uf {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int codigoUf;
	private String sigla;
	
	public int getCodigoUf() {
		return codigoUf;
	}
	public String getSigla() {
		return sigla;
	}
		
}
