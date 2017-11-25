package org.cartoon.inha;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	final static String DB_URL ="jdbc:mysql://localhost:3306/webtoon?useUnicode=true&characterEncoding=utf8&useSSL=false";
	final static String DB_USER = "admin";
	final static String DB_PASSWORD= "1234";
	static{
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
		 } catch (ClassNotFoundException e) {
			 System.out.println(e.toString());
		 }
	 }	
	 public Connection getConnection() throws SQLException {
		 return DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
	 }
}
