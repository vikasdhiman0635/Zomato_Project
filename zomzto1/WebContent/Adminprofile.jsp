<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin data inserted</title>
</head>
<body>

<style>
body
{
	background: url("img/CMS_Creative_164657191_Kingfisher.jpg") center no-repeat;
	height: 100vh;
	background-size:cover;
}
.manudropdown1
{
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
	background-color: black;
	color: white;
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
</style>

</head>
<body>
<div class="manudropdown1">
	<ul>
		<li>Insert Manu
		<ul>
				<a href="insertvegfood.jsp"><li>Veg food</li></a>
				<a href="insertvegfood.jsp"><li>Non Veg food</li></a>
				<a href="insertvegfood.jsp"><li>Desert</li></a>
				<a href="insertvegfood.jsp"><li>Fast Food</li></a>
				<a href="insertvegfood.jsp"><li>Sweets</li></a>
		</ul>
		</li>
			
		<li>Delete Manu
			<ul>
				<a href="deleteVegfood.jsp"><li>Veg food</li></a>
				<a href="deleteVegfood.jsp"><li>Non Veg food</li></a>
				<a href="deleteVegfood.jsp"><li>Desert
					<!-- <ul>
						<li>hello</li>
						<li>hello1</li>
					</ul> -->
				</li></a>
				<a href="deleteVegfood.jsp"><li>Fast Food</li></a>
				<a href="deleteVegfood.jsp"><li>Sweets</li></a>
			</ul>
		</li>
			
		<li>Update Manu
			<ul>
				<a href="updatevegfood.jsp"><li>Veg food</li></a>
				<a href="updatevegfood.jsp"><li>Non Veg food</li></a>
				<a href="updatevegfood.jsp"><li>Desert
					<!-- <ul>
						<li>hello</li>
						<li>hello1</li>
					</ul> -->
				</li></a>
				<a href="updatevegfood.jsp"><li>Fast Food</li></a>
				<a href="updatevegfood.jsp"><li>Sweets</li></a>
			</ul>
		
		</li>
	</ul>
	</div>
</body>
</html>