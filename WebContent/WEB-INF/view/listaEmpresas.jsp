<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE hmtl>
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
<title>Lista de Empresas</title>
</head>
<body>
	
	<c:import url="logout-parcial.jsp"/>

	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>

	<br />
	<h2 class="text-center">Lista de cadastros:</h2>
	<br />

	<div class="container">
		<div class="row">
			<div class="col-xs-3">
				<a class="btn btn-primary"
					href="/gerenciador/entrada?acao=ListaEmpresasComOrdem">Ordenar</a>
				<br> <br>
				<ul class="list-group">
					<c:forEach items="${empresas}" var="empresa">
						<li class="list-group-item">${empresa.nome} - <fmt:formatDate
								value="${empresa.dataAbertura}" pattern="dd/MM/yy" /> <a
							href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">editar</a>
							<a
							href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remover</a>
						</li>
					</c:forEach>
				</ul>
				<br> <a class="btn btn-primary"
					href="/gerenciador/entrada?acao=NovaEmpresaForm">Cadastrar Nova
					Empresa</a>
			</div>
		</div>
	</div>
</body>
</html>