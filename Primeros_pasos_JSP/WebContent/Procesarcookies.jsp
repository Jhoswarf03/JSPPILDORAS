<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
//Leyendo  datos  de formulario
String ciudadfavorita = request.getParameter("Ciudad");
String tecnologiafavorita = request.getParameter("tecnologias");

//Creando  la Cookis  
Cookie locooki = new Cookie("nombreciudad.Ciudad",  ciudadfavorita);
Cookie locookit = new Cookie("nombretecnologia.tecnologias",  tecnologiafavorita);
//vida de la cookis año segun calculo 

locooki.setMaxAge(365*24*60*60);
locookit.setMaxAge(365*24*60*60);
//Enviar al Usuario para que se grabe en su ordenador
response.addCookie(locooki);
response.addCookie(locookit);
%>
Gracias  por enviar tus preferencias de viajes 
<br><br><br><br>
<div class="list-group">
  <a href="Agencia_viaje.jsp" class="list-group-item"> Ir  a la agencia de Viaje</a>
</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>