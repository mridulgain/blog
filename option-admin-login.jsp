<html>
<head>
	    
	    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,= 400,300,600,700,800' rel='stylesheet' type='text/css'>
	    <!-- Custom styles for this template -->
	<link rel="stylesheet" type="text/css" href="css/option-admin-login.css">
	<script>
$(document).ready(function(){
  $(window).scroll(function(){
  	var scroll = $(window).scrollTop();
	  if (scroll > 3) {
	    $(".black").css("background" , "blue");
	  }

	  else{
		  $(".black").css("background" , "#333");  	
	  }
  })
})
</script>
	<title>Student Registration Form</title>
	<%@ include file = "option.jsp" %>
</head>
<body>
<header class="masthead" style="background-image: url('img/admin-login.jpg'); background-size: cover;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
            <div class="site-heading">
              <h1 class = "h1block">Adminstrative Login</h1>
              <span class="subheading"></span>
            </div>
          </div>
        </div>
      </div>
    </header>
</body>
</html>
