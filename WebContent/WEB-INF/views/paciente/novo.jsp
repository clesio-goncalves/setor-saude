<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cadastrar Paciente</title>
<meta name="viewport" content="width=device-width">

</head>
<body>
	<c:import url="../componentes/cabecalho.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1>Cadastrar Paciente</h1>
			<p>Preencha o formulário abaixo para realizar o cadastro.</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<form action="adicionaPaciente" method="POST" class="col-sm-12">
				<div class="row">

					<fieldset class="col-md-6">
						<legend>Dados pessoais</legend>

						<!-- NOME -->
						<div class="form-group">
							<label for="nome">Nome*</label> <input type="text"
								class="form-control" name="nome" autofocus MAXLENGTH="100"
								required>
						</div>

						<div class="row">
							<!-- RG -->
							<div class="form-group col-sm-6">
								<label for="rg">RG*</label> <input type="text"
									class="form-control" name="rg" MAXLENGTH="12" required>
							</div>

							<!-- CARTÃO SUS -->
							<div class="form-group col-sm-6">
								<label for="cartao_sus">Cartão SUS</label> <input type="text"
									class="form-control" name="cartao_sus" MAXLENGTH="15"
									onkeypress='return SomenteNumero(event)'>
							</div>
						</div>

						<div class="row">
							<!-- VÍNCULO -->
							<div class="form-group col-sm-4">
								<label for="vinculo">Vínculo institucional*</label> <select
									class="form-control" name="vinculo">
									<option>Aluno</option>
									<option>Comunidade</option>
									<option>Servidor</option>
									<option>Tercerizado</option>
									<option>Outros</option>
								</select>
							</div>

							<!-- DATA DE NASCIMENTO -->
							<div class="form-group col-sm-4">
								<label for="data_nascimento">Data de nascimento*</label> <input
									type="text" class="form-control" name="data_nascimento"
									data-mask="99/99/9999" required>
							</div>

							<!-- SEXO -->
							<div class="form-group col-sm-4">
								<label for="sexo">Sexo*</label> <select class="form-control"
									name="sexo">
									<option>Masculino</option>
									<option>Feminino</option>
								</select>
							</div>
						</div>

						<!-- ALERGIA ALIMENTO MEDICAMENTO -->
						<div class="form-group">
							<label for="alergia_alimento_medicamento">Possui alergia
								medicamentosa ou alimentar? Qual?*</label>
							<textarea class="form-control"
								name="alergia_alimento_medicamento" MAXLENGTH="255" required></textarea>
						</div>
					</fieldset>

					<fieldset class="col-md-6">
						<legend>
							<br />
						</legend>

						<!-- Problema de saúde -->
						<div class="form-group">
							<label for="problema_saude">Teve ou tem algum problema de
								saúde? Quais?*</label>
							<textarea class="form-control" name="problema_saude"
								MAXLENGTH="255" required></textarea>
						</div>

						<!-- Antecedentes patológicos familiares -->
						<div class="form-group">
							<label for="antecedentes_patologicos_familiares">Antecedentes
								patológicos familiares</label>
							<textarea class="form-control"
								name="antecedentes_patologicos_familiares" MAXLENGTH="255"></textarea>
						</div>

						<!-- ETILISMO -->
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" name="etilismo">
									Etilismo
								</label>
							</div>
						</div>

						<!-- TABAGISMO -->
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" name="tabagismo">
									Tabagismo
								</label>
							</div>
						</div>

						<!-- DROGAS ILICITAS -->
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" name="drogas_ilicitas">
									Drogas ilícitas
								</label>
							</div>
						</div>

						<!-- OBTIGATÓRIO -->
						<label for="obrigatorio">(*) Campos obrigatórios</label>
					</fieldset>
				</div>
				<div>
					<button type="reset" class="btn btn-default btn-lg">
						<span class="glyphicon glyphicon-trash"></span> Limpar
					</button>
					<button type="submit" class="btn btn-primary btn-lg">
						<span class="glyphicon glyphicon-saved"></span> Salvar
					</button>
				</div>
			</form>
		</div>
	</div>

	<c:import url="../componentes/rodape.jsp" />

	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>
	<script type="text/javascript" src="resources/js/inputmask-plugin.js"></script>
	<script type="text/javascript" src="resources/js/SomenteNumero.js"></script>
</body>
</html>