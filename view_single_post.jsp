<!DOCTYPE html>
<html lang="en">

  <head>
	<%@ include file = "option.jsp" %>
	<%@ include file = "dbConnection.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/single-post.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/default.css">

  </head>

  <body>

    <!-- Navigation -->

    <!-- Page Header -->
    
<%
	try{
		PreparedStatement p = con.prepareStatement("Select heading, sub_heading, name, publish_date, publish_time, post from user_posts where post_id = ?");
		p.setString(1, request.getParameter("pid"));
		ResultSet rs = p.executeQuery();
		
		while(rs.next()){
			String heading = rs.getString(1);
		String subhead = rs.getString(2);
		String author = rs.getString(3);
		String publish_date = rs.getString(4);	
			out.println("<header class='masthead' style='background-image: url(img/images.jpg);'>");
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
			out.println(rs.getString(6));
			out.println("</div>");
			out.println("</div>");
			out.println("</div>");
			out.println("</article>");
		}		
	}
	catch(Exception e){
		response.sendRedirect("error-page.html");
	}
%>
   <!-- Post Content -->


    <hr>

 
    <!-- Custom scripts for this template -->
    <script src="js/clean-blog.min.js"></script>

  </body>

</html>
