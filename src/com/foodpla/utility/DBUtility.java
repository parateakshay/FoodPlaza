package com.foodpla.utility;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class DBUtility 
{
	
	
	public static Connection getconnection()
	{
String DbPath = "jdbc:postgresql://" + "ec2-34-233-226-84.compute-1.amazonaws.com:5432" +"/d1b6kdr9k79m0a?sslmodel=require";
String userid  = "fkfnvdojixbdda";
String password = "8218bfe911d5a4b14f088fc9339896405dc30ff376139e5b266e798845afbce1";
Connection con = null; 
try
{
Class.forName("org.postgresql.Driver").newInstance();;
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
catch (InstantiationException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
} catch (IllegalAccessException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
} 
return con;
	}
public static void main(String args[])
{
	getconnection();
	System.out.println("Connection established");

}
}