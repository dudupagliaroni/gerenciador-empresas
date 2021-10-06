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

<title>Login</title>
</head>
<body>

	<br>
	<h2 class="text-center">Login</h2>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-xs-3">
				<div class="form-group">
					<form action="${url}" method="post">
						Login:<input class="form-control" type="text" name="login" /> <br>
						Senha:<input class="form-control" type="password" name="senha" />
						<br> <br> <input type="hidden" name="acao" value="Login" />
						<input class="btn btn-primary" type="submit" />
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>