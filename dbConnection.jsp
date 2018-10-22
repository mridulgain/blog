<%@page import = "java.sql.*"%>
<%!Connection con=null;%>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","demo","Demon_99");
	}
	catch(Exception e){
		out.println(e);
	}
%>
