<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
	background-image: url("img/915dcea243f2065e875f6c131c1ab72c2b7cb7d0.jpg");
	width: 100%;
	height: 100vh;
}
.name
{
	margin-left: 20%;
	margin-top: 5%;
	color: white;
	font-size: 25px;
}
.h1
{
	position: center;
	font-size: 50px;
	color: red;
}
.no
{
	margin-left: 20%;
	margin-top: 1%;
	font-size: 25px;
	color: white;
}
.date
{
	margin-left: 20%;
	margin-top: 1%;
	font-size: 25px;
	color: white;
}
.txtname
{
	margin-left: 8%;
	border-radius: 10px;
}
.txtno
{
	margin-left: 18.5%;
	border-radius: 10px;	
}
.txtdate
{
	margin-left: 16.5%;
	border-radius: 10px;
}
.txtcvv
{
	margin-left: 22.7%;
	border-radius: 10px;
}
.cvv
{
	margin-left: 20%;
	margin-top: 1%;
	font-size: 25px;
	color: white;
}
.openBtn
{
	margin-left: 70%;
	margin-top: 3%;
	font-size: 20px;
	color: black;
}


* {
  box-sizing: border-box;
}

.openBtn {
  background: lightblue;
  border-radius: 5px;
  padding: 10px 15px;
  font-size: 20px;
  cursor: pointer;
  position: center;
}

.openBtn:hover {
  background: #bbb;
}

.overlay {
  height: 100%;
  width: 100%;
  display: none;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
}

.overlay-content {
  position: relative;
  top: 46%;
  width: 80%;
  text-align: center;
  margin-top: 30px;
  margin: auto;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
  cursor: pointer;
  color: white;
}

.overlay .closebtn:hover {
  color: #ccc;
}

.overlay input[type=text] {
  padding: 15px;
  font-size: 17px;
  border: none;
  float: left;
  width: 80%;
  background: white;
}

.overlay input[type=text]:hover {
  background: #f1f1f1;
}

.overlay button {
  float: left;
  width: 20%;
  padding: 15px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.overlay button:hover {
  background: #bbb;
}
.pin
{
	color: red;
	margin-left: 0%;
	font-size: 25px;
	margin-top: -5%;
	
}
.txtpin
{
	margin-left: 5%;
	border-radius: 10px;
}
.btn
{
	margin-left: 40%;
}
.foodname
{
	margin-left: 70%;
	color: red;
	font-size: 25px;
	margin-top: 2%;
	font-weight: bold;
	
}
.cost
{
	margin-left: 83%;
	color: red;
	font-size: 25px;
	margin-top: -2.8%;
	font-weight: bold;
}
</style>
</head>
<body>

<%
	String strid,strname,strimage,strfmessage,strcmessage,strtime;
	int intcost,intqty;
	String strunm=request.getParameter("unm");
	strid=request.getParameter("id");	
	strname=request.getParameter("name");
	strimage=request.getParameter("image");
	strfmessage=request.getParameter("fmessage");
	strcmessage=request.getParameter("cmessage");
	intcost=Integer.parseInt(request.getParameter("cost"));
	strtime=request.getParameter("time");
	intqty=Integer.parseInt(request.getParameter("qty"));
%>


<h1>

<div class="h1">
<i><u><center>Online Payment by card for Zomato</center></u></i>
</div>
</h1>

<form action="paydetails.jsp" method="post">
<div class="foodname">
	<%=strname%>
</div>
<div class="cost">
	(Price:-<%=intcost%>)
</div>
<div class="name">
	Card Holder Name:
	<input type="text" class="txtname" name="cardname" Placeholder="Enter Your Name....." required/>
</div>

<div class="no">
	Card No:
	<input type="text" class="txtno" name="cardno" placeholder="0000-0000-0000-0000" required/>
</div>

<div class="date">
	Valid Upto: 
	<input type="text" class="txtdate" name="date" placeholder="month/year" required/>
</div>
<div class="cvv">
	CVV:
	<input type="text" class="txtcvv" name="cvv" placeholder="000" required/>
</div>


<div id="myOverlay" class="overlay">
  <span class="closebtn" onclick="closeSearch()" title="Close Overlay">×</span>
  <div class="overlay-content">
    
    <div class="pin">
    Pin No:
   		<input type="password" name="pwd" placeholder="Enter your 4-digit pin no!!!" class="txtpin" required/>
   		</div>
   		<div>
   			<input type="hidden" value="<%=strunm%>" name="unm"/>
   			<input type="hidden" value="<%=strid%>"  name="id"/>
			<input type="hidden" value="<%=strname%>" name="name"/>
			<input type="hidden" value="<%=strimage%>" name="image"/>
			<input type="hidden" value="<%=intcost%>" name="cost"/>
			<input type="hidden" value="<%=strfmessage%>" name="fmessage"/>
			<input type="hidden" value="<%=strcmessage%>" name="cmessage"/>
			<input type="hidden" value="<%=strtime%>" name="time"/>
			<input type="hidden" value="<%=intqty%>" name="qty"/>
   			<input type="hidden" value="cardname" name="cardname"/>
   			<input type="hidden" value="cardno" name="cardno"/>
   			<input type="hidden" value="date" name="date"/>
   			<input type="hidden" value="cvv" name="cvv"/>
   			<input type="hidden" value="pwd" name="pwd">
   		</div>
 
   		<div>
   		<br />
   		<input type="submit" value="pay" name="btn" class="btn btn-primary"/>
   		</div>
    </div>
    </div>
    </form>
  </div>
</div>




<!-- <div>
	<input value="Proceed" name="btn" onclick="openSearch()" class="openBtn"/>
</div>
 -->
<input type="submit" class="btn btn-primary" onclick="openSearch()" value="Proceed" name="btn"/>

<script>
function openSearch() {
  document.getElementById("myOverlay").style.display = "block";
}

function closeSearch() {
  document.getElementById("myOverlay").style.display = "none";
}
</script>



<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


</body>
</html>