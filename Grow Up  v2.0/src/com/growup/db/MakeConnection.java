package com.growup.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MakeConnection{
	public Connection con;
	public PreparedStatement pst;
	public void makeConnecton(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/growup?useSSL=false","root","root");
			 pst=con.prepareStatement("insert into users(username,password) values(?,?)");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
