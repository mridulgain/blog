<html lang="en">

  <head>
	<%@ include file = "option-all-list.jsp" %>
	<%@ include file = "dbConnection.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

    <!-- Bootstrap core CSS -->
    

    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css" href="css/post-style.css">
	<link rel="stylesheet" type="text/css" href="css/default.css">
<link rel="stylesheet" type="text/css" href="css/delete-button.css">
  </head>

<%
	try{
		String whereClause = "";
		String search_on = request.getParameter("search_on");
		if(search_on != null){
			whereClause = "where " + search_on + " like '" + request.getParameter("value") + "' ";  
		}
		String finalSql = "Select post_id, heading, sub_heading, name, publish_date, publish_time, post from user_posts " + whereClause+ " order by publish_date, publish_time desc";
		//out.println(finalSql);		
		PreparedStatement p = con.prepareStatement(finalSql);
		ResultSet rs = p.executeQuery();

		int count = 0;
		while(rs.next()){
			count++;
			String pid = rs.getString(1);
			String heading = rs.getString(2);
			String subhead = rs.getString(3);
		String author = rs.getString(4);
		String publish_date = rs.getString(5);
			//out.println(author);
			out.println("<div class='post-preview'>");

			out.println("<a href='view_single_post.jsp?pid=" + pid + "'>");
			out.println("<h2 class='post-title'>" + heading);
			
			out.println("</h2>");
			out.println("<h3 class='post-subtitle'>"+ subhead);
			
			out.println("</h3>");
			out.println("</a>");
			out.println("<p class='post-meta'>Posted by");
			out.println("<a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a> on");
			out.println(publish_date);
			out.println("</p>");
			//moderator gets aa delete button
			if(session.getAttribute("userid") != null && session.getAttribute("userid").equals("admin@rohan.com")){
				out.println("<p align = 'right' class = 'button-para'><a class=\"button\" href='delete_single_post.jsp?pid=" + pid + "'><span>Delete </span></a></p><hr class = 'div-ruler'>");			
			}
			else{
			out.println("<hr class = 'div-ruler'>");
		}
			out.println("</div>");
		}
	}
	catch(Exception e){
		response.sendRedirect("error-page.html");
	}
%>
 <hr>

 
    <!-- Custom scripts for this template -->
    <script src="js/clean-blog.min.js"></script>

  </body>

</html>
