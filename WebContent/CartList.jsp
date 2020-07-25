<%@page import="java.util.Iterator"%>
<%@page import="com.foodpla.pojo.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CartList</title>
</head>
<body>

<%
List<Cart> lc = (List<Cart>)session.getAttribute("cart");


Cart c = new Cart();
Iterator<Cart> i = lc.iterator();

%>
<table border = '1'>
<tr>
<th>Food Id</th>
<th>Food Name</th>
<th>Food Quantity</th>
<th>Add Ons</th>
<th>TotalPrice</th>
<th>Action</th>
</tr>
<%
while(i.hasNext())
{

	c = i.next();
}

%>
<tr>
<th><%=c.getFoodid() %></th>
<th><%=c.getFoodname() %></th>
<th><%=c.getQuantity() %></th>
<th><%=c.getAddons() %></th>
<th><%=c.getTotalprice() %></th>
</tr>
</table>

<a href = "#">Delete Cart</a>

</body>
</html>