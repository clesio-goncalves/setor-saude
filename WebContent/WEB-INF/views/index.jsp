<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Inicio</title>
<meta name="viewport" content="width=device-width">

</head>
<body>
	<c:import url="componentes/cabecalho.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1>Bem-vindo ${usuarioLogado.login} ao sistema do setor Saúde
				CAPAU</h1>
			<p>
				Este é um protótipo de um sistema que realiza o cadastro de <a
					href="listaPacientes">pacientes</a>, anotações de enfermagem e
				consulta de enfermagem, com o objetivo de automatizar as atividades
				do setor.
			</p>
		</div>
	</div>

	<c:import url="componentes/rodape.jsp" />

	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</body>
</html>