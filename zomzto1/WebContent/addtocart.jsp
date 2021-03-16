<%@page import="Zomatofile.AdminManu" %>
<%@page import="java.util.LinkedList"%>

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


<title>order in cart</title>
<style>
.Logo
{
	color: red;
	margin-left: 100px;
	margin-top: 25px;
	font-size: 25px;
	font-weight: bold;
}
.image
{
	margin-top: 50px;
	margin-left: 150px;
}
.name
{
	margin-left: 30%;
	margin-top: -9%;
	font-size: 25px;
	color: red;
	font-weight: bold;
}
.id
{
	margin-left: 40%;
	margin-top: -2.2%;
	color: gray;
	font-size: 18px;
}
.fmessage
{
	margin-left:30%;
	margin-top: 0.5%;
	color: gray;
	font-size: 17px; 
}
.time
{
	margin-left: 30%;
	color: gray;
	margin-top: 0.5%;
}
.cmessage
{
	margin-left: 30%;
	margin-top: 0.5%;
	color: gray;
}
.cost
{
	margin-left: 30%;
	margin-top: 0.5%;
	color: red;
	font-size: 20px;
}
.qty
{
	margin-left: 60%;
	margin-top: -11%;
	font-size: 20px;
}
.btn
{
	margin-top: 10%;
	margin-left: 30%;
}
.cart
{
	margin-left: 90%;
	width: 800px;
	margin-top: -22%;
}
</style>
</head>
<body>
<form action="paymentmethod.jsp" method="post">
<%
	String strid,strname,strimage,strfmessage,strcmessage,strtime;
	int intcost,intqty;
	String strunm=request.getParameter("unm");
	strid=request.getParameter("foodid");	
	strname=request.getParameter("foodname");
	strimage=request.getParameter("foodimage");
	strfmessage=request.getParameter("foodmessage");
	strcmessage=request.getParameter("costmessage");
	intcost=Integer.parseInt(request.getParameter("foodcost"));
	strtime=request.getParameter("time");
	intqty=Integer.parseInt(request.getParameter("qty"));
	/* int intsum=Integer.parseInt(request.getParameter("sum")); */
	String strqy;
	strqy=request.getParameter("foodcart");
	/* System.out.println(strqy+"helo"); */
	System.out.println(strid+" "+strname+" "+strimage+" "+strfmessage+" "+strcmessage+" "+intcost+" "+strtime+" "+strtime+" "+intqty);
%>
<div class="Logo">
	Zomato
</div>
<div class="image">
	<img style="border-radius:10px;" src="img/<%=strimage%>"/>
</div>
<div class="name">
	<u>
	<%=strname%>
	</u>
</div>
<div class="id">
	(<%=strid%>)
</div>
<div class="fmessage">
	<%=strfmessage%>
</div>
<div class="time">
	<%=strtime%>
</div>
<div class="cmessage">
	<%=strcmessage%>
</div>
<div class="cost">
	<%
	AdminManu objfood=null;
	HttpSession session2=request.getSession(false);
	LinkedList<AdminManu>lst=(LinkedList<AdminManu>)session2.getAttribute("foodcart");
	if(lst==null)
	{
		lst=new LinkedList<AdminManu>();
		session.setAttribute("foodcart",lst);
	}
	lst.add(objfood);
	int sum=0;
	for(AdminManu obj:lst)
	{
		System.out.println("start Loop");
		sum=intcost*intqty;
		System.out.println("End Loop");
	}
	System.out.println(sum);
	out.println(sum);
	%>
	
	
</div>
<div class="qty">
	Quantity:
	<%=intqty%>
</div>

<div>
	<input type="hidden" value="<%=strunm%>" name="unm"/>
	<input type="hidden" value="<%=strid%>"  name="id"/>
	<input type="hidden" value="<%=strname%>" name="name"/>
	<input type="hidden" value="<%=strimage%>" name="image"/>
	<input type="hidden" value="<%=sum%>" name="cost"/>
	<input type="hidden" value="<%=strfmessage%>" name="fmessage"/>
	<input type="hidden" value="<%=strcmessage%>" name="cmessage"/>
	<input type="hidden" value="<%=strtime%>" name="time"/>
	<input type="hidden" value="<%=intqty%>" name="qty"/>
</div>


<div class="btn">
	<input type="submit" value="Payment" class="btn btn-success" name="btn">
</div>
</form>



<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


</body>
</html>