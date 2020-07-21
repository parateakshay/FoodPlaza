package com.foodpla.servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foodpla.dao.CustomerImpl;
import com.foodpla.pojo.Customer;

@WebServlet("/RegisterCustomerServlet")

public class RegisterCustomerServlet extends HttpServlet
{
	 CustomerImpl cdi = new CustomerImpl();
	 Customer c = new Customer();
@Override

   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
	
	String cemail = req.getParameter("user");
	c = cdi.ShowProfile(cemail);
	System.out.println(c);
//	HttpSession session = req.getSession();
	
	if (c!=null)
	{
		
//		session.setAttribute("userdata", c);
//		resp.sendRedirect("UpdateCustomer.jsp");
		req.setAttribute("userdata", c);
		RequestDispatcher rd= req.getRequestDispatcher("UpdateCustomer.jsp");
		rd.forward(req, resp);
		
	}
		
	else {
		
		resp.sendRedirect("fail.jsp");
	}
	}

protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{
	HttpSession session = req.getSession();
	String action = req.getParameter("action");
	System.out.println("akshay");
	if(action.equals("regcust"))
	{
		System.out.println("parate");
String uname = req.getParameter("uname");
session.setAttribute("name",uname); 
String eid = req.getParameter("eid");
String pass = req.getParameter("pass");
int num = Integer.parseInt(req.getParameter("num"));
String add = req.getParameter("add");
PrintWriter pw = resp.getWriter();
boolean flag;

c.setName(uname);
c.setEmail_id(eid);
c.setPassword(pass);
c.setContact(num);
c.setAddress(add);
flag = cdi.RegisterCustomer(c);
if(flag)
{
	
	  String hello = (String)session.getAttribute("name"); 
	  pw.println(hello);
	 
		 resp.sendRedirect("RegisterCustomer.jsp"); 
System.out.println("successfull");

}
else
{
resp.sendRedirect("fail.jsp");	
System.out.println("fail");
}
	}
	
	
	
	else if(action.equals("updcust"))
	{
	String uname = req.getParameter("name");
	String eid = req.getParameter("eid");
	String pass = req.getParameter("pass");
	int num = Integer.parseInt(req.getParameter("num"));
	String add = req.getParameter("add");
	PrintWriter pw = resp.getWriter();
	boolean flag;
	Customer c = new Customer();
	c.setName(uname);
	c.setEmail_id(eid);
	c.setPassword(pass);
	c.setContact(num);
	c.setAddress(add);
	CustomerImpl cdi = new CustomerImpl();
	flag = cdi.UpdateCustomer(c);
	if(flag)
	{
	resp.sendRedirect("index.jsp");	
	System.out.println("successfull");
	}
	else
	{
	resp.sendRedirect("fail.jsp");	
	System.out.println("fail");
}
	}
}
}
