<html>
<head>
    <!-- Bootstrap core CSS -->
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css" href="css/header-sr.css">
<link rel="stylesheet" type="text/css" href="css/default.css">
<script src= "test.js"></script>
<title>Student Registration Form</title>
</head>
<body>
<% 
	if(session.getAttribute("userid") != null && session.getAttribute("userid").equals("admin@rohan.com"))
		out.println("<nav id = 'navbar' class=\"sticky-bar-admin\" id = \"sticky-nav-bar\">");//admin menu
	else
		out.println("<nav id = 'navbar' class=\"sticky-bar-normal\" id = \"sticky-nav-bar\">");//normal menu
%>

	<div class="div1">
		<a  href="index.jsp">#METOOINDIA</a>
	</div>
	<div class = "div2" >
		<a class="nav-link" href = "index.jsp">Home</a>
		<a class="nav-link" href = "search_posts.jsp">Search</a>
		<a class="nav-link" href = "list_all_posts.jsp">Posts</a>  
		<a class="nav-link" href = "addPost.jsp">Publish</a> 
		<a class="nav-link" href="login.jsp">Login</a>  
		<%
			if(session.getAttribute("userid") != null){
				out.println("<a class=\"nav-link\" href = 'logout.jsp'>Logout</a> ");	
			}
		%>
	</div>
</nav>

<script>
window.onscroll = () => {
  const nav = document.querySelector('#navbar');
  if(this.scrollY <= 10) nav.className = ''; else nav.className = 'scroll';
};
</script>
</body>
</html>
