<%@page import="com.foodpla.pojo.Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "addfood.css">
<meta charset="ISO-8859-1">
<title>Add to cart</title>
<script type="text/javascript">
function validation()
{
	var eid = document.getElementById("lol1").value;
	var fid = document.getElementById("lol2").value;
	var fquan = document.getElementById("lol3").value;
	var add = document.getElementById("lol4").value;
	if(eid=="")
		{
		document.getElementById("rofl1").innerHTML = "Enter value";
		return false;	
		}
	if(fid=="")
		{
		
		document.getElementById("rofl2").innerHTML = "enter value";
		return false;
		}
	if(add=="")
		{
		document.getElementById("rofl4").innerHTML = "Enter addons(Optional)";
		return false
		}
	if(fquan =="")
		{
		document.getElementById("rofl3").innerHTML = "enter value";
		return false;
		}
	return true;
	}
</script>
</head>
<body>

<%
String user = (String)session.getAttribute("user");
int foodid = (int)session.getAttribute("foodid");

%>

<div>
<form onsubmit = "return validation()" action =  "AddCartServlet" method = "post">
<table>
<caption>Add to Cart</caption>
<tr>
<td>Email Id</td>
<td><input type = "email" id = "lol1" name = "eid" value = "<%=user%>" readonly="readonly"></td>
<td><span style="color:red" id = "rofl1" ></span></td>
</tr>
<tr>
<td>Food Id</td>
<td><input type = "number" id = "lol2" name = "fid" value = "<%=foodid%>"></td>
<td><span style="color:red" id = "rofl2" ></span></td>
</tr>
<tr>
<td>Addons</td>
<td><input type = "text" id = "lol4" name = "add"></td>
<td><span style="color:red" id = "rofl4" ></span></td>

</tr>
<tr>
<td>Food Quantity</td>
<td><input type = "number" id = "lol3" name = "fquan"></td>
<td><span style="color:red" id = "rofl3" ></span></td>
</tr>
<tr>
<td><input type = "submit" value = "Add"></td>
<td><input type = "reset" value = "cancel"></td>
</tr>
</table>
</form>


<a href = "AddCartServlet?method=show&user=<%=user%>">Show Cart</a>

</div>
</body>
</html>