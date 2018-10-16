<%@ include file = "option.html" %>
<html>
	<head>
		<title>
			Post
		</title>
	</head>
	<body>
		<form action="addPost_successful.jsp" method="post">
			<table align="center">

				<th colspan=2>
				<h1>Add post</h1>
				</th>
	
				<tr>
				<td>First name</td>
				<td><input type="text" name="name">
				</tr>
	
				<tr>
				<td>E-mail</td>
				<td><input type="text" name="email"></td>
				</tr>
						
				<tr>
				<td>Post</td>
				<td><textarea rows="4" cols="50" name="post"></textarea></td>
				</tr>
				
				<tr>
				<td align="right"><input type="submit" value="submit"></td>
				<td><input type="reset" value="reset"></td>
				</tr>	
			</table>
		</form>
	</body>
</html>
