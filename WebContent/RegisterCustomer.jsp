<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
    <link rel="stylesheet" href="FoodPlazaTemplate.css">
    <meta charset="ISO-8859-1">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="addfood.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/nivo-lightbox.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/style1.css"> -->
    <script type="text/javascript">
    //
    function validation()
    {
    var uname = document.getElementById("lol1").value;
    var eid = document.getElementById("lol2").value;
    var pnum = document.getElementById("lol3").value;
    var add = document.getElementById("lol4").value;
    var pass = document.getElementById("lol5").value;
    if(uname=="")
    	{
    	document.getElementById("rofl1").innerHTML = "enter username";
    	return false
    	}
    if(eid=="")
    {
    document.getElementById("rofl2").innerHTML = "enter email id";
    return false
    }
    /* if(pnumber==10)
    {
    	document.getElementById("rofl3").innerHTML = "enter corrent phone number"; */
    	if(pnum=="")
    		{
    document.getElementById("rofl3").innerHTML = "enter phone number";
    return false
    }
    //}
    if(add=="")
    {
    document.getElementById("rofl4").innerHTML = "enter address";
    return false
    }
    if(pass=="")
    {
    document.getElementById("rofl5").innerHTML = "enter password";
    return false
    }
    return true;

    }
    </script>
    </head>
    <style>
    #home{
    	background: url('https://d39l2hkdp2esp1.cloudfront.net/img/photo/126844/126844_00_2x.jpg') 50% 0 repeat-y fixed; */
    	 /* filter: blur(8px);

      -webkit-filter: blur(8px); */
    }
    #id{

    	color: "white";
    }
    </style>
    <body>

    	<div align = "center">
    		<form onsubmit = "return validation()" action="RegisterCustomerServlet" method="post">
    		<input type = "hidden" name = "action" value = "regcust">

    		<section id="home" class="parallax-section">
    			<div class="container">
    				<div class="row">
    					<div class="col-md-12 col-sm-12">


    					<a id = aks href="index.jsp"><h1>Food-Plaza</h1></a>

    					<form class="form-horizontal">
    						<div class="form-group">
    							<label for="inputEmail3" class="col-sm-2 control-label">Name</label>
    							<div class="col-sm-10">
    								<input type="text" class="form-control" id="lol1" placeholder="Name" name = "uname" required>
    							</div>
    						</div>

    						<div class="form-group">
    							<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    							<div class="col-sm-10">
    								<input type="email" class="form-control" id="lol2" placeholder="Email" name = "eid" required>
    							</div>
    						</div>

    						<div class="form-group">
    							<label for="inputPassword3" class="col-sm-2 control-label">PhoneNumber</label>
    							<div class="col-sm-10">
    								<input type="number" class="form-control" id="lol3" placeholder="Phone Number" name = "num" required>
    							</div>
    						</div>

    						<div class="form-group">
    							<label for="inputPassword3" class="col-sm-2 control-label">Address</label>
    							<div class="col-sm-10">
    								<input type="text" class="form-control" id="lol4" placeholder="Address" name = "add" required>
    							</div>
    						</div>

    						<div class="form-group">
    							<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    							<div class="col-sm-10">
    								<input type="password" class="form-control" id="lol5" placeholder="Password" name = "pass" required>
    							</div>
    						</div>
    						<div class="form-group">
    						 <div class="col-sm-offset-2 col-sm-10">
    							 <input type="submit" class="btn btn-default">

    							 <p>  </p>
    						 <!--	 <p id = "already">Already a customer?</p> -->
    					 <a id="change" href="Login.jsp">Login</a>
    						 </div>
    					 </div>
    					 </form>
    					 </div>
    					 </div>
    					 </div>
    					 </section>
    					 </form>
    					 </div>


    		<!-- <table>
    		<caption style = "font-family: algerian">customer registration form</caption>
    		<tr>
    		<td>UserName</td>
    		<td><input type = "text" id = "lol1" name = "uname"></td>
    		<td><span style="color: red" id = "rofl1"></span></td>
    		</tr>
    		<tr>
    		<td>EmailId</td>
    		<td><input type = "email" id = "lol2" name = "eid"></td>
    		<td><span style="color: red" id = "rofl2"></span></td>

    		</tr>
    		<tr>
    		<td>PhoneNumber</td>
    		<td><input type = "number" id = "lol3" name = "num"></td>
    		<td><span style="color: red" id = "rofl3"></span></td>

    		</tr>
    		<tr>
    		<td>Address</td>
    		<td><textarea id = "lol4" name = "add"></textarea></td>
    		<td><span style="color: red" id = "rofl4"></span></td>

    		</tr>
    		<tr>
    		<td>Password</td>
    		<td><input type = "password" id = "lol5" name = "pass"></td>
    		<td><span style="color: red" id = "rofl5"></span></td>
    		</table>
    		<input type = "submit">&nbsp<input type = "reset">
    		</form>
    	</div> -->
    </body>
    </html>
