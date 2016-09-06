package br.com.jsmartmarket.jpa.controller;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import br.com.jsmartmarket.jpa.dao.ItensCompraDao;
import br.com.jsmartmarket.jpa.dao.ProdutoDao;
import br.com.jsmartmarket.jpa.model.ItensCompra;
import br.com.jsmartmarket.jpa.model.Produto;
import br.com.jsmartmarket.jpa.util.JPAUtil;

public class CalcularCompra {
	
	@Autowired
	ProdutoDao produtoDao;
	
	@Autowired
	ItensCompraDao itensCompraDao;
	
	private int quantidade;
	private float valorTotal;
	
	public String calcular(int codigoCompra){

		EntityManager em = new JPAUtil().getEntityManager();
		
		valorTotal = 0;
		quantidade = 0;
		
		List<ItensCompra> buscaItens = itensCompraDao.buscaItens(codigoCompra);
		for(ItensCompra iten: buscaItens){
			Produto produto = produtoDao.buscaProduto(iten.getCodigoProduto());
			quantidade = iten.getQuantidade();
			valorTotal = valorTotal + (quantidade * produto.getValorUnitario());
		}
		em.close();
		return String.format("%.2f",valorTotal);
	}

}
