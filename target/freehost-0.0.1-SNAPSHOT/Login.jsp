<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <!DOCTYPE html>
<html>
<head>
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
	<link rel="stylesheet" href="addfood.css">
	
<meta charset="ISO-8859-1">
<title>Login</title>
<script type="text/javascript">
function validation()
{
var eid = document.getElementById("inputEmail3").value;
var pass= document.getElementById("inputPassword3").value;
}

</script>
</head>
<style>
#home {
  background: url('https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&w=1000&q=80') 50% 0 repeat-y fixed;
}

#change{

	text-decoration: underline;

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
			    <li><a href="#home" class="smoothScroll">HOME</a></li>
				<li><a href="FileList.jsp" class="smoothScroll">FOOD GALLERY</a></li>
				<li><a href="#menu" class="smoothScroll">SPECIAL MENU</a></li>
				<li><a href="#contact" class="smoothScroll">CONTACT</a></li>
			<li><a href="RegisterCustomer.jsp" class="smoothScroll">REGISTER</a></li>
				
			</ul>
		</div>
	</div>
</section>


<div class = "one">
<form onsubmit = "return validation()" action="LoginServlet" method="post">
<input type="hidden" name = "action" value = "login">
<section id="home" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">

      <div class="dropdown">
       <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <select name = "type" class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <option >Admin</option>
          <option >Customer</option>
          <span class="caret"></span>
        </select>
        <p>  </p>
        <br>
        <p>  </p>
        <p>  </p>
				    </div>
				  </div>

				<form class="form-horizontal">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name = "email" required>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name = "pass" required>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <div class="checkbox">
				        <label>
				          <input type="checkbox"> Remember me
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <input type="submit" class="btn btn-default">

							<p>  </p>
					<a id="change" href="ChangePassword.jsp">Forget Password</a>
				    </div>
				  </div>
				</form>
			</div>
	</div>
</section>
</form>
</div>
</body>
</html>
