<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		PreparedStatement p = con.prepareStatement("insert into user_posts (name,email,phone,heading,sub_heading,post,publish_date, publish_time) values(?, ?, ?, ?, ?, ?, current_date(), current_time()) ");
		p.setString(1, request.getParameter("name"));
		p.setString(2, request.getParameter("email"));
		p.setString(3, request.getParameter("phone"));
		p.setString(4, request.getParameter("heading"));
		p.setString(5, request.getParameter("sub_heading"));
		p.setString(6, request.getParameter("post"));
		
		int i = p.executeUpdate();
		if(i > 0)
			out.println("Post added successfully");
	}
	catch(Exception e){
		out.println(e);	
	}

%>
