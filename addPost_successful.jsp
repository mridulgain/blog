<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		PreparedStatement p = con.prepareStatement("insert into user_posts (name,email,phone,heading,sub_heading,post,publish_date, publish_time,theme) values(?, ?, ?, ?, ?, ?, current_date(), current_time(), ?)");
		p.setString(1, request.getParameter("name"));
		p.setString(2, request.getParameter("email"));
		p.setString(3, request.getParameter("phone"));
		p.setString(4, request.getParameter("heading"));
		p.setString(5, request.getParameter("sub_heading"));
		p.setString(6, request.getParameter("post"));
		p.setString(7, request.getParameter("theme"));
		
		int i = p.executeUpdate();
		if(i > 0)
			response.sendRedirect("index.jsp");
	}
	catch(Exception e){
		//out.println(e);	
		response.sendRedirect("error-page.html");
	}

%>
