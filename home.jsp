<!DOCTYPE html>
<html>
<head>
	<title>BlogSocial</title>

	<script >
		function onValidate()
		{  
			var username = document.getElementById("username").value;
			
			if(username.length == 0)
			{
				alert("please enter username");
				document.form1.name.focus();
				return false;
			}

			var password = document.getElelmentById("Password").value;
			if(password == " ")
			{
				alert("please enter password");
				document.form1.password.focus();
				return false;
			}

		}
	</script>	
</head>
<body>

	<form method="post" action = "check.jsp" name = "form1">
		Username <input type="text" id="username" name = "username"><br>
		Password <input type="password" id="password" name = "password"><br>
		 <button type = "submit" name = "action" onclick="onValidate()" value = "signin">SignIn</button>
    <button type="submit" name = "action" value = "signup">SignUp</button>
    
	</form>

</body>
</html>