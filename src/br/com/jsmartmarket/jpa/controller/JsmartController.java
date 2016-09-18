package br.com.jsmartmarket.jpa.controller;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.jsmartmarket.jpa.dao.ClienteDao;
import br.com.jsmartmarket.jpa.dao.CompraDao;
import br.com.jsmartmarket.jpa.dao.ItensCompraDao;
import br.com.jsmartmarket.jpa.dao.PagamentoDao;
import br.com.jsmartmarket.jpa.dao.ProdutoDao;
import br.com.jsmartmarket.jpa.model.Cliente;
import br.com.jsmartmarket.jpa.model.Compra;
import br.com.jsmartmarket.jpa.model.ItemDaCompra;
import br.com.jsmartmarket.jpa.model.ItensCompra;
import br.com.jsmartmarket.jpa.model.Pagamento;
import br.com.jsmartmarket.jpa.model.Produto;

@Transactional
@Controller
public class JsmartController {
	
	@Autowired
	ClienteDao clienteDao;
	
	@Autowired
	CompraDao compraDao;
	
	@Autowired
	ProdutoDao produtoDao;
	
	@Autowired
	ItensCompraDao itensCompraDao;
	
	@Autowired
	PagamentoDao pagamentoDao;
	
	private int quantidade;
	private float valorTotal;
	
	@RequestMapping("/gravaCliente")
	public String gravaCliente(Cliente cliente, String confirmaSenha){
		
		if(cliente.getNome().equals("") || cliente.getCpf().equals("")
				|| cliente.getUserLogin().equals("") || cliente.getSenha().equals("")
				|| cliente.getEmail().equals("") || cliente.getTelefone().equals("")){
			return "formulario3";
		}
		
		if(cliente.getSenha().equals(confirmaSenha)){
			String senha = gerarSenha(cliente.getSenha());
			cliente.setSenha(senha);
		}else{
			return "formulario4";
		}
		
		Cliente cadastro = new Cliente();
		
		cadastro = clienteDao.buscaCpf(cliente.getCpf());
		if(cadastro != null){
			return "formulario2";
		}
		cadastro = clienteDao.buscaLogin(cliente.getUserLogin());
		if(cadastro != null){
			return "formulario2";
		}
		
		clienteDao.salvar(cliente);
		return "redirect:index.html";
	}
	
	@RequestMapping("/alteraCliente")
	public String alteraCliente(Cliente cliente, HttpSession session,
			HttpServletRequest req, HttpServletResponse res){
		String senha = gerarSenha(cliente.getSenha());
		Cliente autorizado = clienteDao.buscaLogin(cliente.getUserLogin());
		if(autorizado == null){
			return "alteracaoDados";
		}
		if(senha.equals(autorizado.getSenha()) && autorizado.getUserLogin().equals(session.getAttribute("login"))){ 
			Cliente alterado = clienteDao.consultar(autorizado.getCodigoCliente());
			alterado.setLogradouro(cliente.getLogradouro());
			alterado.setNumero(cliente.getNumero());
			alterado.setBairro(cliente.getBairro());
			alterado.setCidade(cliente.getCidade());
			alterado.setUf(cliente.getUf());
			alterado.setCep(cliente.getCep());
			alterado.setTelefone(cliente.getTelefone());
			alterado.setCelular(cliente.getCelular());
			alterado.setEmail(cliente.getEmail());
			return "conta";
		}
		return "alteracaoDados";
	}

	@RequestMapping("/login")
	public String paginaInicial(Cliente cliente, HttpSession session){
		
		String senha = gerarSenha(cliente.getSenha());
		Cliente autorizado = clienteDao.buscaLogin(cliente.getUserLogin());
		if(autorizado == null){
			return "formulario";
		}
		if(autorizado.getSenha().equals(senha)){
			session.setAttribute("usuarioLogado", autorizado);
			session.setAttribute("login", autorizado.getUserLogin());
			return "paginaInicial";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/formulario")
	public String formulario(){
		return "formulario";
	}
	
	@RequestMapping("/historia")
	public String historia(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			return "historia";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/conta")
	public String conta(HttpSession session, HttpServletRequest req, HttpServletResponse res){
		if(session.getAttribute("usuarioLogado") != null){
			Cliente usuarioLogado = (Cliente) session.getAttribute("usuarioLogado");
			Cliente cliente = clienteDao.consultar(usuarioLogado.getCodigoCliente());
			List<Compra> compras = compraDao.buscaCompras(cliente.getCodigoCliente());
			for(Compra compra: compras){
				System.out.println(compra.getCodigoCompra());
				compra.setValorCompra(calcular(compra.getCodigoCompra()));				
			}
			req.setAttribute("cliente", cliente);
			req.setAttribute("compras", compras);
			return "conta";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/paginaInicial")
	public String paginaInicial(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			return "paginaInicial";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		if(session.getAttribute("usuarioLogado") != null){
			session.invalidate();
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/compra")
	public String detalhaCompra(int codigo, HttpSession session,
			HttpServletRequest req, HttpServletResponse res){
		if(session.getAttribute("usuarioLogado") != null){
			Compra compra = compraDao.consulta(codigo);
			Pagamento pagto = pagamentoDao.consulta(compra.getCodigoPagamento());
			List<ItensCompra> itens = itensCompraDao.buscaItens(compra.getCodigoCompra());
			List<ItemDaCompra> itemDaCompra = new ArrayList<ItemDaCompra>();
			for(ItensCompra item: itens){
				ItemDaCompra aux = new ItemDaCompra();
				Produto produto = produtoDao.buscaProduto(item.getCodigoProduto());
				aux.setDescricao(produto.getDescricao());
				aux.setUnidade(produto.getUnidade());
				aux.setQuantidade(item.getQuantidade());
				aux.setValorUnitario(String.format("%.2f",produto.getValorUnitario()));
				aux.setValor(String.format("%.2f",(item.getQuantidade()*produto.getValorUnitario())));
				itemDaCompra.add(aux);
			}
			req.setAttribute("compra", compra);
			req.setAttribute("pagamento", pagto);
			req.setAttribute("itemDaCompra", itemDaCompra);
			return "compra";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/meusDados")
	public String meusDados(HttpSession session, HttpServletRequest req, HttpServletResponse res){
		if(session.getAttribute("usuarioLogado") != null){
			Cliente usuarioLogado = (Cliente) session.getAttribute("usuarioLogado");
			Cliente cliente = clienteDao.consultar(usuarioLogado.getCodigoCliente());
			req.setAttribute("cliente", cliente);
			return "meusDados";
		}
		return "redirect:index.html";
	}
	
	@RequestMapping("/alteracaoDados")
	public String alterarDados(HttpSession session,	HttpServletRequest req, HttpServletResponse res){
		if(session.getAttribute("usuarioLogado") != null){
			Cliente usuarioLogado = (Cliente) session.getAttribute("usuarioLogado");
			Cliente cliente = clienteDao.consultar(usuarioLogado.getCodigoCliente());
			req.setAttribute("cliente", cliente);
			return "alteracaoDados";
		}
		return "redirect:index.html";
	}
	
	public String gerarSenha(String senha){
		String valorParaSenha = senha;
		MessageDigest algorithm;
		try {
			algorithm = MessageDigest.getInstance("SHA-256");
			byte messageDigest[] = algorithm.digest(valorParaSenha.getBytes("UTF-8"));
			StringBuilder hexString = new StringBuilder();
			for (byte b : messageDigest) {
			  hexString.append(String.format("%02X", 0xFF & b));
			}
			senha = hexString.toString();
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return senha;
	}
	
	public String calcular(int codigoCompra){

		valorTotal = 0;
		quantidade = 0;
		
		List<ItensCompra> buscaItens = itensCompraDao.buscaItens(codigoCompra);
		for(ItensCompra iten: buscaItens){
			Produto produto = produtoDao.buscaProduto(iten.getCodigoProduto());
			quantidade = iten.getQuantidade();
			valorTotal = valorTotal + (quantidade * produto.getValorUnitario());
		}
		return String.format("%.2f",valorTotal);
	}		
}
