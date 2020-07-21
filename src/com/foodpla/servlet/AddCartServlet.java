package com.foodpla.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foodpla.dao.CartImpl;
import com.foodpla.pojo.Cart;

@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet
{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
{
	String eid = req.getParameter("eid");
	int fid = Integer.parseInt(req.getParameter("fid"));
	String add = req.getParameter("add");
	int fquan = Integer.parseInt(req.getParameter("fquan"));
	
	boolean flag;
	Cart c = new Cart();
	CartImpl cdi = new CartImpl();
	c.setEmail_id(eid);
	c.setFoodid(fid);
	c.setAddons(add);
	c.setQuantity(fquan);
	flag = cdi.AddCart(c);
	if(flag)
	{
		resp.sendRedirect("success.jsp");
		System.out.println("successfull");
	}
	else
	{
		resp.sendRedirect("fail.jsp");
		
	}
	
}
}
