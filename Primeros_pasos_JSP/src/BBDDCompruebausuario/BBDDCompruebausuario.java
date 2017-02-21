package BBDDCompruebausuario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import java.sql.*;

public class BBDDCompruebausuario {
     private String usuario;
     private String contrasena;
     private ResultSet rs;
     public BBDDCompruebausuario(String usuario, String contrasena) {
		// TODO Auto-generated constructor stub
		this.usuario = usuario;
		this.contrasena = contrasena;
	}
	//////////////////////////PARA  PODER CONECTAR  EL DRIVER DE  MYSQL  CON JAVA SERVELT  VIDEO  234////////////////////////////////////////
	public String  ComrobarUsuario(){
	
	
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root","");
		PreparedStatement miestament = conexion.prepareStatement("SELECT USUARIO, CONTRASENA FROM  USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
		////////////////////  COMANDO  SQL  CUANDO  buscar informacion en la base de dato////////////////////////////////////////////////////
		miestament.setString(1, usuario);
		miestament.setString(2, contrasena);
		rs = miestament.executeQuery();
		if(rs.absolute(1))
		return "Usuario Autorisado";
		else
			return "El usuarios no axiste";
		
		
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println("No conecta");
		e.printStackTrace();
	}
	return "";
	}
}
