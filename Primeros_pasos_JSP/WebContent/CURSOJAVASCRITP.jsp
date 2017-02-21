<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Documento  sin titulo </title>

<style>
 #contenedor{
  width:25%;
  background-color:#FFC;
  margin:auto;
  padding:15px;
  }
</style>

<script>

	var trabajadores= new Arry();
	var persona;
	var  contador =0;
	trabajadores.
	
	var nombre, edad, poblacion;
	nombre = prompt("Introduce tu nombre por favor","nombre");
	while (!isNaN(nombre)) {
		nombre = prompt("Introduce un nombre ", "nombre");
	}
	edad = prompt("Introduce tu edad por favor", "edad");
	while (edad<=0 || edad >105 || isNaN(edad)) {
		edad = prompt("Introduce una edad validad", "edad");
	}
	poblacion = prompt("Introduce tu poblacion por favor ", "poblacion");
	while (!isNaN(poblacion)) {
		poblacion = prompt("Introduce bien su poblacion ", "poblacion");
	}
</script>
</head>


<body>
<div id="contenedor">
<p> Nombre: <script> document.write(nombre);</script></p>
<p> Edad: <script> document.write(edad);</script></p>
<p> Poblacion: <script> document.write(poblacion);</script></p>

</div>



</body>
</html>
