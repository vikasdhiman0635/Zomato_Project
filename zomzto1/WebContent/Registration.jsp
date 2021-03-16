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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<title>New Registration</title>
</head>
<style>
body
{
	background-image: url("img/wecare_foods_beverages_memory_maker_caterers_bangalore_20732.jpg");
	height: 100vh;	
	background-image: cover;
}
.firstname
{
	margin-top: 100px;
	margin-left: 300px; 
}
.txtfirstname
{
	margin-left: 10px;
	width: 200px;
	height: 25px;
	font-size: 20px;
	
}
.lastname
{
	margin-top: 0px;
	margin-left: 300px; 
}
.txtLastname
{
	font-size: 20px;
	margin-left: 15px;
	width: 200px;
	height: 25px;
}
.Mobileno
{
	margin-left: 300px; 
}
.txtMobileno
{
	font-size: 20px;
	margin-left: 15px;
	width: 200px;
	height: 25px;
}
.Emailid
{
	margin-left: 300px; 
}
.txtEmailid
{
	font-size: 20px;
	margin-left: 52px;
	width: 200px;
	height: 25px;
}
.Username
{
	margin-left: 300px; 
}
.txtusername
{
	font-size: 20px;
	margin-left: 11px;
	width: 200px;
	height: 25px;
}
.Password
{
	margin-left: 300px; 
}
.txtpassword
{
	font-size: 20px;
	margin-left: 32px;
	width: 200px;
	height: 25px;
}
.btn
{
	font-size: 25px;
	margin-top:  10px;
	margin-left: 380px;
	color: blue;
	font-weight: bold;
	
}
</style>
<body>
<form action="coltrollerbtn" method="get">
<div class="row">
	<div class="firstname">
	<font color="black" size="6"><b>First Name:-</b></font>
		<input type="text"  class="txtfirstname" name="txtfirstname" placeholder="Enter First Name" required/>
	</div>
</div>
<div class="row">
	<div class="lastname">
	<font color="black" size="6"><b>Last Name:-</b></font>
		<input type="text"  class="txtLastname" name="txtLastname" placeholder="Enter Last Name" required/>
	</div>
</div>
<div class="row">
	<div class="Mobileno">
	<font color="black" size="6"><b>Mobile No:-</b></font>
		<input type="text" class="txtMobileno" name="txtMobileno" placeholder="Enter Mobile no" required/>
	</div>
</div>
<div class="row">
	<div class="Emailid">
	<font color="black" size="6"><b>Email Id:-</b></font>
		<input type="email"  class="txtEmailid" name="txtEmailid" placeholder="Enter Email id" required/>
	</div>
</div>
<div class="row">
	<div class="Username">
	<font color="black" size="6"><b>User Name:-</b></font>
		<input type="text"  class="txtusername" name="txtusername" placeholder="Enter User Name" required/>
	</div>
</div>
<div class="row">
	<div class="Password">
	<font color="black" size="6"><b>Password:-</b></font>
		<input type="Password" class="txtpassword" name="txtpassword" placeholder="Enter Password" required/>
	</div>
</div>
<div class="row">
	<div class="Password">
		<input type="submit" class="btn" name="btn"  value="Id Created"/>
	</div>
</div>
	<!-- <input type="text" placeholder="username"/>
	<input type="text" placeholder="pwd"/>
	<input type="text" placeholder="email"/>
	<input type="submit" name="btn" class="btn" value="Id Created"/>
 -->




</form>



<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>







</body>
</html>