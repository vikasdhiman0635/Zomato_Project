<%@page import="Zomatofile.AdminManu"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>

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

<title>user manu</title>
<style>
.logo
{
	margin-top: 25px;
	margin-left: 50px;
	font-size: 25px;
	font-weight: bold;
	color: red;
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
</style>
</head>
<body>

<%
	String strunm=request.getParameter("unm");
%>

<div class="logo">
		Zomato
	</div>
<%
	LinkedList<AdminManu> lst=(LinkedList<AdminManu>)application.getAttribute("lst1");
%>
<%	
	for(AdminManu e5:lst)
	{
			String strFoodid=e5.getStrfoodid();
			String strFoodimage=e5.getStrimage();
			String strFoodname=e5.getStrfoodname();
			Integer intFoodcost=e5.getIntfoodcost();
			String strFoodmessage=e5.getStrfoodmessage();
			String strcostmessage=e5.getStrcostmessage();
			String strtime=e5.getStrfoodtime();
		%>
		<form action="Manucontroller.jsp" method="post">
		<div class="image">
		<img style="border-radius:10%" class="img-round" src="img/<%=e5.getStrimage()%>"/>
	</div>
	<div class="foodname">
		<%=e5.getStrfoodname()%>
	</div>
	<div class="foodmessage">
		<%=e5.getStrfoodmessage()%>
	</div>
	<div class="time">
		<%=e5.getStrfoodtime()%>
	</div>
	<div class="costmessage">
		<%=e5.getStrcostmessage()%>
	</div>
	<div class="foodcost">
		<%=e5.getIntfoodcost()%>
	</div>
	<div class="hr">
	<hr>
	</div>
	<div>
	<input type="hidden" value="<%=strunm%>" name="unm" />
	<input type="hidden" value="<%=strFoodid%>" name="foodid"/>
	<input type="hidden" value="<%=strFoodimage%>" name="foodimage"/>
	<input type="hidden" value="<%=strFoodname%>" name="foodname"/>
	<input type="hidden" value="<%=intFoodcost%>" name="foodcost">
	<input type="hidden" value="<%=strFoodmessage%>" name="foodmessage">
	<input type="hidden" value="<%=strcostmessage%>" name="costmessage">
	<input type="hidden" value="<%=strtime%>" name="time">
	</div>
	<div class="btn">
		<input type="submit" name="btn" value="Order Online" class="btn btn-primary"/>
	</div>
	</form>
		<%
		
	}

%>

	<%-- <div class="image">
		<img style="border-radius:10%" class="img-round" src="<% %>img/dal chaval.jpg"/>
	</dizv>
	<div class="foodname">
		Dal Chaval
	</div>
	<div class="foodmessage">
		Testy
	</div>
	<div class="time">
		30 Min
	</div>
	<div class="costmessage">
		Accept payment & order online
	</div>
	<div class="foodcost">
		120/-
	</div>
	<div class="hr">
	<hr>
	</div>
	<div class="btn">
		<input type="submit" name="btn" value="Order Online" class="btn btn-primary"/>
	</div>
	
	
		<div class="image1">
		<img style="border-radius:10%" class="img-round" src="img/Ice Cream dessert.jpg"/>
	</div>
	<div class="foodname1">
		Ice Cream
	</div>
	<div class="foodmessage1">
		Testy
	</div>
	<div class="time1">
		30 Min
	</div>
	<div class="costmessage1">
		Accept payment & order online
	</div>
	<div class="foodcost1">
		100/-
	</div>
	<div class="hr1">
	<hr>
	</div>
	
	<div class="btn1">
		<input type="submit" name="btn" value="Order Online" class="btn btn-primary"/>
	</div>
	

	<div class="image">
		<img style="border-radius:10%" class="img-round" src="img/dal chaval.jpg"/>
	</div>
	<div class="foodname">
		Dal Chaval
	</div>
	<div class="foodmessage">
		Testy
	</div>
	<div class="time">
		30 Min
	</div>
	<div class="costmessage">
		Accept payment & order online
	</div>
	<div class="foodcost">
		120/-
	</div>
	<div class="hr">
	<hr>
	</div>
	
	<div class="btn">
		<input type="submit" name="btn" value="Order Online" class="btn btn-primary"/>
	</div>
	
	
		<div class="image1">
		<img style="border-radius:10%" class="img-round" src="img/Ice Cream dessert.jpg"/>
	</div>
	<div class="foodname1">
		Ice Cream
	</div>
	<div class="foodmessage1">
		Testy
	</div>
	<div class="time1">
		30 Min
	</div>
	<div class="costmessage1">
		Accept payment & order online
	</div>
	<div class="foodcost1">
		100/-
	</div>
	<div class="hr1">
	<hr>
	</div>
	
	<div class="btn1">
		<input type="submit" name="btn" value="Order Online" class="btn btn-primary"/>
	</div>
	

	
	<div class="image">
		<img style="border-radius:10%" class="img-round" src="img/dal chaval.jpg"/>
	</div>
	<div class="foodname">
		Dal Chaval
	</div>
	<div class="foodmessage">
		Testy
	</div>
	<div class="time">
		30 Min
	</div>
	<div class="costmessage">
		Accept payment & order online
	</div>
	<div class="foodcost">
		120/-
	</div>
	<div class="hr">
	<hr>
	</div>
	
	<div class="btn">
		<input type="submit" name="btn" value="Order Online" class="btn btn-primary"/>
	</div>
	
	
		<div class="image1">
		<img style="border-radius:10%" class="img-round" src="img/Ice Cream dessert.jpg"/>
	</div>
	<div class="foodname1">
		Ice Cream
	</div>
	<div class="foodmessage1">
		Testy
	</div>
	<div class="time1">
		30 Min
	</div>
	<div class="costmessage1">
		Accept payment & order online
	</div>
	<div class="foodcost1">
		100/-
	</div>
	<div class="hr1">
	<hr>
	</div>
	
	<div class="btn1">
		<input type="submit" name="btn" value="Order Online" class="btn btn-primary"/>
	</div>
 --%>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>