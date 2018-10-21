<! takes input an id and displays the corresponding post>
<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select heading, sub_heading, name, publish_date, publish_time, post from user_posts where post_id = ?");
		p.setString(1, request.getParameter("pid"));
		ResultSet rs = p.executeQuery();
		
		while(rs.next()){
			
			out.println("<div class='heading'>" + rs.getString(1) + "</div>");// the title
			out.println("<div class='sub+heading'>" + rs.getString(2) + "</div>"); //the tagline
			String author = rs.getString(3);
			out.println("<div class = 'author'>posted by <a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a></div>");//author
			String publish_date = rs.getString(4);	
			String publish_time = rs.getString(5);
			out.println("<div class = 'date'>on <a href = 'list_all_posts.jsp?search_on=publish_date&value=" + publish_date + "'>" + publish_date + "</a> at " + publish_time + "</div>");
			out.println("<div class = 'post'>" + rs.getString(6) + "</div>");//post
		
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>
