package com.foodpla.utility;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtility 
{
	public static Connection getconnection()
	{
		Connection con=null;
		try 
		{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://foodpla.cv6grydqt3lu.us-east-1.rds.amazonaws.com:3306/foodpla","root","12345678");
		}
		catch(ClassNotFoundException | SQLException e)
		{	}
		return con;
	}
	
	public static void main(String[] args) 
	{
		getconnection();
		if(getconnection()!=null)
		{
			System.out.println("Connection succeed......");
		}
		else
		{
			
			System.out.println("not vonnected");
		}
		
	}
}
