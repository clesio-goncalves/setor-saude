<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>404</title>
<meta name="viewport" content="width=device-width">

<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.css" />
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:import url="cabecalho.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1>A página acessada não existe.</h1>
		</div>
	</div>

	<c:import url="rodape.jsp" />

	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</body>
</html>