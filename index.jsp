<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>
<head>
	<link rel="stylesheet" type="text/css" href="css/post.css">
</head>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select post_id, heading, name from user_posts order by publish_date, publish_time desc limit 3");
		ResultSet rs = p.executeQuery();

		while(rs.next()){
			String pid = rs.getString(1);
			String heading = rs.getString(2);
			String author = rs.getString(3);
			//out.println(author);
			out.println("<div class = 'post'>");
			out.println("<li><a href='view_single_post.jsp?pid=" + pid + "'>" + heading + "</a>");
			out.println("by <a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a>");
			
			//moderator gets aa delete button
			if(session.getAttribute("userid") != null && session.getAttribute("userid").equals("admin@rohan.com")){
				out.println("<a href='delete_single_post.jsp?pid=" + pid + "'>Delete</a>");			
			}
			out.println("</div>");
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>
