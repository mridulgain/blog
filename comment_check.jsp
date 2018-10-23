
<%@ include file = "view_single_post.jsp" %>

<%   
	try{
		String name = request.getParameter("name");
   		String email = request.getParameter("email");
   		String comment = request.getParameter("description");
 		String pid = request.getParameter("pid");

		PreparedStatement st = con.prepareStatement("insert into user_comments values(?,?,?,?,CURDATE(),CURTIME())");
		st.setString(1, pid);		
		st.setString(2, name);
		st.setString(3, email);
		st.setString(4, comment);

		int i = st.executeUpdate();
		response.sendRedirect("view_single_post.jsp?pid="+pid);
	}
	catch(Exception e)
	{
		response.sendRedirect("error-page.html");
	}    


%>
