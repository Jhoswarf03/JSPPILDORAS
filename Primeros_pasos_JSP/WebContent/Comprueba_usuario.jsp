<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
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
		//////////////////////////PARA  PODER CONECTAR  EL DRIVER DE  MYSQL  CON JAVA SERVELT  VIDEO  234////////////////////////////////////////
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		try {
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root",
					"");
			PreparedStatement miestament = conexion.prepareStatement("SELECT USUARIO, CONTRASENA FROM  USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
			////////////////////  COMANDO  SQL  CUANDO  buscar informacion en la base de dato////////////////////////////////////////////////////
			miestament.setString(1, usuario);
			miestament.setString(2, contrasena);
			ResultSet rs = miestament.executeQuery();
			if(rs.absolute(1))
			out.print("Usuario Autorisado");
			else
				out.print("El usuarios no axiste");
			rs.close();	
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("No conecta");
			e.printStackTrace();
		}
	%>
	<a href="Ejemplo.jsp">Click here for display</a>
</body>
</html>