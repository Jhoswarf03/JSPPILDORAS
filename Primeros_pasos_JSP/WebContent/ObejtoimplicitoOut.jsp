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
    application.setAttribute("MyAttr", "valor del atributo");
    String s = (String)application.getAttribute("MyAttr"); 
    out.print(s);
 
%>
  <%!  Object page=this;%>
   <% 
     out.print( out.getBufferSize() + " " + out.getRemaining());
   %> 
</body>
</html>