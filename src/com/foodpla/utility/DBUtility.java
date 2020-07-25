package com.foodpla.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtility 
{
	public static Connection getconnection()
	{
String DbPath = "jdbc:mysql://localhost:3306/FoodPla?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String userid  = "root";
String password = "";
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