<%@page import = "java.sql.*"%>
<%!Connection con=null;%>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","admin","admin");
	}
	catch(Exception e){
		out.println(e);
	}
%>
