<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<style>
body
{
	background-image: url("img/maximus.jpeg");
}
.username
{
	margin-top: 100px;
	margin-left: 300px;
	font-size: 40px;
	font-weight: bold;
	color: blue;
}
.txtusername
{
	height: 40px;
	width: 250px;
	margin-left: 200px;
	font-size: 20px;
}
.newpassword
{
	margin-top: 10px;
	margin-left: 300px;
	font-size: 40px;
	font-weight: bold;
	color: blue;
}
.txtpassword
{
	height: 40px;
	width: 250px;
	font-size: 20px;
	margin-left: 123px;
}
.reapetpassword
{
	margin-top: 10px;
	margin-left: 300px;
	font-size: 40px;
	font-weight: bold;
	color: blue;
}
.txtconform
{
	height: 40px;
	width: 250px;
	margin-left: 44px;
	font-size: 20px;
}
.btn
{
	color: red;
	margin-left: 500px;
	margin-top: 25px;
	height: 40px;
	font-size: 20px;
}
</style>
</head>
<body>
<form action="coltrollerbtn" method="post">
	<div class="username">
		Username:-
		<input type="text" class="txtusername" placeholder="Enter Username..." name="txtusername" requried/>
	</div>
	<div class="newpassword">
		New Password:-
		<input type="password" class="txtpassword" placeholder="Enter New Password..." required/>
	</div>
	<div class="reapetpassword">
		Conform Password:-
		<input type="password" class="txtconform" Placeholder="Enter password..." name="txtcpwd" required/>
	</div>
	<div class="btn">
		<input type="submit" class="btn" value="Change Password" name="btn"/>
	</div>
</form>
</body>
</html>