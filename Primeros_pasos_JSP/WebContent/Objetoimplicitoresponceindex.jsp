<%@ page contentType="text/html:charset=ISO-8859-1" %> e
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="login.css" type="text/css" rel="stylesheet">
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>	
</head>
<body>
	<div class="container well loginbox">	
		<!--TITULO DE FORMULARIO-->
		<div class="row">
			<div class="col-md-12">
				<h2><p class="text-center">Perfil de usuario</p></h2>
			</div>
		</div>
		<br><br/>
		<div class="col-md-6 col-md-offset-3">
		<form action="Objetoimplicitoresponceprocesar.jsp" method="get" class="form-horizontal">
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="text" class="form-control" name="usuario" id="exampleInputEmail1"
					placeholder="Email">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control"  name="contra" id="exampleInputPassword1"
					placeholder="Password">
			</div>
			<div class="checkbox">
				<label> <input type="radio"  name ="hola"> Olvide la contraseña
				</label>
			</div>
			<br>
			<br>
			<button type="submit" class="btn btn-lg btn-primary btn-block" >Submit</button>
		</form>
		</div>
	</div>
</body>
</html>