<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head><style>
body {
        background-image: url("img/close-up-of-fruits-hanging-on-tree-257840.jpg");
        background-image: cover;
        width: 100%;
		height: 100vh;
}

.Foodid
{
	margin-top: 10px;
	margin-left: 200px;
	font-size: 25px;
	color: white;
}

.txtfoodid
{
	margin-left: 150px;
	width: 250px;
	height: 25px;
}
.Foodname
{
	margin-top: 10px;
	margin-left:200px;
	font-size: 25px; color: white;
}
.txtfoodname
{
	margin-left: 110px;
	width: 250px;
	height: 25px;
}
.FoodMessage
{
	margin-top: 10px;
	margin-left: 200px;color: white;
	font-size: 25px;
}
.txtfoodmessage
{
	margin-left: 80px;
	width: 250px;
	height: 25px;
}
.foodcost
{
	margin-top: 10px;
	margin-left: 200px;color: white;
	font-size: 25px;
}
.txtfoodcost
{
	margin-left: 120px;
	width: 250px;
	height: 25px;
}

.foodtime
{
	margin-top: 10px;
	margin-left: 200px;
	font-size: 25px;color: white;
}
.txtfoodtime
{
	margin-left: 115px;
	width: 250px;
	height: 25px;
}
.foodcostmessage
{
	margin-top: 10px;
	margin-left: 200px;
	font-size: 25px;color: white;
}
.txtfoodcostmessage
{
	margin-left: 30px;
	width: 250px;
	height: 25px;
}
.foodrating
{
	margin-top: 10px;
	margin-left: 200px;
	font-size: 25px;color: white;
}
.txtfoodrating
{
	margin-left: 105px;
	width: 250px;
	height: 25px;
}
.image
{
	margin-top: 10px;
	margin-left: 200px;
	font-size: 25px;color: white;
}
.txtimage
{
	margin-left: 160px;
	width: 250px;
	height: 25px;
}

.btn
{
	margin-top: 20px;
	margin-left: 800px;
	width: 150px;
	height: 30px;
	color: red; 
}
</style>
<body>
<form action="coltrollerbtn" method="get">
	<div class="row">
		<div class="col-md-3">
			<div class="Foodid"><b>Food Id:-</b>
			<input type="text" class="txtfoodid" name="txtid" required/>
			</div> 
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="Foodname"><b>Food Name:-</b>
			<input type="text" class="txtfoodname" name="txtname" required/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="FoodMessage"><b>Food Message:-</b>
			<input type="text" class="txtfoodmessage" name="txtmessage" required/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="foodcost"><b>Food Cost:-</b>
			<input type="text" class="txtfoodcost" name="txtcost" required/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="foodtime"><b>Food Time:-</b>
			<input type="text" class="txtfoodtime" name="txttime" required/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="foodcostmessage"><b>Food cost Message:-</b>
			<input type="text" class="txtfoodcostmessage" name="txtcostmessage" required/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="foodrating"><b>Food rating:-</b>
			<input type="text" class="txtfoodrating" name="txtfoodrating" required/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="image"><b>Image:-</b>
			<input type="text" class="txtimage" name="txtfoodimage" required/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<input type="submit" class="btn" name="btn" value="Food Updated" required/>
			</div>
		</div>
	</div>
</form>
</body>
</html>