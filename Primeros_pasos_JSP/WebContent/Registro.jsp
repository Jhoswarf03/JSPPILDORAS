<%@page import="java.util.*"%>
<html>
<body>
<h1>Usuario reguistrado  de reguistro </h1>
Usuario confirmado: <br/><br/>
Nombre: <%=request.getParameter("nombre") %> <br    /> Apellido: <%= request.getParameter("apellido")%>
<br/>

<jsp:include page="Fecha.jsp"></jsp:include>

</body>
</html>
