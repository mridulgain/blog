<%@ page import ="java.sql.*" %>
<%
 
      String firstname = request.getParameter("firstname");
      String lastname = request.getParameter("lastname");
      String gender = request.getParameter("gender");
  		String username  = request.getParameter("username");
  		String password = request.getParameter("password");
      String phone =  request.getParameter("phone");
      String dob = request.getParameter("dob");
      String email = request.getParameter("email");
  		try
  		{
         
  		 Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdatabase","root","");
         Statement st = con.createStatement();
         int i = st.executeUpdate("insert into LoginDatabase1 values ('" + username +"' ,'"+ firstname + "' , '"+lastname + "' ,'"+ email + "','"+ phone + "','"+ dob + "','" + gender + "','" + password + "')" );
        // out.println(rs.next());
        // response.sendRedirect("success.jsp");
       
          if(i > 0 )
           { 
            	
        	    out.println("success");
           }

          else
          {
        	out.println("<script type =\"text/javascript\">");
        	out.println("alert('Username and password dont match');");
            out.println("localhost='index.jsp';");
            out.println("problem");
          }

  		}catch(Exception e)
  		  {
  		  		out.println(e);
  		  }
        finally
        {
               ;
        }
  		  

  	
  	
%>