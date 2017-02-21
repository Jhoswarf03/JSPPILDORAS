<%@page import="java.sql.*"%>
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
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");
	String pais = request.getParameter("pais");
	String tecnologias = request.getParameter("tecnologias");
    try {
		//////////////////////////PARA  PODER CONECTAR  EL DRIVER DE  MYSQL  CON JAVA SERVELT  VIDEO  234////////////////////////////////////////
    	Class.forName("com.mysql.jdbc.Driver").newInstance();
		
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root",
				"");
		Statement miestament = conexion.createStatement();
		////////////////////  COMANDO  SQL  CUANDO  ES  ENVIAR  INFORMACION A LA BASE DE DATO////////////////////////////////////////////////////
		miestament.executeUpdate(
				"INSERT INTO  USUARIOS (Nombre, Apellido, Usuario, Contrasena, pais, tecnologia) VALUES ('"
						+ nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','"
						+ tecnologias + "') ");
       miestament.close();
       out.print("Reguistrando con exito");
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println("No conecta");
		e.printStackTrace();
	}
%>
</body>
</html>