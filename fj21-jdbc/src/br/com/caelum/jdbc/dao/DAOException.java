package br.com.caelum.jdbc.dao;

import java.sql.SQLException;

public class DAOException extends RuntimeException{

	public DAOException(SQLException e) {
	}

}
