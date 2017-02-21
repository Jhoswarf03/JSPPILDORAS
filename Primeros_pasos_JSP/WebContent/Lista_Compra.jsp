<%@ page import="java.util.*" %>
<html>

<body>
<form name="Formulario_Compra" action="Lista_Compra.jsp">
 
  <p>Artículos a comprar:</p>
  <p>
    <label>
      <input type="checkbox" name="articulos" value="agua " >
      Agua </label>
    <br>
    <label>
      <input type="checkbox" name="articulos" value="leche" >
      Leche </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="pan" >
      Pan </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="mazanas" >
      Manzanas </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="carne" >
      Carne </label>
      <br>
       <label>
      <input type="checkbox" name="articulos" value="pescado" >
      Pescado </label>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Enviar">
    <br>
  </p> 
    
</form>

<h1>Lista de carro de compra</h1>
<ul>
<%
	List<String> listaelemento = (List<String>)session.getAttribute("miselemento");
	if (listaelemento == null) {
		listaelemento = new ArrayList<String>();
		session.setAttribute("miselemento", listaelemento);
	}
	String[] lista = request.getParameterValues("articulos");
	if (lista != null) {
		for (String ele : lista)
		  listaelemento.add(ele);
		for (String ele : listaelemento)
			out.print("<li>" + ele + "</li>");
	}
%>
</ul>
</body>


</html>