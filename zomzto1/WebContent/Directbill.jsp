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
.logo
{
	margin-left: 70%;
	margin-top: 3%;
	font-size: 30px;
	color: red;
	font-weight: bold;
}
.image
{
	margin-top: 50px;
	margin-left: 200px;
	
}
.foodname
{
	margin-top: -125px;
	margin-left: 400px;
	font-weight: bold;
	font-size: 25px;
	color: red;
}
.foodmessage
{
	margin-left:400px;
	font-size: 20px;
	color: gray; 
}
.foodcost
{
	margin-top: 5px;
	margin-left: 420px;
	font-size: 20px;
	color: red;
}
.costmessage
{
	margin-top: 5px;
	margin-left: 400px;
	color: gray;
}

.time
{
	margin-top: 5px;
	margin-left: 400px;
	color: gray;
}
.hr
{
	font-weight: bold;
	margin-top: -11px;
	margin-left: 200px;
	margin-right: 700px;
}
.btn
{
	margin-top: -12px;
	margin-left: 259px;
	font-size: 20px;
}
.paymessage
{
	margin-left: 15%;
	font-size: 20px;
	color: green;
	margin-top: 11%;
	 
}
.qty
{
	margin-left: 45%;
	color: gray;
	margin-top: -13%;
	font-size: 18px;
}
.cardholder
{
	margin-left: 25%;
	margin-top: 2%;
	color:gray;
	font-size: 20px;
}
.cardno
{
	margin-left: 25%;
	margin-top: 1%;
	color: gray;
	font-size: 20px;
}
.tik
{
	margin-left: 60%;
	margin-top: -10%;
	
}
.homebtn
{
	margin-left: 70%;
	margin-top: -25%;
}
.cancelbtn
{
	margin-left: 40%;
	margin-top: 30%;
}
</style>

</head>
<body>
<%
	String strid=request.getParameter("id");
	String strname=request.getParameter("name");
	String strimage=request.getParameter("image");
	String strfmessage=request.getParameter("fmessage");
	String strcmessage=request.getParameter("cmessage");
	int intcost=Integer.parseInt(request.getParameter("cost"));
	int intqty=Integer.parseInt(request.getParameter("qty"));
	String strtime=request.getParameter("time");
%>

<center><i><u><h1>Bill</h1></u></i></center>	
<form action="User.jsp" method="post">
<div class="logo">
	<u>Zomato</u>
</div>

<div class="image">
	<img style="border-radius:10px;" src="img/<%=strimage%>"/>
</div>
<div class="foodname">
		<%=strname%>
	</div>
	<div class="foodmessage">
		<%=strfmessage%>
	</div>
	<div class="time">
		<%=strtime%>
	</div>
	<div class="costmessage">
		<%=strcmessage%>
	</div>
	<div class="foodcost">
		<%=intcost%>
	</div>
	<div class="hr">
	<hr>
	</div>
	<div class="qty">
		Quantity:-<%=intqty%>
	</div>
   	<div class="tik">
   		<img style="width:10%;" src="https://m.gifmania.co.uk/Web-Design-Animated-Gifs/Animated-Checks/Green-Tick-Mark-84435.gif"/>
   	</div>
   	
   	
   	<div class="homebtn">
   		<input type="submit" class="btn btn-primary" name="btn" value="Go to home"/>
   	</div>
   	</form>
   	
   		
   		<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
   		
</body>
</html>