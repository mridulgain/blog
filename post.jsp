<%@ include file = "option.html" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select * from user_posts order by publish_date desc");
		ResultSet rs = p.executeQuery();
%>
<head>
<link rel="stylesheet" type="text/css" href="css/post.css">
</head>
<table border = 2 class="card">
<%
		int count = 0;
		while(rs.next()){
			count++;
			if(count%2 != 0)
				out.println("<tr>");
			String post = rs.getString(5);
			out.println("<td>"+post+"</td>");
			if(count%2 == 0)
				out.println("</tr>");	
		}
%>
</table>
<%
	}
	catch(Exception e){
		out.println(e);
	}
%>
