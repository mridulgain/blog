<! deletion of post>
<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>

<%
	try{
		//sql
		PreparedStatement p = con.prepareStatement(" delete from user_posts where post_id = ? ");

		p.setString(1, request.getParameter("pid"));

		//run sql
		
		int temp = p.executeUpdate();
		if(temp > 0){
			response.sendRedirect("list_all_posts.jsp");
		}
				
	}
	catch(SQLIntegrityConstraintViolationException e){
		out.println("Username already taken");	
	}
	catch(Exception e){
		response.sendRedirect("error-page.html");
	}
%>
