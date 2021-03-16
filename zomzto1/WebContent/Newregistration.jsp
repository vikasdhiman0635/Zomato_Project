<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<style>

body
{
	background-image: url("https://c8.alamy.com/comp/MD3B05/different-bowls-with-assorted-indian-food-on-dark-wooden-background-top-view-dishes-and-appetizers-of-indian-cuisine-chicken-curry-rice-lentils-MD3B05.jpg");
	height: 100vh;	
}


* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 80%;
  padding-left: 25px;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

.step.finish {
  background-color: #4CAF50;
}
.aa{
	width: 600px;
	height: 400px;
	background-color: rgba(0,0,0,0.4);
	margin: 0 auto;
	margin-top: 80px;
	margin-left: 100px;
	padding-top: 10px;
	padding-left: 20px;
	border-radius:15px;
	color:white;
	font-weight:border; 
	box-shadow: inset 4px,4px rgba(0,0,0,0.5)
}
</style>
<body>
<div class="aa">
<form action="coltrollerbtn" method="get">
  <h1>Register:</h1>
   <div class="tab"><b>Name:</b>
 	   <p><input type="text" placeholder="First name..." oninput="this.className = ''" name="firstname"></p>
  	   <p><input type="text" placeholder="Last name..." oninput="this.className = ''" name="lastname"></p>
  </div>
  <div class="tab"><b>Contact Info:</b>
	    <p><input placeholder="E-mail..." oninput="this.className = ''" name="email"></p>
	    <p><input placeholder="Phone..." oninput="this.className = ''" name="phone"></p>
  </div>
  <div class="tab"><b>Birthday:</b>
	    <p><input placeholder="dd" oninput="this.className = ''" name="dd"></p>
	    <p><input placeholder="mm" oninput="this.className = ''" name="nn"></p>
	    <p><input placeholder="yyyy" oninput="this.className = ''" name="yyyy"></p>
  </div>
  <div class="tab"><b>Login Info:</b>
	    <p><input placeholder="Username..." oninput="this.className = ''" name="uname"></p>
	    <p><input placeholder="Password..." oninput="this.className = ''" name="pword" type="password"></p>
  </div>
  <div style="overflow:auto;">
    <div style="margin-left: 380px;">
    <div style="margin-top: 15px;">
	      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
	      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
    </div>
  </div>
  
  <div style="text-align:center;margin-top:40px;">
		    <span class="step"></span>
		    <span class="step"></span>
		    <span class="step"></span>
		    <span class="step"></span>
  </div>
</form>
</div>

<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>

</body>
</html>
