/**
 * 
 */
package br.com.guilherme.foibrinks.bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Responsavel em conectar o java com o banco de dados ta ligado
 * 
 * @author guilh
 * 
 */
public class ConnectionFactory {
	/**
	 * Retorna uma conexão ativa com o banco de dados
	 * @return
	 */
	public Connection getConnection() {

		try {
			System.out.println("Conectando ao banco");
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/foibrinks", "root", "");

		} catch (SQLException e) {
			throw new RuntimeException(e);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
}
