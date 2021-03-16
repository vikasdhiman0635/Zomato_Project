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

<title>Card Payment</title>
<style>
.name{
	margin-left: 30%;
	margin-top: 5%;
	font-size: 25px;
	 
}
.h1
{
	color: red;
}
.card1
{
	margin-left: 30%;
	margin-top: 1%;
	font-size: 25px;
}
.date
{
	margin-left: 30%;
	margin-top: 1%;
	font-size: 25px;
}
.cvv
{
	margin-left: 30%;
	margin-top: 1%;
	font-size: 25px;
}
.txtname
{
	margin-left: 30%;
	margin-top: -3.9%;
}
.txtcard
{
	margin-left: 30%;
	margin-top: -3.9%;
}
.txtdate
{
	margin-left: 30%;
	margin-top: -3.9%;
}
.txtcvv
{
	margin-left: 30%;
	margin-top: -3.9%;
}
.btn
{
	margin-left: 60%;
	margin-top: 5%;
}
</style>
</head>
<body>
<div class="h1">
<i><u><center><h1>Card Details</h1></center></u></i>
</div>
<%
	String strid,strname,strimage,strfmessage,strcmessage,strtime,strcardname,strcardno,strdate,strcvv,strpwd;
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
	strcardname=request.getParameter("cardname");
	strcardno=request.getParameter("cardno");
	strdate=request.getParameter("date");
	strcvv=request.getParameter("cvv");
	strpwd=request.getParameter("pwd");
	
	System.out.println(strunm);
	System.out.println(strid+" "+strname+" "+strimage+" "+strfmessage+" "+strcmessage+" "+strtime+" "+intcost+" "+intqty+" "+strcardname+" "+strcardno+" "+strdate+" "+strcvv+" "+strpwd);
%>
<form action="coltrollerbtn" method="post">
<div class="name">
	Card Holder Name:-
	<div class="txtname"><mark><%=strcardname%></mark></div>
</div>
<div class="card1">
	Card No:-
	<div class="txtcard"><mark><%=strcardno%></mark></div>
</div>
<div class="date">
	Date:-
	<div class="txtdate"><mark><%=strdate%></mark></div>
</div>
<div class="cvv">
	CVV:-
	<div class="txtcvv"><mark><%=strcvv%></mark></div>
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
	<input type="hidden" value="<%=strcardname%>" name="cardname"/>
	<input type="hidden" value="<%=strcardno%>" name="cardno"/>
	<input type="hidden" value="<%=strdate%>" name="date"/>
	<input type="hidden" value="<%=strcvv%>" name="cvv"/>
	<input type="hidden" value="<%=strpwd%>" name="pwd"/>
</div>

<div>
	<input type="submit" value="Pay" name="btn" class="btn btn-primary"/>
</div>
</form>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


</body>
</html>