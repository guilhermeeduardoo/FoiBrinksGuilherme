/**
 * 
 */
package br.com.guilherme.foibrinks.bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author guilh
 *
 */
public class ConnectionFactory {
public Connection getConnection() {
		
		try {
			System.out.println("Conectando ao banco");
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/foibrinks", "root", "");
		
		} 
		catch (SQLException e) {
			throw new RuntimeException(e);
		} 
		catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
}
