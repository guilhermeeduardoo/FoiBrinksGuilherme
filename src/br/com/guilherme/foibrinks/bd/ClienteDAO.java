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

/**
 * Classe responsavel em fazer as operações do banco de dados
 * 
 * @author guilh
 * 
 */
public class ClienteDAO {
	private Connection connection;

	public ClienteDAO() {
		this.connection = new ConnectionFactory().getConnection();
	}

	/**
	 * Metudo responsavel por adicionar um cliente ao banco de dados
	 * 
	 * @param cliente
	 */
	public void adiciona(Cliente cliente) {

		String sql = "insert into clientes "
				+ "(nomeCompleto,estadocivil,genero,rua,bairro,CEP,estado,CPF,DatadeNascimento,DatadeCadastrodeSistema)"
				+ " values (?,?,?,?,?,?,?,?,?,?)";
		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);
			// seta os valores
			stmt.setString(1, cliente.getNomeCompleto());
			stmt.setString(2, cliente.getEstadoCivil());
			stmt.setString(3, cliente.getGenero());
			stmt.setString(4, cliente.getRua());
			stmt.setString(5, cliente.getBairro());
			stmt.setString(6, cliente.getCEP());
			stmt.setString(7, cliente.getEstado());
			stmt.setString(8, cliente.getCPF());
			stmt.setDate(9, new Date(cliente.getDatadeNascimento()
					.getTimeInMillis()));
			stmt.setDate(10, new Date(cliente.getDatadeCadastrodoSistema()
					.getTimeInMillis()));
			// executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	/**
	 * Resposavel em listar os clientes do banco de dados
	 * 
	 * @return lista de clientes
	 */
	public List<Cliente> getLista() {
		try {
			List<Cliente> clientes = new ArrayList<Cliente>();
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from clientes");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				// criando o objeto Contato
				Cliente cliente = new Cliente();
				cliente.setId(rs.getLong("idcliente"));
				cliente.setNomeCompleto(rs.getString("nomeCompleto"));
				cliente.setEstadoCivil(rs.getString("estadocivil"));
				cliente.setGenero(rs.getString("genero"));
				cliente.setRua(rs.getString("rua"));
				cliente.setBairro(rs.getString("bairro"));
				cliente.setCEP(rs.getString("CEP"));
				cliente.setEstado(rs.getString("estado"));
				cliente.setCPF(rs.getString("CPF"));
				Calendar datanascimento = Calendar.getInstance();
				datanascimento.setTime(rs.getDate("DatadeNascimento"));
				cliente.setDatadeNascimento(datanascimento);
				Calendar datacadastrosistema = Calendar.getInstance();
				datacadastrosistema.setTime(rs
						.getDate("DatadeCadastrodeSistema"));
				cliente.setDatadeCadastrodoSistema(datacadastrosistema);
				// adicionando o objeto à lista
				clientes.add(cliente);
			}
			rs.close();
			stmt.close();
			return clientes;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * Responsavel em remover os clientes do banco de dados
	 * 
	 * @param cliente
	 */
	public void remove(Cliente cliente) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("delete from clientes where idcliente=?");
			stmt.setLong(1, cliente.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * Responsavel em buscar um cliente especifico pelo id
	 * 
	 * @param id
	 * @return
	 */
	public Cliente getClienteById(String id) {
		Cliente cliente = new Cliente();

		try {
			PreparedStatement stmt = this.connection
					.prepareStatement("SELECT * FROM clientes WHERE idcliente=?");
			stmt.setLong(1, Long.parseLong(id));
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				cliente.setId(rs.getLong("idcliente"));
				cliente.setNomeCompleto(rs.getString("nomeCompleto"));
				cliente.setEstadoCivil(rs.getString("estadocivil"));
				cliente.setGenero(rs.getString("genero"));
				cliente.setRua(rs.getString("rua"));
				cliente.setBairro(rs.getString("bairro"));
				cliente.setCEP(rs.getString("CEP"));
				cliente.setEstado(rs.getString("estado"));
				cliente.setCPF(rs.getString("CPF"));
				Calendar datanascimento = Calendar.getInstance();
				datanascimento.setTime(rs.getDate("DatadeNascimento"));
				cliente.setDatadeNascimento(datanascimento);
				Calendar datacadastrosistema = Calendar.getInstance();
				datacadastrosistema.setTime(rs
						.getDate("DatadeCadastrodeSistema"));
				cliente.setDatadeCadastrodoSistema(datacadastrosistema);
			}
			rs.close();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

		return cliente;
	}

	/**
	 * Responsavel em alterar dados do cliente já adicionado
	 * 
	 * @param cliente
	 */
	public void altera(Cliente cliente) {

		String sql = "update clientes set nomeCompleto=?,estadocivil=?,"
				+ "genero=?,rua=?,bairro=?,CEP=?,estado=?,CPF=?,DatadeNascimento=?"
				+ "where idcliente=?";
		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);
			// seta os valores
			stmt.setString(1, cliente.getNomeCompleto());
			stmt.setString(2, cliente.getEstadoCivil());
			stmt.setString(3, cliente.getGenero());
			stmt.setString(4, cliente.getRua());
			stmt.setString(5, cliente.getBairro());
			stmt.setString(6, cliente.getCEP());
			stmt.setString(7, cliente.getEstado());
			stmt.setString(8, cliente.getCPF());
			stmt.setDate(9, new Date(cliente.getDatadeNascimento()
					.getTimeInMillis()));
			stmt.setLong(10, cliente.getId()); // executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public  List<Cliente> getPesquisaAniversariante(String mes) {
		List<Cliente> clientes = new ArrayList<Cliente>();

		try {
			PreparedStatement stmt = this.connection
					.prepareStatement("select nomeCompleto, DatadeNascimento from clientes WHERE" +
							" (EXTRACT(MONTH FROM DatadeNascimento) = ?) order by DatadeNascimento");
			stmt.setString(1, mes);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Cliente cliente = new Cliente();
				cliente.setNomeCompleto(rs.getString("nomeCompleto"));
				Calendar datanascimento = Calendar.getInstance();
				datanascimento.setTime(rs.getDate("DatadeNascimento"));
				cliente.setDatadeNascimento(datanascimento);
				clientes.add(cliente);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return clientes;
	}
	public List<Cliente> getNovatos(String mes, String ano){
		List<Cliente> clientes = new ArrayList<Cliente>();

		try {
			PreparedStatement stmt = this.connection
					.prepareStatement("select idcliente, nomeCompleto, DatadeNascimento,DatadeCadastrodeSistema from clientes WHERE" +
							" (EXTRACT(MONTH FROM DatadeCadastrodeSistema) = ?) and (EXTRACT(YEAR FROM DatadeCadastrodeSistema) = ?)");
			stmt.setString(1, mes);
			stmt.setString(2, ano);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Cliente cliente = new Cliente();
				cliente.setId(rs.getLong("idcliente"));
				cliente.setNomeCompleto(rs.getString("nomeCompleto"));
				Calendar datanascimento = Calendar.getInstance();
				datanascimento.setTime(rs.getDate("DatadeNascimento"));
				cliente.setDatadeNascimento(datanascimento);
				Calendar datacadastrosistema = Calendar.getInstance();
				datacadastrosistema.setTime(rs
						.getDate("DatadeCadastrodeSistema"));
				cliente.setDatadeCadastrodoSistema(datacadastrosistema);
				clientes.add(cliente);
				
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return clientes;
	}
	public  List<Cliente> getPesquisaDependentesAniversariante(String mes) {
		List<Cliente> clientes = new ArrayList<Cliente>();

		try {
			PreparedStatement stmt = this.connection
					.prepareStatement("select nomeCompleto, dataNascimento from dependente_clientes WHERE" +
							" (EXTRACT(MONTH FROM dataNascimento) = ?) order by dataNascimento");
			stmt.setString(1, mes);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Cliente cliente = new Cliente();
				cliente.setNomeCompleto(rs.getString("nomeCompleto"));
				Calendar datanascimento = Calendar.getInstance();
				datanascimento.setTime(rs.getDate("dataNascimento"));
				cliente.setDatadeNascimento(datanascimento);
				clientes.add(cliente);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return clientes;
	}
}