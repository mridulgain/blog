<!sign up page>
<%@ include file = "option.jsp"%>
<%
	if(session.getAttribute("userid") != null){
		out.println("Already logged in");
	}
	else{
%>
<html>
	<head>
		<title>
			Administrator Log in
		</title>
	</head>
	<body>
		<form action="login_successful.jsp" method="post">
			<table align="center">

				<th colspan=2>
				<h1>Admin Log in</h1>
				</th>
						
				<tr>
				<td>Username</td>
				<td><input type="text" name="uname"></td>
				</tr>
				
				<tr>
				<td>Password</td>
				<td><input type="password" name="passwd"></td>
				</tr>
				
				<tr>
				<td align="right"><input type="submit" value="Login"></td>
				<td><input type="reset" value="reset"></td>
				</tr>	
			</table>
		</form>
	</body>
</html>
<%
}
%>

