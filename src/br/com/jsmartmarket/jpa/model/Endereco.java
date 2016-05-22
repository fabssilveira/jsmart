package br.com.jsmartmarket.jpa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity 
public class Endereco {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int codigoEndereco;
	private String logradouro;
	private String numero;
	private String bairro;
	private String cidade;
	private String uf;
	private String cep;
	
	public int getCodigoEndereco() {
		return codigoEndereco;
	}
	public void setCodigoEndereco(int codigoEndereco) {
		this.codigoEndereco = codigoEndereco;
	}
	public String getLogradouro() {
		return logradouro;
	}
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	
	
}
