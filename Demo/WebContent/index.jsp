<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="Header.jsp" %>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo Project</title>

</head>


<body>
	<form action="create-user" method="post">
	<br>
		<div>
			Username: <input type="text" id="uname"  name="username" onkeypress="checkValidity1()" placeholder="Enter Username" required=required>
			<p id="label1" style="color: red"></p>
		</div><br>
		<div>
			Password: <input type="password" id="pass" name="password" onkeypress="checkValidity2()" placeholder="Enter Password" required=required>
			<p id="label2" style="color: red"></p>
		</div><br>
		<div>
			<input type="reset" value="Reset">
			<input type="submit" value="Submit">
		</div>
		<br>
	</form>
	
	
	<script type="text/javascript">
/* 	var reg = /^[a-zA-Z0-9]/; */
	
/* 	var val1 = document.getElementById("uname").value;
	var val2 = document.getElementById("pass").value; */
	
	function checkValidity1()
	{
		var reg = /^[a-zA-Z0-9]/;
		
		var val1 = document.getElementById("uname").value;
		
		if(reg.test(val1))
			document.getElementById("label1").innerHTML = "*Please enter valid Username";
		else
			document.getElementById("label1").innerHTML = "";
	}
	
	function checkValidity2()
	{
		var reg = /^[a-zA-Z0-9]/;
		
		var val2 = document.getElementById("pass").value;
		
		if(reg.test(val2))
			document.getElementById("label2").InnerHTML = "*Please enter valid Username";
		else
			document.getElementById("label2").InnerHTML = "";
	}
		
	
	
	
	/* $(document).ready(function(){
			$("#uname").on('input',function(){
				var name1 = $("#uname").val();
				var name2 = fname.test(name1);
				
				if(name2)
				{
					$("#level1").css("display","none")
				}
				else
				{
					$("#level1").css("display","block")
				}
			})
		});
	
	$(document).ready(function(){
		  $("#pass").on("click", function(){
		    alert("The paragraph was clicked.");
		  }); */
	</script>
	
	
</body>
</html>