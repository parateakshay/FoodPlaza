<%@ page import = "java.util.Iterator" %>
<%@ page import = "com.foodpla.pojo.Food" %>
<%@ page import = "java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FileList</title>
</head>
<body>
<% 
String user = (String)session.getAttribute("user");
String admin = (String)session.getAttribute("admin");


List<Food> lf = (List<Food>)session.getAttribute("foodList");%>

<%
Food f = new Food();

Iterator<Food> i = lf.iterator(); 



%>

<table border = "1">
<tr>
<th>Food-Name</th>
<th>Food-type</th>
<th>Category</th>
<th>Description</th>
<th>Price</th>
<% if(admin ==null && user!=null){ %>
<th>Action</th>
<%} if(admin !=null && user == null){ %>
<th colspan="2">Action</th>
<%} %>
</tr>

<%
while(i.hasNext())
{
	
 f = i.next();	
 long foodid = f.getFoodid();
%>
<tr>

<td><%=f.getFoodname() %></td>
<td><%=f.getType() %></td>
<td><%=f.getCategory() %></td>
<td><%=f.getDescription() %></td>
<td><%=f.getPrice() %></td>
<% if(admin ==null && user!=null){ %>
<td><a href = "AddCartServlet?user=<%=user%>&foodid=<%=foodid%>&method=add">ADD-TO-CART</a></td>
<%} if(admin !=null && user == null){ %>
<td><a href = "AddFoodServlet?method=edit&id=<%=f.getFoodid()%>">Edit</a></td>
<td><a href = "AddFoodServlet?method=delete&id=<%=f.getFoodid()%>">Delete</a></td>
<%} %>

</tr>
<%} %>

</table>
</body>
</html>