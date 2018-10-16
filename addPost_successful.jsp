<%@ include file = "option.html" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		PreparedStatement p = con.prepareStatement("insert into user_posts (name,email,phone,post,publish_date) values(?, ?, ?, ?, current_timestamp())");
		p.setString(1, request.getParameter("name"));
		p.setString(2, request.getParameter("email"));
		p.setString(3, request.getParameter("phone"));
		p.setString(4, request.getParameter("post"));
		
		int i = p.executeUpdate();
		if(i > 0)
			out.println("Post added successfully");
	}
	catch(Exception e){
		out.println(e);	
	}

%>
