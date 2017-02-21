<html>

<body>
<h1 style="text-align: center; "> Ejemplo declaraciones </h1>
<%!

private static int resultado;
public static int  sumar(int n1,int n2){
	resultado = n1+n2;
	return  resultado;
}
public static int  restar(int n3,int n4){
	return  n3-n4;
}

public static int  multiplicar(int n1,int n2){
	return  n1*n2;
}
%>

La suma es <%= sumar(5,6) %>
<br>
La resta es<%= restar(5,6) %>
<br>
La multiplicacion<%= multiplicar(5,6) %>
</body>
</html>