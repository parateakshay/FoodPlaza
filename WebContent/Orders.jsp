<%@page import="com.foodpla.pojo.Order21020"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.foodpla.pojo.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OrdersList</title>
</head>

<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/nivo-lightbox.css">
	<link rel="stylesheet" href="css/nivo_themes/default/default.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<style>


h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
  text-transform: uppercase;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }

th{
  padding: 20px 15px;
 
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;

  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
.final{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
.not{
  margin: 5px;
}

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}

</style>


<body>



<section class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="index.jsp" class="navbar-brand">Food-Plaza</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
			
				<li><a href="index.jsp" class="smoothScroll">FOOD GALLERY</a></li>
				<li><a href="index.jsp" class="smoothScroll">SPECIAL MENU</a></li>
						    <li><a href="#" class="smoothScroll">SHOW MY ORDERS</a></li>
			</ul>
		</div>
	</div>
</section>
<h1>amdnjndajn</h1>



<%
List<Order21020> lo = (List<Order21020>)session.getAttribute("orderlist");
Order21020 o = new Order21020();
Iterator<Order21020> i = lo.iterator();

%>
<div class= "final">
<section class = "not">
  <!--for demo wrap-->
  <h1>Orders</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Order Id</th>
			<th>Booking Date And Time</th>
			<th>Address</th>
			<th>TotalPrice</th>
			<th>Action</th>
        </tr>
      </thead>
    </table>
  </div>


<%
while(i.hasNext())
{
	o = i.next();
   
%>

<div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
          <td><%=o.getOrderid()%></td>
          <td><%=o.getBookingdatetime() %></td>
          <td><%=o.getAddress()%></td>
          <td><%=o.getTotalprice() %></td>
         <td><a href = "OrderServlet?method=showindividual&orderid=<%=o.getOrderid()%>">Show</a></td>

</tr>
<%} %>

</tbody>
    </table>
</div>
</section>
<p>  </p>
<br>
<p> </p>
</div>
</body>
</html>