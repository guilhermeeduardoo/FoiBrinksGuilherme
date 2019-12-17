/**
 * 
 */
package br.com.guilherme.foibrinks.servlet;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.guilherme.foibrinks.bd.ProdutoDAO;
import br.com.guilherme.foibrinks.model.Produto;

/**
 * @author guilh
 *
 */
public class AlteraProdutoServlet extends HttpServlet {
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		long idproduto = Long.parseLong("idproduto");
		String NomeProduto = request.getParameter("NomeProduto");
		String marca = request.getParameter("marca");
		String FaixaEtariaIndicada = request.getParameter("FaixaEtariaIndicada");
		double altura = Double.parseDouble(request.getParameter("altura"));
		double largura = Double.parseDouble(request.getParameter("largura"));
		double profundidade = Double.parseDouble(request.getParameter("profundidade"));
		double peso = Double.parseDouble(request.getParameter("peso"));
		double preco = Double.parseDouble(request.getParameter("preco"));
		Calendar DataCadastro = Calendar.getInstance();
		
		Produto produto = new Produto();
		produto.setIdproduto(idproduto);
		produto.setNomeProduto(NomeProduto);
		produto.setMarca(marca);
		produto.setFaixaEtariaIndicada(FaixaEtariaIndicada);
		produto.setAltura(altura);
		produto.setLargura(largura);
		produto.setProfundidade(profundidade);
		produto.setPeso(peso);
		produto.setPreco(preco);
		produto.setDataCadastro(DataCadastro);
		
		ProdutoDAO dao = new ProdutoDAO ();
		dao.altera(produto);
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/listarProdutos.jsp");
		rd.forward(request, response);
	}
}
