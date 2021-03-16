<%@page import="Zomatofile.AdminManu" %>
<%@page import="java.util.LinkedList"%>
<%@page import="javax.sound.midi.SysexMessage"%>
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


<title>Insert title here</title>
<style>
.id
{
	margin-top: 50px;
	margin-left: 155px;
	font-size: 15px;
}
.name
{
	margin-top: 100px;
	margin-left: 550px;
	font-size: 30px;
	color: red;
	font-weight: bold;
}
.cost
{
	margin-top: 10px;
	margin-left: 550px;
	font-size: 20px;
	color: red;
	font-weight: bold;
}
.image
{
	margin-top: 40px;
	margin-left: 30px; 
}
.foodmessage
{
	margin-top: -70px;
	margin-left: 550px;
	color: gray;
	font-size: 18px;
}
.time
{
	margin-left: 550px;
	color: gray;
	margin-top: 8px;
	font-size: 17px;
}
.costmessage
{
	margin-left: 550px;
	color: gray;
	margin-top: 7px;
}
.Logo
{
	margin-top: 25px;
	margin-left: 100px;
	font-size: 25px;
	color: red; 
	font-weight: bold;
}
.text
{
	margin-left: 550px;
}

.btn
{
	margin-left: 400px;
}
</style>
</head>
<body>

<form action="addtocart.jsp" method="post">
<%
	String strfoodid,strimage,strname;
	int intcost;
	intcost=Integer.parseInt(request.getParameter("foodcost"));
	String strunm=request.getParameter("unm");
/*  strfoodid=request.getParameter("foodid");
	strimage=request.getParameter("foodimage");
	strname=request.getParameter("foodname");
	strcost=request.getParameter("foodcost");
	out.println(strfoodid);
	out.println(strimage);
	out.println(strname);
	out.println(strcost); */
%>
	
<div class="Logo">
	Zomato
</div>	
	
<div class="id">
	<%strfoodid=request.getParameter("foodid");
	%>
</div>
<div class="name">
	<%
		strname=request.getParameter("foodname");
		%>
		<u>
			<%=strname%>
		</u>
		<% 
	%>
</div>
<div class="image">
	<%
		strimage=request.getParameter("foodimage");
	%>
	<img style="border-radius:10px; margin-left: 300px; margin-top: -60px;" src="img/<%=strimage%>"/>
	</div>
<div class="foodmessage">
<%
	String strfoodmessage=request.getParameter("foodmessage");
	out.println(strfoodmessage);
%>
</div>
<div class="time">
	<%
		String strtime=request.getParameter("time");
		out.println(strtime);
	%>
</div>
<div class="costmessage">
	<%
		String strcostmessage=request.getParameter("costmessage");
		out.println(strcostmessage);
	%>
</div>
<div class="cost"> 
	<%
		out.println(intcost);
	%>
</div>

<div class="text">
	Quantity:-<input type="number" name="qty" placeholder="Enter your quantity.."/>
	<!-- <input type="hidden" value="sum" name="sum"> -->
	
</div>

<div>
	<input type="hidden" value="<%=strunm%>" name="unm"/>
	<input type="hidden" value="<%=strfoodid%>" name="foodid"/>
	<input type="hidden" value="<%=strimage%>" name="foodimage"/>
	<input type="hidden" value="<%=strname%>" name="foodname"/>
	<input type="hidden" value="<%=intcost%>" name="foodcost" />
	<input type="hidden" value="<%=strfoodmessage%>" name="foodmessage" />
	<input type="hidden" value="<%=strcostmessage%>" name="costmessage" />
	<input type="hidden" value="<%=strtime%>" name="time" />
	<input type="hidden" value="qty" name="qty">
</div>

<div class="btn">
	<input type="submit" value="Order Online" class="btn btn-primary"/>
</div>
</form>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


</body>
</html>