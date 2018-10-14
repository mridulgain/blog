<!sign up page>
<%@ include file = "option.html"%>
<html>
	<head>
		<title>
			Sign up
		</title>
	</head>
	<body>
		<form action="registration_successful.jsp" method="post">
			<table align="center">

				<th colspan=2>
				<h1>Sign up</h1>
				</th>
	
				<tr>
				<td>First name</td>
				<td><input type="text" name="fname">
				</tr>

				<tr>
				<td>Last name</td>
				<td><input type="text" name="lname">
				</tr>
	
				<tr>
				<td>E-mail</td>
				<td><input type="text" name="email"></td>
				</tr>
						
				<tr>
				<td>Select an username</td>
				<td><input type="text" name="uname"></td>
				</tr>
				
				<tr>
				<td>Password</td>
				<td><input type="password" name="passwd"></td>
				</tr>
			
				<tr>
				<td>Re-enter your password</td>
				<td><input type="password" name="re_passwd"></td>
				</tr>
				
				<tr>
				<td align="right"><input type="submit" value="submit"></td>
				<td><input type="reset" value="reset"></td>
				</tr>	
			</table>
		</form>
	</body>
</html>
