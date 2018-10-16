<%@ include file = "option.html" %>
<%@ include file = "dbConnection.jsp" %>
<%
	try{
		PreparedStatement p = con.prepareStatement("Select * from user_posts order by publish_date");
		ResultSet rs = p.executeQuery();
%>
<table border = 2>
<%
		while(rs.next()){
			String post = rs.getString(5);
			out.println("<tr><td>"+post+"</td></tr>");	
		}
%>
</table>
<%
	}
	catch(Exception e){
		out.println(e);
	}
%>
