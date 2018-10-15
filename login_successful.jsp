<%@ include file = "option.html" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		//Sql
		PreparedStatement p = con.prepareStatement("Select first_name, last_name from users where username = ? and password = ?");
		p.setString(1, request.getParameter("uname"));
		p.setString(2, request.getParameter("passwd"));
		//run query
		ResultSet rs = p.executeQuery();
		
		if(rs.next())
			out.println("Logged in Successfully");
		else
			out.println("Log in failed.");
	}
	catch(Exception e){
		out.println(e);
	}
%>

