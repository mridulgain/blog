<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/menubar.css">
	</head>
<% 
	if(session.getAttribute("userid") != null && session.getAttribute("userid").equals("admin@rohan.com"))
		out.println("<div class='admin_menuBar'>");//admin menu
	else
		out.println("<div class='menuBar'>");//normal menu
%>
		<a href = "index.jsp">Home</a>|
		<a href = "search_posts.jsp">Search posts</a>|
		<a href = "list_all_posts.jsp">All Posts</a> |
		<a href = "addPost.jsp">Publish your blog</a>|
		<a href="login.jsp">Admin Login</a> |
<%
	if(session.getAttribute("userid") != null){
		out.println("<a href = 'logout.jsp'>Logout</a>|");	
	}
%>
	
	<br>
	</div>
</html>
