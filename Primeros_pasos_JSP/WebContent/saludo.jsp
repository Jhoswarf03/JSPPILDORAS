<%@page import="java.util.Date"%>
<html>
<body>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<div class="container">
		<form action="Ejemplo.jsp" method="get">
			<div class="form-group">
				<label for="exampleInputEmail1">dato1</label> <input
					type="text" class="form-control" name="dato1" id="exampleInputEmail1"
					placeholder="Email">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">dato2</label> <input
					type="text" class="form-control"  name="dato2" id="exampleInputPassword1"
					placeholder="Password">
			</div>
		<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>