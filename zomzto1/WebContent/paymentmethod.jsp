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
body {
	background-image: url("img/burrito-chicken-delicious-dinner-461198.jpg");
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

.openBtn {
  background: #f1f1f1;
  border: none;
  padding: 10px 15px;
  font-size: 20px;
  cursor: pointer;
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
.Logo
{
	margin-top: 3%;
	margin-left: 10%;
	color: red;
	font-size: 30px;
	font-weight: bold;
}
.check
{
	font-size: 20;	
	margin-top: 5%;
	margin-left: 20%;
}
.payment
{
	margin-left: 40%;
	margin-top: -2%;
}
.Payment
{
	color: red;
	margin-top: -25%;
	margin-left: -5%;
	font-size: 25px;
}
.cdbtn
{
	margin-top: -60%;
}

#for
{
	font-size: 25px;
}
.foodname
{
	margin-left: 70%;
	color: red;
	font-size: 25px;
}
.cost
{
	margin-left: 83.5%;
	margin-top: -2.7%;
	color: red;
	font-size: 25px;
}
.btn
{
	margin-left: 40%;
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

<div class="Logo">
	Zomato
</div>

<div id="myOverlay" class="overlay">
  <span class="closebtn" onclick="closeSearch()" title="Close Overlay">×</span>
  <div class="overlay-content">
    <form action="Creditbtn.jsp" method="post">
      <div class="Payment">
      <center>
      <img src="https://regal-software.com/site/gallery/news/shutterstock_219004666_1024x768_0.jpg"/>
      </center>
    
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
	</div>
    	
    
      
      <div class="cdbtn">
      	<input type="submit" value="Credit/Debit Card" name="btn" class="btn btn-primary">
      </div>
      </form>
      <br />
      
      <%-- <div>
	<input type="hidden" value="<%=strid%>"  name="id"/>
	<input type="hidden" value="<%=strname%>" name="name"/>
	<input type="hidden" value="<%=strimage%>" name="image"/>
	<input type="hidden" value="<%=intcost%>" name="cost"/>
	<input type="hidden" value="<%=strfmessage%>" name="fmessage"/>
	<input type="hidden" value="<%=strcmessage%>" name="cmessage"/>
	<input type="hidden" value="<%=strtime%>" name="time"/>
	<input type="hidden" value="<%=intqty%>" name="qty"/>
	</div> --%>


<form action="netbanking.jsp" method="post">

		<div>
		<input type="hidden" value="<%=strunm%>" name="unm" />
		<input type="hidden" value="<%=strid%>"  name="id"/>
		<input type="hidden" value="<%=strname%>" name="name"/>
		<input type="hidden" value="<%=strimage%>" name="image"/>
		<input type="hidden" value="<%=intcost%>" name="cost"/>
		<input type="hidden" value="<%=strfmessage%>" name="fmessage"/>
		<input type="hidden" value="<%=strcmessage%>" name="cmessage"/>
		<input type="hidden" value="<%=strtime%>" name="time"/>
		<input type="hidden" value="<%=intqty%>" name="qty"/>
		</div>
		
      <input type="submit" value="Net Banking" name="btn" class="btn btn-success">
      </div>
</form>
</div>
</div>

<div class="foodname">
	<%=strname%>
</div>
<div class="cost">
	(Price:-<%=intcost%>)
</div>
<div id="netbanking" class="overlay">
</div>
<div class="check">

<input type="button" class="btn bg-primary" style="margin-left: 10%;" value="Online Payment" onclick="openSearch()"/>
</div>

<form action="netbanking.jsp" method="post">
<div class="payment">
	
	<div>
	<input type="hidden" value="<%=strunm%>" name="unm" />
	<input type="hidden" value="<%=strid%>"  name="id"/>
	<input type="hidden" value="<%=strname%>" name="name"/>
	<input type="hidden" value="<%=strimage%>" name="image"/>
	<input type="hidden" value="<%=intcost%>" name="cost"/>
	<input type="hidden" value="<%=strfmessage%>" name="fmessage"/>
	<input type="hidden" value="<%=strcmessage%>" name="cmessage"/>
	<input type="hidden" value="<%=strtime%>" name="time"/>
	<input type="hidden" value="<%=intqty%>" name="qty"/>
</div>
</form>
</div>
<form action="Directbill.jsp" mathod="post">

	<div>
	<input type="hidden" value="<%=strunm%>" name="unm" />
		<input type="hidden" value="<%=strid%>"  name="id"/>
		<input type="hidden" value="<%=strname%>" name="name"/>
		<input type="hidden" value="<%=strimage%>" name="image"/>
		<input type="hidden" value="<%=intcost%>" name="cost"/>
		<input type="hidden" value="<%=strfmessage%>" name="fmessage"/>
		<input type="hidden" value="<%=strcmessage%>" name="cmessage"/>
		<input type="hidden" value="<%=strtime%>" name="time"/>
		<input type="hidden" value="<%=intqty%>" name="qty"/>
	</div>
	
	<input type="submit" value="Payment by Transfer" name="btn" class="btn btn-primary"/>
</form>

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
