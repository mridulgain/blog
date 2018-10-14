<html>
<head>
	<title>
		Sign up
	</title>
</head>
<body>
	<h1> Sign up </h1>
    <form name = "submmit" method = "post" action="submit.jsp">
    Firstname  <input type="text" name="firstname"><br>
    Lastname   <input type="text" name="lastname"><br>
    Username   <input type="text" name="username"><br>
    E-mail     <input type="email" name="email"><br>
    Password   <input type="password" name="password"><br>
    Re-type Password  <input type="password" name="rpassword"><br>
    D.O.B  <input type='date' name = "dob"><br>
    Gender<br>
    <input type ='radio' name = "gender" value = 'male'>male<br>
    <input type ='radio' name = "gender" value = 'female'>Female<br>
    <input type ='radio' name = "gender" value = 'other'>Other<br>
   
    Contact number  <input type="number" name="phone"><br>
    <input type="checkbox" name="term">Agree to terms and condition<br>
    <input type = "submit">

</body>
</html>