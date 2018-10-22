
<html>
	<head>
	<%@ include file = "option-add-post.jsp" %>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>#MeToo</title>
		<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/default.css">
		<link rel="stylesheet" type="text/css" href="css/login-css.css">
	</head>
	<body>
<div class="container">
	<div class="row">

	<div class="">

	<form action="addPost_successful.jsp" method="POST">

		<div class="form-group ">
			<label for="slug">Name <span class="require">*</span> </label>
			<input type="text" name="name" class="form-control" required="true"/>
		</div>

		<div class="form-group">
			<label for="title">Heading <span class="require">*</span></label>
			<input type="text" class="form-control" name="heading" required="true"/>
		</div>

		<div class="form-group">
			<label for="email">Email address:</label>
			<input type="email" class="form-control" id="email" required="true">
		</div>
		<div class="form-group">
			<label for="title">Sub-Heading <span class="require">*</span></label>
			<input type="text" class="form-control" name="subheading" required="true"/>
		</div>    		    

		<div class="form-group">
		<label for="description">Description</label>
		<textarea rows="5" class="form-control" name="description" ></textarea>
		</div>

		<div class="form-group">
		<p><span class="require">*</span> - required fields</p>
		</div>

		<div class="form-group">
		<button type="submit" class="btn btn-primary">
		Post
		</button>
		<a class="btn btn-default" href = "index.jsp"> 
		Cancel</a>
		
		</div>

	</form>
	</div>

	</div>
</div>
	</body>
</html>
