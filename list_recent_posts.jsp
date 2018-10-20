<%@ include file = "option.html" %>
<%@ include file = "dbConnection.jsp" %>
<head>
	<link rel="stylesheet" type="text/css" href="css/post.css">
</head>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select * from user_posts order by publish_date desc");
		ResultSet rs = p.executeQuery();

		int count = 0;
		while(rs.next()){
			count++;
			String post = rs.getString(7);
			out.println("<div class = 'post'>"+post+"</div>");
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>
