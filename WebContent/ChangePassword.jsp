<%@page import="com.foodpla.pojo.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
    <link rel = "stylesheet" href = "addfood.css">
    <meta charset="ISO-8859-1">
    <title>ChangePassword</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="addfood.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/nivo-lightbox.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript">
    function validation()
    {
    var opass = document.getElementById("lol3").value;
    var npass = document.getElementById("lol4").value;
    var cpass = document.getElementById("lol5").value;
    if(opass =="")
    	{
    	document.getElementById("rofl1").innerHTML = "Enter old password";
    	return false;
    	}
    	if(npass == "")
    		{
    		document.getElementById("rofl2").innerHTML = "Enter new password";
    		return false;
    		}
    	if(cpass == "")
    		{
    		document.getElementById("rofl3").innerHTML = "Re-enter new password";
    		return false;
    		}
    	 if(cpass!=npass)
    		{
    		document.getElementById("rofl3").innerHTML = "New Password and confirm password should be same";
    		return false;
    		}
    	if(opass==npass)
    		{
    		document.getElementById("rofl3").innerHTML = "new password should not be same as old password";
    		return false;
    		}
    	return true;
    }
    </script>
    </head>
    <style>
    #home{
    	background: url('https://ak.picdn.net/shutterstock/videos/18755474/thumb/5.jpg') 50% 0 repeat-y fixed; */
    	 /* filter: blur(8px);

    	-webkit-filter: blur(8px); */
    }
    #canbut{

    	padding-left: 20px
    }
    </style>
    <body>
<%
String useremail = (String)session.getAttribute("user");
//String adminemail = (String)session.getAttribute("admin");
//out.print(c);
%>
    <div>
    <form onsubmit = "return validation()" action = "LoginServlet" method="post">
    <input type="hidden" name = "action" value = "changepass">

    <section id="home" class="parallax-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-md-12 col-sm-12">


    			<a id = aks href="index.jsp"><h1>Food-Plaza</h1></a>

          <select name = "type" class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
  					<option >Admin</option>
  					<option >Customer</option>
  					<span class="caret"></span>
  				</select>

    			<form class="form-horizontal">
    				<div class="form-group">
    					<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    					<div class="col-sm-10">
    						<input type="email" class="form-control" id="lol2" placeholder="Email" name = "email" value = <%=useremail%> required>
    					</div>
    				</div>

    				<div class="form-group">
    					<label for="inputPassword3" class="col-sm-2 control-label">Old Password</label>
    					<div class="col-sm-10">
    						<input type="password" class="form-control" id="lol3" placeholder="Old-Password" name = "opass" required>
    					</div>
    				</div>

    				<div class="form-group">
    					<label for="inputPassword3" class="col-sm-2 control-label">New Password</label>
    					<div class="col-sm-10">
    						<input type="password" class="form-control" id="lol4" placeholder="New-Password" name = "npass" required>
    					</div>
    				</div>

    				<div class="form-group">
    					<label for="inputPassword3" class="col-sm-2 control-label">Confirm Password</label>
    					<div class="col-sm-10">
    						<input type="password" class="form-control" id="lol5" placeholder="Confirm- New Password" name = "cpass" required>
    					</div>
    				</div>
    				<div class="form-group">
    				 <div class="col-sm-offset-2 col-sm-10">
    					 <input type="submit" class="btn btn-default">
    					  <input id = 'canbut' type="cancel" value="Cancel" class="btn btn-default">

    					 <p>  </p>
    				 <!--	 <p id = "already">Already a customer?</p> -->
    			 <a id="change" href="index.jsp">Back</a>
    				 </div>
    			 </div>
    			 </form>
    			 </div>
    			 </div>
    			 </div>
    			 </section>

    <!-- <table>
    <caption>Change Password</caption>
    <tr>
    <td><select name="type">
    <option>Customer</option>
    <option>Admin</option>
    </select>
    </td>
    </tr>
    <tr>
    <td>Email Id</td>
    <td><input type = "email" id = "lol1" name = "email"></td>
    <td><span style="color: red" id = "rofl1"></span></td>
    </tr>
    <tr>
    <td>Old Password</td>
    <td><input type = "password" id = "lol1" name = "opass"></td>
    <td><span style="color:red" id = "rofl1"></span></td>
    </tr>
    <tr>
    <td>New Password</td>
    <td><input type = "password" id = "lol2" name = "npass"></td>
    <td><span style="color:red" id = "rofl2"></span></td>
    </tr>
    <tr>
    <td>Confirm new Password</td>
    <td><input type = "password" id = "lol3" name = "cpass"> </td>
    <td><span style="color:red" id = "rofl3"></span></td>
    </tr>
    <tr>
    <td><input type = "submit" value = "submit"></td>
    <td><input type = "reset" value = "cancel"></td>
    </tr>
    </table> -->
    </form>

    </div>
    </body>
    </html>
