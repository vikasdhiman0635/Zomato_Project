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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Order Message</title>

<style>
body{
	background-image: url("img/Fall-wallpaper-1366x768-HD-wallpaper_vB9bwin.jpg");
}

.Logo
{
	margin-left: 8%;
	margin-top: 3%;
	font-size: 40px;
	font-weight: bold;
	color: red;
}
.message
{
	margin-top: 2%;
	color: blue;
}
.btn
{
	margin-left: 45%;
	font-size: 25px;
	margin-top: 5%;
	color: blue;
}
.cartbtn
{
	margin-left: 75%;
	margin-top: -20%;
	font-size: 20px;
}
</style>

</head>
<body>
<form action="printbill.jsp" method="post">
<%
	String strid=request.getParameter("id");
	String strname=request.getParameter("foodname");
	String strimage=request.getParameter("image");
	String strfmessage=request.getParameter("foodmessage");
	String strcmessage=request.getParameter("costmessage");
	int intcost=Integer.parseInt(request.getParameter("cost"));
	int intqty=Integer.parseInt(request.getParameter("qty"));
	String strtime=request.getParameter("time");
	String strcardname=request.getParameter("cardname");
	String strcardno=request.getParameter("cardno");
	String strdate=request.getParameter("date");
	String strcvv=request.getParameter("cvv");
	String strpwd=request.getParameter("pwd");
	String strunm=request.getParameter("unm");
%>

<div class="Logo">
	<center>Zomato</center>
</div>
<div class="message">
<center><i><u><h1>Thanks for order</h1></u></i></center>
</div>
<div>
	<input type="hidden" value="<%=strid%>"  name="id" />
	<input type="hidden" value="<%=strname%>"  name="foodname" />
	<input type="hidden" value="<%=strimage%>"  name="image" />
	<input type="hidden" value="<%=strfmessage%>"  name="foodmessage" />
	<input type="hidden" value="<%=strcmessage%>"  name="costmessage" />
	<input type="hidden" value="<%=intqty%>"  name="qty" />
	<input type="hidden" value="<%=intcost%>"  name="cost" />
	<input type="hidden" value="<%=strtime%>"  name="time" />
	<input type="hidden" value="<%=strcardname%>"  name="cardname" />
	<input type="hidden" value="<%=strcardno%>"  name="cardno" />
	<input type="hidden" value="<%=strdate%>"  name="date" />
	<input type="hidden" value="<%=strcvv%>"  name="cvv" />
	<input type="hidden" value="<%=strpwd%>"  name="pwd" />
	<input type="hidden" value="<%=strunm%>" name="unm" />
	</div>

<div>
	<input type="submit" value="Bill" name="btn" class="btn"/>
</div>

</form>

<%-- <form action="coltrollerbtn" method="post">
	<div>
		<input type="hidden" value="<%=strid%>"  name="id" />
		<input type="hidden" value="<%=strname%>"  name="foodname" />
		<input type="hidden" value="<%=strimage%>"  name="image" />
		<input type="hidden" value="<%=strfmessage%>"  name="foodmessage" />
		<input type="hidden" value="<%=strcmessage%>"  name="costmessage" />
		<input type="hidden" value="<%=intqty%>"  name="qty" />
		<input type="hidden" value="<%=intcost%>"  name="cost" />
		<input type="hidden" value="<%=strtime%>"  name="time" />
		<input type="hidden" value="<%=strcardname%>"  name="cardname" />
		<input type="hidden" value="<%=strcardno%>"  name="cardno" />
		<input type="hidden" value="<%=strdate%>"  name="date" />
		<input type="hidden" value="<%=strcvv%>"  name="cvv" />
		<input type="hidden" value="<%=strpwd%>"  name="pwd" />
		<input type="hidden" value="<%=strunm%>" name="unm" />
	</div>
	<div class="cartbtn">
		<input type="submit" value="Add To Cart" class="btn btn-primary" name="btn"/>	
	</div>
</form>	 --%>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


</body>
</html>