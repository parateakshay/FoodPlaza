package com.foodpla.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtility 
{
	public static Connection getconnection()
	{
String DbPath = "jdbc:mysql://mkorvuw3sl6cu9ms.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/FoodPla";
String userid  = "hx8lzdfi4z15ho2e";
String password = "sy2cnrfiky49vibx";
Connection con = null; 
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
con= DriverManager.getConnection(DbPath,userid,password);
}
catch(ClassNotFoundException c)
{
	c.printStackTrace();
}
catch(SQLException s)
{
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