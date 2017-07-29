package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//String de conexao jdbc entao, o banco fj21, em localhost, é mysql e utiliza o driver jdbc
public class ConnectionFactory {
	public Connection getConnection() {
		try {
			return DriverManager.getConnection("jdbc:mysql://localhost/fj21", "root", "caelum");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
