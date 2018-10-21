<!Admin login>
<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		//Sql
		PreparedStatement p = con.prepareStatement("Select email from users where username = ? and password = ?");
		p.setString(1, request.getParameter("uname"));
		p.setString(2, request.getParameter("passwd"));
		//run query
		ResultSet rs = p.executeQuery();
		
		if(rs.next()){
			session.setAttribute("userid", rs.getString(1));
			session.setMaxInactiveInterval(60*30); 
			response.sendRedirect("index.jsp");
		}
		else
			out.println("Log in failed.");
	}
	catch(Exception e){
		out.println(e);
	}
%>

