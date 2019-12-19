package br.com.guilherme.foibrinks.bd;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.guilherme.foibrinks.model.Cliente;
import br.com.guilherme.foibrinks.model.Produto;
/**
 * Classe resposavel em fazer as operações de crud de produto no banco de dados
 * @author guilh
 *
 */
public class ProdutoDAO {
	private Connection connection;

	public ProdutoDAO() {
		connection = new ConnectionFactory().getConnection();
	}
/**
 * Responsavel em adicionar o produto no banco de dados
 * @param produto
 */
	public void adiciona(Produto produto) {
		String sql = "INSERT INTO `produtos`(`NomeProduto`, `marca`, "
				+ "`FaixaEtariaIndicada`, `altura`, `largura`, `profundidade`,"
				+ " `peso`, `preco`, `DataCadastro`) VALUES (?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, produto.getNomeProduto());
			stmt.setString(2, produto.getMarca());
			stmt.setString(3, produto.getFaixaEtariaIndicada());
			stmt.setDouble(4, produto.getAltura());
			stmt.setDouble(5, produto.getLargura());
			stmt.setDouble(6, produto.getProfundidade());
			stmt.setDouble(7, produto.getPeso());
			stmt.setDouble(8, produto.getPreco());
			stmt.setDate(9, new Date(produto.getDataCadastro()
					.getTimeInMillis()));
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO: handle exception
		}
	}
/**
 * Responsavel em alterar os dados do produto já adicionado
 * @param produto
 */
	public void altera(Produto produto) {

		String sql = "update produtos set nomeProduto=?,marca=?,"
				+ "FaixaEtariaIndicada=?,altura=?,largura=?,profundidade=?,peso=?,preco=?,DataCadastro=?"
				+ "where idproduto=?";
		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);
			// seta os valores
			stmt.setString(1, produto.getNomeProduto());
			stmt.setString(2, produto.getMarca());
			stmt.setString(3, produto.getFaixaEtariaIndicada());
			stmt.setDouble(4, produto.getAltura());
			stmt.setDouble(5, produto.getLargura());
			stmt.setDouble(6, produto.getProfundidade());
			stmt.setDouble(7, produto.getPeso());
			stmt.setDouble(8, produto.getPreco());
			stmt.setDate(9, new Date(produto.getDataCadastro()
					.getTimeInMillis()));
			stmt.setLong(10, produto.getIdproduto()); // executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
/**
 * Retorna uma lista de produtos adicionados ao banco de dados
 * @return
 */
	public List<Produto> getLista() {
		List<Produto> produtos = new ArrayList<Produto>();
		try {
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from produtos");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Produto produto = new Produto();
				produto.setIdproduto(rs.getLong("idproduto"));
				produto.setNomeProduto(rs.getString("nomeProduto"));
				produto.setMarca(rs.getString("marca"));
				produto.setFaixaEtariaIndicada(rs
						.getString("FaixaEtariaIndicada"));
				produto.setAltura(rs.getDouble("altura"));
				produto.setLargura(rs.getDouble("largura"));
				produto.setProfundidade(rs.getDouble("profundidade"));
				produto.setPeso(rs.getDouble("peso"));
				produto.setPreco(rs.getDouble("preco"));
				Calendar dataCadastro = Calendar.getInstance();
				dataCadastro.setTime(rs.getDate("DataCadastro"));
				produto.setDataCadastro(dataCadastro);
				produtos.add(produto);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			throw new RuntimeException(e);
		}

		return produtos;
	}
/**
 * Responsavel em remover um produto no banco de dados
 * @param produto
 */
	public void remove(Produto produto) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("delete from produtos where idproduto=?");
			stmt.setLong(1, produto.getIdproduto());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
/**
 * Responsavel em buscar um produto especifico pelo id
 * @param id
 * @return
 */
	public Produto getProdutoById(String id) {
		Produto produto = new Produto();

		try {
			PreparedStatement stmt = this.connection
					.prepareStatement("SELECT * FROM produtos WHERE idproduto=?");
			stmt.setLong(1, Long.parseLong(id));
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				produto.setIdproduto(rs.getLong("idproduto"));
				produto.setNomeProduto(rs.getString("nomeProduto"));
				produto.setMarca(rs.getString("marca"));
				produto.setFaixaEtariaIndicada(rs
						.getString("FaixaEtariaIndicada"));
				produto.setAltura(rs.getDouble("altura"));
				produto.setLargura(rs.getDouble("largura"));
				produto.setProfundidade(rs.getDouble("profundidade"));
				produto.setPeso(rs.getDouble("peso"));
				produto.setPreco(rs.getDouble("preco"));
				Calendar dataCadastro = Calendar.getInstance();
				dataCadastro.setTime(rs.getDate("DataCadastro"));
				produto.setDataCadastro(dataCadastro);
			}
			rs.close();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return produto;
	}
}
