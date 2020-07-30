<%@page import="com.foodpla.pojo.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

Customer c= new Customer();

c = (Customer)session.getAttribute("showindividualcustomer");

%>



<h1><strong>Customer Profile</strong></h1>


<h2>Name</h2>
<h3><%=c.getName()%></h3> 

<h2>Email id</h2>
<h3><%=c.getEmail_id()%></h3> 

<h2>Address</h2>
<h3><%=c.getAddress()%></h3> 

<h2>Password</h2>
<h3><%=c.getPassword()%></h3> 

<h2>Contact</h2>
<h3><%=c.getContact()%></h3> 



<h1>You Have been an amazing customer</h1>

</body>
</html>