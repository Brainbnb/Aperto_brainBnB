<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aperto | BrainBnB</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/login.css" type="text/css" />
</head>
<body>

<!-- NAVBAR -->
<nav class= "navbar navbar-inverse navbar-fixed-top" >
	<div class= "container-fluid">
		<div class= "navbar-header"> 
		<a class="navbar-brand" href="#">
			<img src= "resources/img/aperto-logo.svg" alt= "Aperto" align= "left" width= "114px" height= "21px" />	  </a>
		</div>
	</div>
</nav>

<!-- MAIN LOG-IN -->
<div id= "main" class= "container">
	<div class= "log-in">
		<h1>WELCOME</h1>
 		<form action="login" method="post">
        <p><input type="text" name="userID" placeholder="Username"></p>
        <p><input type="password" name="password" placeholder="Password"></p>
        <p class="remember_me">
        	<label>
            	<input type="checkbox" name="remember_me" id="remember_me"> Remember me
        	</label>
        </p>
        <p >
        <button class="loginButton" type="submit">Log In</button>
        </p>
      	</form>
    </div>

    <!-- <div class="login-help">
      <p>Forgot your password? <a href="index.html">Click here</a></p>
    </div> -->
</div>

</body>
</html>