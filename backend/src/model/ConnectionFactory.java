package model;

import java.sql.*;

public class ConnectionFactory {
	
	private static final String USER = "root",
								PASSWORD = "********", // Sua senha aqui
								URL = "jdbc:mysql://localhost:3306/quiz",
								DRIVER = "com.mysql.cj.jdbc.Driver";
	
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
		}
		catch(ClassNotFoundException ex){
         System.out.println(":: ERRO :: Driver JDBC não encontrado na aplicação!");
		}catch(SQLException ex){
         System.out.println(":: ERRO :: Problemas na conexão com a fonte de dados");
		}catch(Exception ex){
         System.out.println(":: ERRO :: Outros problemas na conexão...");
		}
		return conn;
	}
}
