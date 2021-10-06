<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="url" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>

<title>Cadastrar Nova Empresa</title>
</head>
<body>

	<c:import url="logout-parcial.jsp" />

	<br>
	<h2 class="text-center">Cadastrar Nova Empresa</h2>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-xs-3">
				<div class="form-group">
					<form action="${url}" method="post">
						Nome:<input class="form-control" type="text" name="nome" /> <br>
						Data:<input class="form-control" type="text" name="data" /> <br>
						<br> <input type="hidden" name="acao" value="NovaEmpresa" />
						<input class="btn btn-primary" type="submit" />
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>