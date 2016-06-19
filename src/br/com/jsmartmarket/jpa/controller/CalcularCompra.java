package br.com.jsmartmarket.jpa.controller;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.jsmartmarket.jpa.dao.ItensCompraDao;
import br.com.jsmartmarket.jpa.dao.ProdutoDao;
import br.com.jsmartmarket.jpa.model.ItensCompra;
import br.com.jsmartmarket.jpa.model.Produto;
import br.com.jsmartmarket.jpa.util.JPAUtil;

public class CalcularCompra {
	
	private int quantidade;
	private float valorTotal;
	
	public String calcular(int codigoCompra){

		EntityManager em = new JPAUtil().getEntityManager();
		
		valorTotal = 0;
		quantidade = 0;
		
		List<ItensCompra> buscaItens = new ItensCompraDao(em).buscaItens(codigoCompra);
		for(ItensCompra iten: buscaItens){
			Produto produto = new ProdutoDao(em).buscaProduto(iten.getCodigoProduto());
			quantidade = iten.getQuantidade();
			valorTotal = valorTotal + (quantidade * produto.getValorUnitario());
		}
		em.close();
		return String.format("%.2f",valorTotal);
	}

}
