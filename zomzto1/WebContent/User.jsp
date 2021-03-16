<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="Zomatofile.Userprofilerew"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Welcome user</title>
</head>
<body>
<style>
body {
        background-image:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url("img/maxresdefault.jpg");
        background-image: cover;
        /* width: 120%;
        height: 600px; */
}

.aa{
	width: 560px;
	height: 59px;
	background-color: rgba(0,0,0,0.5);
	margin: 0 auto;
	margin-top: 149.5px;
	padding-top: 10px;
	padding-left: 19.5px;
	border-radius:15px;
	color:white;
	font-weight:border; 
	box-shadow: inset 4px,4px rgba(0,0,0,0.5)
}


.wrap{
position: absolute;
width: 30%;
top: 12.5%;
left: 10%;
transform; 
translate(-50%,-50%);
}

.search{
width: 200%;
position: relative;
}

.searchterm{
float: left;
width: 100%;
border: 3px solid #00B4CC;
panding: 11px;
font-size: 28px;
outline: none;
border-radius:10px;
transition: is all;
}

.searchbtn{
position: absolute;
width: 50px;
height: 50px;
border: 1px solid #00B2CC;
background-color: #00B4CC;
text-align: center;
color: #fff;
cursor: pointer;
font-size: 20px;
border-radius:10px;
}
.searchterm:FOCUS {
	color: #00B4CC;
	border: 3px solid #fff;
}

.Login {
  position: absolute;
  top: 5px;
  left: 1200px;
  color: red;
  font-weight: bold;
  font-style: oblique;
  font-size: 25px;
}

.head
{
	margin-top: 15px;
	color: red;
}
#font
{
	color: white;
	font-style: oblique;
	font-style: italic;
	margin-left: 100px;
}
.mySlides
{
	margin-left: 30px;
	margin-top: 80px;
	width: 1300px;
	height: 400px;
}
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin-top: 430px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}
.btn{
	margin-top: -50px;
	margin-left: 820px;
	color: red;
	font-size: 34px;
	border-radius: 10px;
	background-color: #00B4CC;
	
}
.chip {
  display: inline-block;
  padding: 0 25px;
  height: 0px;
  font-size: 16px;
  line-height: 50px;
  border-radius: 25px;
  background-color: #f1f1f1;
  margin-left: 1100px;
  margin-top: -27%;
}

.chip img {
  float: left;
  margin: 0 10px 0 -25px;
  height: 52px;
  width: 55px;
  border-radius: 50%;
  
}
.manudropdown1
{
	margin-top: -100px;
	width: 80%;
	height: 100px;
	margin: 1px auto;
}
.manudropdown1 ul
{
	padding: 0px;
}
.manudropdown1 ul li{
	float: left;
	/* background-color: black; */
	color: black;
	width: 200px;
	height: 50px;
	font-size:25px;
	text-align:center;
	line-height: 50px;
	list-style: none;
	opacity:0.6;
}
.manudropdown1 ul li ul{
	display:none;
}
.manudropdown1 ul li:hover > ul
{
	display: block;
}
.manudropdown1 ul li:hover
{
	background-color: #32CD32;
	opacity:0.9;
}


.manudropdown1 ul li ul li
{
	position: relative;
}
.manudropdown1 ul li ul li ul
{
	position: absolute;
	left: 200px;
	top: 0px;
}
.mySlides
{
	margin-left: 30px;
	margin-top: 80px;
	width: 700px;
	height: 300px;
}
</style>

<body>

<%
	String strunm=request.getParameter("unm");
	System.out.println(strunm);
%>


<form action="coltrollerbtn" method="get">
	<div class="wrap">
		<div class="search">
			<input type="text" class="searchterm" name="txtsearch" placeholder="where do you live..">
			<input type="hidden" value="<%=strunm%>" name="unm"/>
			<button type="submit" class="btn" name="btn" value="search">
				<i class="fa fa-search"></i>
			</button>
			<div style="text-align:center">
			 	<!--  <span class="dot" onclick="currentSlide(1)"></span> 
  				 <span class="dot" onclick="currentSlide(2)"></span> 
 				 <span class="dot" onclick="currentSlide(3)"></span> --> 
			</div>
			
		</div>
	</div>
	<div class="head bg-danger">
			<h1><font id="font">Welcome to Zomato</font></h1>
	</div>
	<div class="row">
	<div class="col-md-3">
	<!-- <input type="submit" name="btn" class="btn" value="My Profile"/> -->
	<!-- <a href="openuser.jsp" name="btn"><div class="Login">My Profile</div></a> -->
	</div>
	</div>

	<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="img/Zomato.jpg">
  <img class="mySlides" src="img/food-design2.jpg">
  <img class="mySlides" src="img/vaca-frita.jpg">
</div>

</form>


	<div class="chip">
  <button style="border-radius:10px;">
  <img src="https://www.w3schools.com/howto/img_avatar.png" alt="Person" width="96" height="96"/>
  <%
  out .println("Hello "+strunm);
  %>
  <input type="hidden" value="<%=strunm%>" name="unm">
  </button>
  
  

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) 
  {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
  }
</script>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


</body>
</html>