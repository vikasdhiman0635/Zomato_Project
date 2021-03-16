<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, sh rink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



<title>Zomato</title> 

<style>

body {
        background-image: url("img/m0023.jpg.1366x768_q85_crop_upscale.jpg");
        background-image: cover;
} 
.aa{
	width: 500px;
	height: 250px;
	background-color: rgba(0,0,0,0.4);
	margin: 0 auto;
	margin-top: 150px;
	padding-top: 10px;
	padding-left: 20px;
	border-radius:15px;
	color:white;
	font-weight:border; 
	box-shadow: inset 4px,4px rgba(0,0,0,0.5)
}
.aa input[type="text"]
{
	width: 250px;
	height: 40px;
	border-radius:5px;
}
.aa input[type="password"]
{
	width: 250px;
	height: 40px;
	border-radius:5px;
}
.aa input[type="submit"]
{
	width: 100px;
	height: 50px;
	border-radius:5px;
	color: red;
	font-weight: bolder;
	font-size: 25px;
}
.psw{
margin-left: 350px;
margin-bottom: 800px;
}
.reg{
margin-left: 200px;
}

.regform{
	display: none;
}
.unm
{
	border: none;
	outline: none;
	padding: 10px;
}
.pwd
{
	border: none;
	outline: none;
	padding: 10px;
}
</style>

</head>
<body>
<div class="aa">
<figure><h3>Login</h3></figure>
<form action="coltrollerbtn" method="post">
	<div class="row">
			<div class="col-md-3 text-right">
				<figure><font value="username" color="red" size="5"><b>Username:-</b></font></figure> 
			</div>
			<div class="col-md-9">
			<figure><input type="text" class="unm" Placeholder="Enter Username....." name="txtusername" required/></figure>
			</div>
	</div>

	<div class="row">
			<div class="col-md-3 text-right">
				<figure><font class="password" value="Password" name="txtpw" color="red" size="5"><b>Password:-</b></font></figure> 
			</div>
			<div class="col-md-9">
			<figure><input type="password" class="pwd" Placeholder="Enter password..." name="txtpwd" id="myInput" required/></figure>
			<!-- <input type="checkbox" onclick="myFunction()">Show Password -->
			</div>
	</div>
	<div class="row">
	
		<div class="col-md-3">
			<input type="submit" value="Login" name="btn" class="btn"/>
			</div>
			<div class="reg">
			<div class="col-md-5">
			<!-- <a href="#" class="1regform">registaration</a> -->
			<a href="Registration.jsp" class="registration"><font size="5" color="red"><b>Registration</b></font></a>
			<!-- <input type="submit" value="Registration" name="btn" class="btn"/> -->
			</div>
			</div>
		
	<div class="container">
    		<span class="psw">Forgot <a href="frogetpassword.jsp">password?</a></span>
  </div>
	</div>
	
	
</form>
</div>

<script src='https://code.jquery.com/jquery-3.3.1.min.js'>
</script>

<script>
		$('.submit a').click(function()
		{
		$('from').animate({height:"toggle",opacity:"toggle"},"slow")
		});
</script>

<!-- <script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script> -->


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>