<! list the links of all posts in descending order>
<%@ include file = "option.html" %>
<%@ include file = "dbConnection.jsp" %>
<head>
	<link rel="stylesheet" type="text/css" href="css/post_list.css">
</head>
<ol>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select post_id, heading, name from user_posts order by publish_date desc");
		ResultSet rs = p.executeQuery();

		int count = 0;
		while(rs.next()){
			count++;
			String pid = rs.getString(1);
			String heading = rs.getString(2);
			String author = rs.getString(3);
			
			out.println("<div class = 'post'>");
			out.println("<li><a href='view_single_post.jsp?pid=" + pid + "'>");
			out.println(heading + "  by " + author);
			out.println("</li></a></div>");
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>
</ol>
