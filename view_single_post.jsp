<! takes input an id and displays the corresponding post>
<%@ include file = "option.html" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select heading, sub_heading, name, publish_date, post from user_posts where post_id = ?");
		p.setString(1, request.getParameter("pid"));
		ResultSet rs = p.executeQuery();
		
		while(rs.next()){
			
			out.println("<div class='heading'>" + rs.getString(1) + "</div>");// the title
			out.println("<div class='sub+heading'>" + rs.getString(2) + "</div>"); //the tagline
			out.println("<div class = 'author'>posted by " + rs.getString(3) + "</div>");//author
			String publish_date = rs.getString(4);	
			String publish_time = "";
			out.println("<div class = 'date'>on " + publish_date + " at " + publish_time + "</div>");
			out.println("<div class = 'post'>" + rs.getString(5) + "</div>");
		
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>
