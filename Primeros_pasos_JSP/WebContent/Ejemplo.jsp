<html>
<body>

<h2> Ejemplo Response y  Reques</h2>
Peticion de dato del navegador: <%= request.getHeader("User-Agent") %>
<br/><br/>

Peticion idioma del navegador:  <%= request.getLocale() %>
<br/><br/>

<%
try {
  int uno = Integer.valueOf(request.getParameter("dato1"));
  int dos = Integer.valueOf(request.getParameter("dato2"));
  String datoUno = request.getParameter("dato1");
  String datoDos = request.getParameter("dato2");
  int suma = uno + dos;
 
  out.println("La suma de " + datoUno + " + " + datoDos + " = " + Integer.toString(suma));
 
} catch(NumberFormatException nfe) {
	out.println("Los datos recibidos no son números enteros");
}

%>
<jsp:forward page="Fecha.jsp"/>
</body>

</html>