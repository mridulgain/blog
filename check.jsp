<%@ page import ="java.sql.*" %>
<%
 
 String action = request.getParameter("action");
  if(action.equals("signin"))
  	{
  		String username  = request.getParameter("username");
  		String password = request.getParameter("password");

  		try
  		{
         
  		 Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdatabase","root","");
         Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select  * from LoginDatabase1 where username = '" + username +"' and password = '" + password +"'");
        // out.println(rs.next());
        // response.sendRedirect("success.jsp");
       
          if( rs.next())
           { 
            	
        	    response.sendRedirect("http://localhost:8080/success.jsp");
           }

          else
          {
        	out.println("<script type =\"text/javascript\">");
        	out.println("alert('Username and password dont match');");
            out.println("localhost='index.jsp';");
            
          }

  		}
  		catch(Exception e)
  		  {
  		  		out.println(e);
  		  }
  	}	  

  	else if(action.equals("signup"))
  		  {
  		  		response.sendRedirect("signup.jsp");
  		  }
  	
%>