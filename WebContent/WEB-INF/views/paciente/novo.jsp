<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cadastrar Paciente</title>
<meta name="viewport" content="width=device-width">

<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.css" />
</head>
<body>

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
							<label for="nome_paciente">Nome*</label> <input type="text"
								class="form-control" name="nome_paciente" autofocus
								MAXLENGTH="255" required>
						</div>

						<div class="row">
							<!-- VÍNCULO -->
							<div class="form-group col-sm-4">
								<label for="vinvulo_paciente">Vínculo*</label> <select
									class="form-control" name="vinvulo_paciente">
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
									placeholder="00/00/0000" data-mask="00/00/0000" required>
							</div>

							<!-- SEXO -->
							<div class="form-group col-sm-4">
								<label for="sexo_paciente">Sexo*</label> <select
									class="form-control" name="sexo_paciente">
									<option>Masculino</option>
									<option>Feminino</option>
								</select>
							</div>
						</div>

						<!-- ALERGIA -->
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" name="alergia_paciente">
									Alergia a algum tipo de alimento ou medicamento
								</label>
							</div>
						</div>

						<!-- DESCRIÇÃO ALERGIA -->
						<div class="form-group">
							<label for="descricao_alergia">Descrição da alergia</label>
							<textarea class="form-control" name="descricao_alergia"></textarea>
						</div>
					</fieldset>

					<fieldset class="col-md-6">
						<legend>
							<font color="#ffffff">.</font>
						</legend>

						<!-- Antecedentes patológicos pessoais -->
						<div class="form-group">
							<label for="antecedentes_patologicos_pessoais">Antecedentes
								patológicos pessoais*</label> <input type="text" class="form-control"
								name="antecedentes_patologicos_pessoais" MAXLENGTH="255"
								required>
						</div>

						<!-- Antecedentes patológicos familiares -->
						<div class="form-group">
							<label for="antecedentes_patologicos_familiares">Antecedentes
								patológicos familiares</label> <input type="text" class="form-control"
								name="antecedentes_patologicos_familiares" MAXLENGTH="255">
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

	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</body>
</html>