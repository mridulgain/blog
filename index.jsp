<html>
<head>
	<%@ include file = "option-home.jsp" %>
	<%@ include file = "dbConnection.jsp" %>
	<!-- Bootstrap core CSS -->
	

	<!-- Custom fonts for this template -->
	<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

	<!-- Custom styles for this template -->
	<link rel="stylesheet" type="text/css" href="css/post-style.css">
	<link rel="stylesheet" type="text/css" href="css/default.css">
<title>Student Registration Form</title>
</head>
<body>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select post_id, heading, name, sub_heading from user_posts order by publish_date, publish_time desc limit 3");
		ResultSet rs = p.executeQuery();

		while(rs.next()){
			String subhead = rs.getString(4);
			String pid = rs.getString(1);
			String heading = rs.getString(2);
			String author = rs.getString(3);
			//out.println(author);
			out.println("<div class='post-preview'>");
			out.println("<a href='view_single_post.jsp?pid=" + pid + "'>");
			out.println("<h2 class='post-title'>" + heading);
			
			out.println("</h2>");
			out.println("<h3 class='post-subtitle'>"+ subhead);
			
			out.println("</h3>");
			out.println("</a>");
			out.println("<p class='post-meta'>Posted by");
			out.println("<a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a>");
			out.println("on August 24, 2018</p>");
			out.println("<hr class = 'div-ruler'>");
			out.println("</div>");
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>

          
</body>
</html>
