<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
//Con el error importado comentado  aqui esta fncionano  con el web.xml no hay que colocarle a todas la paguina
// <%@ page errorPage="error.jsp"  para q se ejecute el error  
String num1=request.getParameter("valor1"); 
String num2=request.getParameter("valor2"); 
int v1= Integer.parseInt(num1);
int v2= Integer.parseInt(num2);
int res= v1/v2;
out.print("Output is: "+ res);
%>
</body>
</html>