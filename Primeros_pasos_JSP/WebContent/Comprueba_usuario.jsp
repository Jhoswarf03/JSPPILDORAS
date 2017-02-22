<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="BBDDCompruebausuario.BBDDCompruebausuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String usuario = request.getParameter("usuario");
	String contrasena = request.getParameter("contra");	
	BBDDCompruebausuario buscar = new BBDDCompruebausuario(usuario,  contrasena);
	if(buscar.ComrobarUsuario())
	  out.print("El usuario  y  contraseña correctas");    	
	else 
		out.print("El usuario  o contraseña incorrectas ");    	
	%>
	<a href="Fromulario_login.html">Click here for display</a>
</body>
</html>