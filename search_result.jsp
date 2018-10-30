<! search" >

<head>
	<%@ include file = "option-sr.jsp" %>
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
</head>

<%
	try{

		//by author search
		String search_key = request.getParameter("search_key");  
		
		String finalSql = "Select post_id, heading, name from user_posts where name like '%" + search_key + "%' order by publish_date, publish_time desc";
		//out.println(finalSql);		
		PreparedStatement p = con.prepareStatement(finalSql);
		ResultSet rs = p.executeQuery();

		int count = 0;
		out.println("<h2 style = 'padding-top: 50px; padding-bottom: 30px; text-align: center; font-family:georgia,garamond,serif;'>BY AUTHOR  </h2>");
		
		int flagAuthor = 0;
		rs.last();
		if(rs.getRow() == 0){
			out.println("Nothing found for <i>" + search_key + "</i> in author"); flagAuthor = 1;}
		rs.beforeFirst();
		
		while(rs.next()){
			count++;
			String pid = rs.getString(1);
			String heading = rs.getString(2);
			String author = rs.getString(3);
			//out.println(author);
			out.println("<div class='post-preview'>");
			out.println("<a href='view_single_post.jsp?pid=" + pid + "'>");
			out.println("<h2 class='post-title'>" + heading);
			
			out.println("</h2>");
			out.println("</a>");
			out.println("<p class='post-meta'>Posted by");
			out.println("<a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a>");
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
		finalSql = "Select post_id, heading, name from user_posts where heading like '%" + search_key + "%' order by publish_date, publish_time desc";
		p = con.prepareStatement(finalSql);
		rs = p.executeQuery();
%>
<BR><BR>
<HR><BR><BR>
<%
		//by title
		count = 0;
		out.println("<h2 style = 'padding-top: 10px; padding-bottom: 30px; text-align: center; font-family:georgia,garamond,serif;'>BY TITLE  </h2>");
		
		int flagHeading = 0;
		rs.last();
		if(rs.getRow() == 0){
			out.println("Nothing found for <i>" + search_key + "</i> in heading."); flagHeading = 1;}
		rs.beforeFirst();
		
		if(flagAuthor == 1 && flagHeading == 1){
			response.sendRedirect("search-not-found.jsp");
		}
		
		while(rs.next()){
			count++;
			String pid = rs.getString(1);
			String heading = rs.getString(2);
			String author = rs.getString(3);
			//out.println(author);
			out.println("<div class='post-preview'>");
			out.println("<a href='view_single_post.jsp?pid=" + pid + "'>");
			out.println("<h2 class='post-title'>" + heading);
			
			out.println("</h2>");
			out.println("</a>");
			out.println("<p class='post-meta'>Posted by");
			out.println("<a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a>");
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
