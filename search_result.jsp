<! result >
<%@ include file = "option.jsp" %>
<%@ include file = "dbConnection.jsp" %>
<%
	String search_key = request.getParameter("search_key");
	String url = "list_all_posts.jsp?search_on=name&value=%" + search_key + "%";
	response.sendRedirect(url);
%>
