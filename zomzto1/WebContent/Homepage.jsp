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
<title>Homepage</title>
</head>
<style>
body {
        background-image:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url("img/maxresdefault.jpg");
        background-image: cover;
       /*  height: 100vh; */
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
left: 20%;
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
  left: 1200px;
  color: red;
  font-weight: bold;
  font-style: oblique;
  font-size: 40px;
  color: white;
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
.btn
{
	margin-left: 819px;
	margin-top: -50px;
	background-color: #00B4CC;
	font-size: 35px;
	border-radius: 10px;
}


</style>

<body>
<form action="coltrollerbtn" method="post">
	<div class="wrap">
		<div class="search">
			<input type="text" class="searchterm" name="txtsearch" placeholder="where do you live..">
			<button type="submit" class="btn" name="btn" value="searchh">
				<i class="fa fa-search"></i>
			</button>
			<!-- <div style="text-align:center">
			 	 <span class="dot" onclick="currentSlide(1)"></span> 
  				 <span class="dot" onclick="currentSlide(2)"></span> 
 				 <span class="dot" onclick="currentSlide(3)"></span> 
			</div> -->
			
		</div>
	</div>
	<div class="head bg-danger">
			<h1><font id="font">Welcome to Zomato</font></h1>
	</div>
	<div class="row">
	<div class="col-md-3">
	<a href="Login.jsp" name="btn"><div class="Login">Login</div></a>
	</div>
	</div>
	<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="img/Zomato.jpg">
  <img class="mySlides" src="img/food-design2.jpg">
  <img class="mySlides" src="img/vaca-frita.jpg">
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