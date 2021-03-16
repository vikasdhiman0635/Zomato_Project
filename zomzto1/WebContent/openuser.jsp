<%@page import="Zomatofile.AdminManu" %>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>

<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Panel type page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>  
<style>  
.aa{
margin-left: 250px;
margin-top: 180px;
width: 800px;
height: 250px;
background-color: rgba(245,245,245);
padding-top: 10px;
padding-left: 20px;
border-radius:15px;
color:white;
font-weight:border; 
box-shadow: inset 4px,4px rgba(0,0,0,0.5)
}
.logo{	
  	margin-top: 25px;
  	margin-left: 150px;
  	fonst-size: 40px;
  	font-weight: bold;
  	
}
.foodname{
	font-weight: bold;
	font-size: 25px;
	margin-left:250px;
	margin-top: 20px;
	color: red;
}
.image
{
	<%
	for(int i=0;i<=1;i++)
	{%>
		margin-left:50px;
		<% 	
	}
	%>
	margin-top: -170px;
	margin-left: 0px; 
}
.foodmessage
{
	margin-left: 350px;
	color: red;
}
.foodfoodtime
{
	margin-top: 0px;
	margin-left: 400px;
	color: gray;
}
.foodcostmessage
{
	font-size: 19px;
	margin-left:300px;
	color: red; 
}
.foodrating
{
	font-size: 20px;
	margin-top: -98px;
	margin-left: 500px;
	color: red;
}
  </style>
</head>
<body>

<form action="coltrollerbtn" method="get">
<%
	LinkedList<AdminManu> lst=(LinkedList<AdminManu>)application.getAttribute("lst1");
/* //	desc ZomatoManu
//	Name        Null     Type           
//	----------- -------- -------------- 
//	FOODID      NOT NULL VARCHAR2(50)   
//	FOODNAME             VARCHAR2(50)   
//	FOODMESSAGE          VARCHAR2(80)   
//	FOODCOST             VARCHAR2(50)   
//	FOODTIME             VARCHAR2(50)   
//	COSTMESSAGE          VARCHAR2(650)  
//	RATING               VARCHAR2(50)   
//	IMAGE                VARCHAR2(1000) 
 */
	for(AdminManu e5:lst)
	{%>
		<div class="foodid">
		<%out.println(e5.getStrfoodid());%>
		</div>
		<%
	}
	for(AdminManu e5:lst)
	{%>
		<div class="foodname">
		<%out.println(e5.getStrfoodname()); %>
		</div>
		<%
	}
	for(AdminManu e5:lst)
	{%>
		<div class="foodmessage">
		<%out.println(e5.getStrfoodmessage());%>
		</div>
		<%
	}
	for(AdminManu e5:lst)
	{%>
		<div class="foodcost">
		<%out.println(e5.getIntfoodcost()); %>
		</div>
		<%
	}
	for(AdminManu e5:lst)
	{ %>
		<div class="foodtime">
		<%out.println(e5.getStrfoodtime()); %>
		</div>
		<%
	}
	for(AdminManu e5:lst)
	{ %>
		<div class="costmessge">
		<%out.println(e5.getStrcostmessage()); %>
		</div>
		<% 
	}
	for(AdminManu e5:lst)
	{
		%>
		<div class="rating">
		<%out.println(e5.getStrrating()); %>
		</div>
		<%
	}
	for(AdminManu e5:lst)
	{
	%>
		<div class="image">
		<img style='border-radius:10%' class='img-round' src='img/<%=e5.getStrimage()%>'/>
		</div>
	<%
	}
%>

</form>
</body>
</html>