<! takes input an id and displays the corresponding post>
<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select heading, sub_heading, name, publish_date, publish_time, post from user_posts where post_id = ?");
		p.setString(1, request.getParameter("pid"));
		ResultSet rs = p.executeQuery();
		
		while(rs.next()){
			
			out.println("<div class='heading'>" + rs.getString(1) + "</div>");// the title
			out.println("<div class='sub+heading'>" + rs.getString(2) + "</div>"); //the tagline
			String author = rs.getString(3);
			out.println("<div class = 'author'>posted by <a href = 'list_all_posts.jsp?search_on=name&value=" + author + "'>" + author + "</a></div>");//author
			String publish_date = rs.getString(4);	
			String publish_time = rs.getString(5);
			out.println("<div class = 'date'>on <a href = 'list_all_posts.jsp?search_on=publish_date&value=" + publish_date + "'>" + publish_date + "</a> at " + publish_time + "</div>");
			out.println("<div class = 'post'>" + rs.getString(6) + "</div>");//post
		
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>

         <h2> COMMENTS </h2>
         

        <form action = "comment_check.jsp" method = "POST">
        <input type = "hidden" name = "pid"  value = '<%=request.getParameter("pid")%>'>
      
        <div>Name<input type = "text" name = "name">  </div>
        <div>Email<input type = "email" name = "email"></div><br>
        <div>Comment<input type ="text "name="comment" style="width: 30%; height: 30%"></div>
		<div align="center"><input type="submit" value="submit"></div>


		<%
   
         String a = request.getParameter("pid");
        PreparedStatement p1 = con.prepareStatement("Select name,comment,publish_date, publish_time from user_comments where post_id = " + a );
		ResultSet rs1 = p1.executeQuery();   
		if(rs1.getRow() != 0 ) out.println("<h2> coments</h2>");
        while(rs1.next())
        {
			out.println("<h3>" + rs1.getString(1) + "</h3>");// the title
			out.println("on " + rs1.getString(3) + " at "+rs1.getString(4) + "</b>"); //the tagline
			String comment = rs1.getString(2);
			out.println("<p>" + comment + "</p>");//comment
         }   
         
		%>
        </form>
