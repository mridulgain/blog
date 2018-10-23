<!DOCTYPE html>
<html lang="en">

  <head>
	<%@ include file = "option.jsp" %>
	<%@ include file = "dbConnection.jsp" %>

    <title></title>
	
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="css/single-post.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/default.css">

  </head>

  <body>
	
    <!-- Navigation -->

    <!-- Page Header -->
    
<%
	try{
		PreparedStatement p = con.prepareStatement("Select heading, sub_heading, name, publish_date, publish_time, post ,theme from user_posts where post_id = ?");
		p.setString(1, request.getParameter("pid"));
		ResultSet rs = p.executeQuery();
		
		while(rs.next()){
			String heading = rs.getString(1);
		String subhead = rs.getString(2);
		String author = rs.getString(3);
		String publish_date = rs.getString(4);
		String theme = "images.jpg"; //user defined theme rs.getString("theme");
		if(rs.getString(7)!=null)theme = rs.getString(7);
			
			out.println("<header class='masthead' style='background-image: url(img/" + theme + ");'>");
			out.println("<div class='overlay'></div>");
			out.println("<div class='container'>");
			out.println("<div class='row'>");
			out.println("<div class='col-lg-8 col-md-10 mx-auto'>");
			out.println("<div class='post-heading'>");
			out.println("<h1>"+ heading + "</h1>");
			out.println("<h2 class='subheading'>"+ subhead +"</h2>");
			out.println("<span class='meta'>Posted by");
			out.println("<a href = 'list_all_post.jsp?search_on=name&value=" + author + "'>" + author + "</a>");
			out.println("on <a href = 'list_all_posts.jsp?search_on=publish_date&value=" + publish_date + "'>" + publish_date + "</a> </span>");
			out.println("</div>");
			out.println("</div>");
			out.println("</div>");
			out.println("</div>");
			out.println("</header>");
			out.println("<article>");
			out.println("<div class='container'>");
			out.println("<div class='row'>");
			out.println("<div class='col-lg-8 col-md-10 mx-auto'>");
<<<<<<< HEAD
			out.println(rs.getString(6));//the post
			out.println("</div>");
			out.println("</div>");
			out.println("</div>");
			out.println("</article>");
=======
			out.println(rs.getString(6));

>>>>>>> kd
		}		
	}
	catch(Exception e){
		//out.println(e);
		response.sendRedirect("error-page.html");
	}
%>
		</div>
</div>
</div>
</article>

<hr class = 'style-one'>
<hr class = 'style-one'>
<article>
<div class='container'>
<div class='row'>
<div class='col-lg-8 col-md-10 mx-auto'>

		

 <h3 style=" padding-bottom: 20px;"> Add Comment: </h3>
         <form action = "comment_check.jsp" method = "POST">
        <input type = "hidden" name = "pid"  value = '<%=request.getParameter("pid")%>'>
      
		<div class="form-group ">
			<label for="slug" style= "font-size:17px;">Name </label>
			<input type="text" name="name" class="form-control" required="true"/>
		</div>
				<div class="form-group">
		<label for="description" style= "font-size:17px;">Comment:</label>
		<textarea rows="10" class="form-control" name="description" ></textarea>
		</div>
		<div class="form-group" >
		<button type="submit" class="btn btn-primary">
		Post
		</button>
		</div>
		</form>
		<%
   
         String a = request.getParameter("pid");
        PreparedStatement p1 = con.prepareStatement("Select name,comment,publish_date, publish_time from user_comments where post_id = " + a );
<<<<<<< HEAD
		ResultSet rs1 = p1.executeQuery();   
		out.println(rs1.getRow());//{out.println("<h2> comments</h2>");}
=======
		ResultSet rs1 = p1.executeQuery(); 

		//
		out.println("<h3 style= \"padding-bottom: 20px;\"> Comments</h3>");

>>>>>>> kd
        while(rs1.next())
        {
			out.println("<h4 class = 'commenter'>" + rs1.getString(1) + "</h4>");// the title
			out.println("on <i>" + rs1.getString(3) + " at "+rs1.getString(4) + "</i>"); //the tagline
			out.println("<p class = 'user-comment'>" + rs1.getString(2) + "</p>");
			out.println("<hr class = 'style-four'>");//comment
         }   
		%>
        
</div>
</div>
</div>
</article>
  </body>

</html>
