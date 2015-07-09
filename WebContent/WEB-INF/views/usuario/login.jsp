<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<meta name="viewport" content="width=device-width">

<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="resources/css/login.css" />

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Login em Sa�de CAPAU</h3>
					</div>
					<div class="panel-body">
						<form role="form" action="efetuaLogin" method="POST">

							<div class="form-group">
								<label for="login">Login</label><input class="form-control"
									name="login" MAXLENGTH="50" type="text" required autofocus>
							</div>
							<div class="form-group">
								<label for="nome">Senha</label><input class="form-control"
									name="senha" MAXLENGTH="50" type="password" required>
							</div>
							<button type="submit" class="btn btn-lg btn-success btn-block">Entrar</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>

</body>
</html>
