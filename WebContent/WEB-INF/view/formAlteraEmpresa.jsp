<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/entrada" var="url" />
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Alterar Empresa</title>
</head>
<body>

	<c:import url="logout-parcial.jsp" />

	<br>
	<h2 class="text-center">Alterar Empresa</h2>

	<div class="container">
		<div class="row">
			<div class="col-xs-3">
				<div class="form-group">

					<form action="${url}" method="post">
						<label>id: ${empresa.id}</label> <br> Nome:<input
							class="form-control" type="text" name="nome"
							value="${empresa.nome}" /> <br> Data:<input
							class="form-control" type="text" name="data"
							value="<fmt:formatDate	value="${empresa.dataAbertura}" pattern="dd/MM/yy" />" />
						<br> <input type="hidden" name="id" value="${empresa.id}">
						<br> <input type="hidden" name="acao" value="AlteraEmpresa">
						<br> <input class="btn btn-primary" type="submit" />
					</form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>