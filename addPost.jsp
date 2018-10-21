<%@ include file = "option.jsp" %>
<html>
	<head>
		<title>
			Post
		</title>
		<script type="text/javascript" src="js/nicEdit.js"></script>
		<script type="text/javascript">
			bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
		</script>
	</head>
	<body>
		<form action="addPost_successful.jsp" method="post">
			<table align="center">

				<th colspan=2>
				<h1>Add post</h1>
				</th>
	
				<tr>
				<td>Your name</td>
				<td><input type="text" name="name">
				</tr>
	
				<tr>
				<td>E-mail</td>
				<td><input type="text" name="email"></td>
				</tr>
	
			</table>
			<div>Phone<input type="text" name="phone"></div>
			<div>Add title<input type="text" name="heading"></div>
			<div>Add sub-heading<input type="text" name="sub_heading"></div>
			<div><textarea name="post" style="width: 100%; height: 100%"></textarea></div>
			<div align="center"><input type="submit" value="submit"></div>
		</form>
	</body>
</html>
