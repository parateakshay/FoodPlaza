<%@page import="com.foodpla.dao.OrderImpl"%>
<%@page import="com.foodpla.pojo.Order21020"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order</title>
</head>

<style>

h2{

color: red;

}

h3{


color:blue;

}

body{


text-align: center;
}


</style>



<body>

<%

Order21020 o = new Order21020();
OrderImpl odi = new OrderImpl();

o = (Order21020)session.getAttribute("order");

%>

<h1><strong>Order Delivering</strong></h1>


<h2>Order Id</h2>
<h3><%=o.getOrderid()%></h3> 

<h2>Email id</h2>
<h3><%=o.getEmail_id()%></h3> 

<h2>Address</h2>
<h3><%=o.getAddress()%></h3> 

<h2>Order Total Price</h2>
<h3><%=o.getTotalprice()%></h3> 



<h1>Thank you for Placing Order</h1>

</body>
</html>