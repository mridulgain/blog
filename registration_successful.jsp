<%@ include file = "option.html" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		//sql
		PreparedStatement p = con.prepareStatement("Insert into users values(?,?,?,?,?)");
		p.setString(3,request.getParameter("fname"));
		p.setString(4, 	request.getParameter("lname"));
		p.setString(1,	request.getParameter("uname"));
		p.setString(2, 	request.getParameter("passwd"));
		p.setString(5, request.getParameter("email"));
		//run sql
		
		int temp = p.executeUpdate();
		if(temp > 0){
			out.println("You have registered Successfully");
		}
		else
			out.println("Registration unsuccessful");				
	}
	catch(SQLIntegrityConstraintViolationException e){
		out.println("Username already taken");	
	}
	catch(Exception e){
		out.println(e);
	}
%>
