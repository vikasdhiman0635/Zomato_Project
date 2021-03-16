<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Admin Page</title>
</head>
<style>
body {
        background-image: url("https://i.ytimg.com/vi/MWoFrMz8dU4/maxresdefault.jpg");
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

.Myprofile {
  position: absolute;
  top: 5px;
  left: 1250px;
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
	width: 700px;
	height: 300px;
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
.chip {
  display: inline-block;
  padding: 0 25px;
  height: 50px;
  font-size: 16px;
  line-height: 50px;
  border-radius: 25px;
  background-color: #f1f1f1;
  margin-left: 1100px;
  
}

.chip img {
  float: left;
  margin: 0 10px 0 -25px;
  height: 50px;
  width: 50px;
  border-radius: 50%;
  
}
.btn
{
	margin-left: 819px;
	margin-top: -50px;
	background-color: #00B4CC;
	font-size: 35px;
	border-radius: 10px;
}
.unm
{
	margin-left: 35px;
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
			<input type="text" class="searchterm" placeholder="where are you live">
			<button type="submit" class="btn" name="btn" value="searchh">
				<i class="fa fa-search"></i>
			</button>
			<div style="text-align:center">
			 	 <!-- <span class="dot" onclick="currentSlide(1)"></span> 
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
			<!-- <a href="Adminprofile.jsp" name="btn"><div class="Myprofile">My Profile</div></a> -->
			<div class="chip">
  				<img src="https://www.w3schools.com/howto/img_avatar.png" alt="Person" width="96" height="96">
  				<div class="unm">
  				<%=strunm%>
			</div>
  					 <a href="Adminprofile.jsp">vikas</a>
  				
			</div>
		</div>
	</div>
	
	<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="https://cookingislife.files.wordpress.com/2013/06/food-design2.jpg">
  <img class="mySlides" src="https://s3.amazonaws.com/techpluto/wp-content/uploads/2018/12/11121535/Zomato.jpg">
  <img class="mySlides" src="http://estefankitchen.com/wp-content/uploads/2017/08/vaca-frita.jpg">
</div>

</form>

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
  setTimeout(carousel, 2000);
  }
</script>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


</body>
</html>