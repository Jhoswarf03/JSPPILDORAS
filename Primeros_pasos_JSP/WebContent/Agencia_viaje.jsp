<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agencia de viajes </title>
</head>
<body>
 <h1 style="text-align: center;"> Agencia  de  Viaje</h1>
<% 
  //si es primera  vez y no tiene registrado  cookis  or defecto sera madrid 
  String  ciudadfavorita = "Madrid";
  String  tecnol = "Java";
  Cookie[] listacookis = request.getCookies();
  if(listacookis!=null)
   for(Cookie co: listacookis)
   {
	    if("nombreciudad.Ciudad".equals(co.getName()));
	        ciudadfavorita = co.getValue();
	      
	    if("nombretecnologia.tecnologias".equals(co.getName()));
	    { 
	    	tecnol = co.getValue();
	           out.print(tecnol + listacookis.hashCode());
	    }
   }
%>
<h3> Vuelos  a ciudad  Favorita <%= ciudadfavorita %> </h3>
<p> Esto esun Texto  de ejemplo  </p>
<p> Esto esun Texto  de ejemplo  </p>
<p> Esto esun Texto  de ejemplo  </p>
<br><br><br><br>
<h3> Hoteles  en la ciudad de <%= tecnol %> </h3>
<p> Esto esun Texto  de ejemplo  </p>
<p> Esto esun Texto  de ejemplo  </p>
<p> Esto esun Texto  de ejemplo  </p>


<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>