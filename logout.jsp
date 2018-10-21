<!logout from admin mode>
<%@ include file = "option.jsp" %>
<%
	session.invalidate();
	//out.println("Logged out successfully");
	response.sendRedirect("login.jsp");
%>
