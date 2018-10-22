<! search" >

<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>
<head>
	<link rel="stylesheet" type="text/css" href="css/post_list.css">
</head>

<%
	try{

		String search_key = request.getParameter("search_key");  
		
		String finalSql = "Select post_id, heading, name from user_posts where name like '%" + search_key + "%' order by publish_date, publish_time";
		//out.println(finalSql);		
		PreparedStatement p = con.prepareStatement(finalSql);
		ResultSet rs = p.executeQuery();

		int count = 0;
		out.println("<h3>Found in authors : </h3>");
		while(rs.next()){
			count++;
			String pid = rs.getString(1);
			String heading = rs.getString(2);
			String author = rs.getString(3);
			//out.println(author);
			out.println("<div>");
			out.println("<a href='view_single_post.jsp?pid=" + pid + "'>" + heading + "</a>");
			out.println("by <a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a>");
			out.println("</div>");
			//moderator gets aa delete button
			if(session.getAttribute("userid") != null && session.getAttribute("userid").equals("admin@rohan.com")){
				out.println("<div><a href='delete_single_post.jsp?pid=" + pid + "'>Delete</a></div>");			
			}
		}
		finalSql = "Select post_id, heading, name from user_posts where heading like '%" + search_key + "%' order by publish_date, publish_time";
		p = con.prepareStatement(finalSql);
		rs = p.executeQuery();

		count = 0;
		out.println("<h3>Found in blogs : </h3>");
		while(rs.next()){
			count++;
			String pid = rs.getString(1);
			String heading = rs.getString(2);
			String author = rs.getString(3);
			//out.println(author);
			out.println("<div>");
			out.println("<a href='view_single_post.jsp?pid=" + pid + "'>" + heading + "</a>");
			out.println("by <a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a>");
			out.println("</div>");
			//moderator gets aa delete button
			if(session.getAttribute("userid") != null && session.getAttribute("userid").equals("admin@rohan.com")){
				out.println("<div><a href='delete_single_post.jsp?pid=" + pid + "'>Delete</a></div>");			
			}
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>
