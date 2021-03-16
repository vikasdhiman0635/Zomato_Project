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


<title>Insert title here</title>
<style>
body
{
	background-image: url("img/photography-of-a-person-pointing-on-something-684387.jpg");
}
.name
{
	margin-left: 20%;
	margin-top: 8%;
	color: red;
	font-size: 30px;
	font-weight: bold;
}
.txtname
{
	margin-left: 1%;
	font-size: 25px;
	border-radius: 10px;
}
.password
{
	margin-left: 20%;
	margin-top: 2%;
	color: red;
	font-size: 30px;
	font-weight: bold;
}
.txtpwd
{
	margin-left: 3%;
	font-size: 25px;
	border-radius: 10px;
}
.btn
{
	margin-left: 50%;
	margin-top: 4%;
	border-radius: 20px;
	font-size: 25px;
}
</style>
</head>
<body>
<%
	String strid=request.getParameter("id");
	String strpwd=request.getParameter("pwd");
	String strunm=request.getParameter("unm");
%>
<form action="Netbankingpay.jsp" method="post">
<div class="name">
	User Name: 
	<input type="text" class="txtname" name="id" placeholder="Enter User Name!!" required/>
	</div>
	<div class="password">
	Password:
	<input type="password" class="txtpwd" name="pwd" placeholder="Enter passwaord!!" required/>
	</div>
	<div>
		<input type="hidden" value="<%=strunm%>" name="unm"/>
		<input type="hidden" value="id" name="id"/>
		<input type="hidden" value="pwd" name="pwd"/>
	</div>
	<div>
	<input type="submit" name="btn" value="login" class="btn btn-primary">
</div>
</form>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


</body>
</html>