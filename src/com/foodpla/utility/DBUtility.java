package com.foodpla.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtility 
{
	public static Connection getconnection()
	{
String DbPath = "jdbc:mysql://foodpla.cv6grydqt3lu.us-east-1.rds.amazonaws.com:3306/foodpla";
String userid  = "root";
String password = "12345678";
Connection con = null; 
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
con= DriverManager.getConnection(DbPath,userid,"12345678");
}
catch(ClassNotFoundException c)
{
	System.out.println("where is my driver");
	c.printStackTrace();
}
catch(SQLException s)
{
	System.out.println("why is my driver");
s.printStackTrace();	
}
return con;
	}
public static void main(String args[])
{
	getconnection();
	System.out.println("Connection established");

}
}