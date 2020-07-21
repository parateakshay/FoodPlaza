<%@page import="com.foodpla.pojo.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "UpdateCustomer.css">
<meta charset="ISO-8859-1">
<title>Customer Update Form</title>
<script type="text/javascript">
function validation()
{
	var name = document.getElementById("lol1").value;
	var pnum = document.getElementById("lol2").value;
	var add = document.getElementById("lol3").value;
	var eid = document.getElementById("lol4").value;
	var pass = document.getElementById("lol5").value;
	if(name=="")
		{
		document.getElementById("rofl1").innerHTML ="enter name";
		return false;
		}
	if(pnum =="")
		{
		document.getElementById("rofl2").innerHTML = "Enter phone number";
		return false;
		
		}
	if(add=="")
		{
		document.getElementById("rofl3").innerHTML = "Enter address";
		return false;
		}
	return true;
	}
</script>
</head>
<body>

<%
Customer c = (Customer)request.getAttribute("userdata");
//out.print(c);
%>
<div align="center">
<form onsubmit = "return validation()" action ="RegisterCustomerServlet" method="post">
<input type="hidden" name  = "action" value = "updcust">
<table >
<caption style="font-family: algerian">Customer update form</caption>
<tr>
<td>EmailId</td>
<td> <input type = "text" id = "lol4" name = "eid" value = <%=c.getEmail_id()%> readonly="readonly"></td>
<td><span style="color: red" id =  "rofl4"></span></td>
</tr>
<tr>
<td>password</td>
<td> <input type = "text" id = "lol5" name = "pass" value = <%=c.getPassword()%> readonly="readonly"></td>
<td><span style="color: red" id =  "rofl5"></span></td>
</tr>
<tr>
<td>Name</td>
<td> <input type = "text" id = "lol1" name = "name" value = <%=c.getName()%>></td>
<td><span style="color: red" id =  "rofl1"></span></td>
</tr>
<tr>
	<td>PhoneNumber</td>
	<td><input type = "number" id = "lol2" name = "num" value = <%=c.getContact() %>></td>
	<td><span style="color: red" id =  "rofl2"></span></td>
	
	</tr>
	<tr>
	<td>Address</td>
	<td><input type="text" id = "lol3" name = "add" value = <%=c.getAddress()%>></td>
	<td><span style="color: red" id =  "rofl3"></span></td>
	
	</tr>
</table>
<input type = "submit" value ="update">&nbsp<input type = "reset" value = "cancel"></td>
</form>
</div>
</body>
</html>