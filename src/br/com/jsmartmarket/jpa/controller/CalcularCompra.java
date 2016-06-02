package br.com.jsmartmarket.jpa.controller;

import java.util.List;

import br.com.jsmartmarket.jpa.dao.ItensCompraDao;
import br.com.jsmartmarket.jpa.dao.ProdutoDao;
import br.com.jsmartmarket.jpa.model.ItensCompra;
import br.com.jsmartmarket.jpa.model.Produto;

public class CalcularCompra {
	
	private int quantidade;
	private float valorTotal;
	
	public String calcular(int codigoCompra){

		valorTotal = 0;
		quantidade = 0;
		
		/*List<ItensCompra> buscaItens = new ItensCompraDao().findItensCompra(codigoCompra);
		for(ItensCompra itens: buscaItens){
			Produto produto = new ProdutoDao().findProduto(itens.getCodigoProduto());
			quantidade = itens.getQuantidade();
			valorTotal = valorTotal + (quantidade * produto.getValorUnitario());
		}*/
		return "R$ "+valorTotal;
	}

}
