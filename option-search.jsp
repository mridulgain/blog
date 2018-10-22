<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	<!------ Include the above in your HEAD tag ---------->
	<link rel = "stylesheet" href= "search-css.css">
	<!------ Include the above in your HEAD tag ---------->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
	    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,= 400,300,600,700,800' rel='stylesheet' type='text/css'>
	</script>
	    <!-- Custom styles for this template -->
	<link rel="stylesheet" type="text/css" href="css/option-home.css">
	<link rel= "stylesheet" href="css/search-css.css">
	<script src= "test.js"></script>
	<title>Student Registration Form</title>
	<%@ include file = "option.jsp" %>
</head>
<body>
<header class="masthead" style="background-image: url('img/home-bg.jpg'); ">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <form class="search">
				  <div class="search__wrapper">
					<input type="text" name="" placeholder="Search for..." class="search__field">
					<button type="submit" class="fa fa-search search__icon"></button>
				  </div>
				</form>
            </div>
          </div>
        </div>
      </div>
    </header>

<script>
$(function() {
		//alert("ok");
	    $(window).on("scroll", function() {
		if($(window).scrollTop() > 50) {
		    $(".header").addClass(".active");
		} else {
		    //remove the background property so it comes transparent again (defined in your css)
		   $(".header").removeClass(".active");
		}
	    });
	});
</script>
</body>
</html>
