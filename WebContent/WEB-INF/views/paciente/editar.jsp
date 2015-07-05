<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Editar Paciente</title>
<meta name="viewport" content="width=device-width">

</head>
<body>
	<c:import url="../cabecalho.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1>Editar Paciente -> (${paciente.id})</h1>
			<p>Preencha o formulário abaixo para realizar a alteração.</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<form action="alteraPaciente" method="POST" class="col-sm-12">
				<div class="row">

					<fieldset class="col-md-6">
						<legend>Dados pessoais</legend>

						<!-- ID -->
						<input type="hidden" name="id" value="${paciente.id}" />

						<!-- NOME -->
						<div class="form-group">
							<label for="nome">Nome*</label> <input type="text"
								class="form-control" name="nome" autofocus MAXLENGTH="100"
								required value="${paciente.nome}">
						</div>

						<div class="row">
							<!-- RG -->
							<div class="form-group col-sm-6">
								<label for="rg">RG*</label> <input type="text"
									class="form-control" name="rg" MAXLENGTH="12" required
									value="${paciente.rg}">
							</div>

							<!-- CARTÃO SUS -->
							<div class="form-group col-sm-6">
								<label for="cartao_sus">Cartão SUS</label> <input type="text"
									class="form-control" name="cartao_sus" MAXLENGTH="15"
									onkeypress='return SomenteNumero(event)'
									value="${paciente.cartao_sus}">
							</div>
						</div>

						<div class="row">
							<!-- VÍNCULO -->
							<div class="form-group col-sm-4">
								<label for="vinculo">Vínculo institucional*</label> <select
									class="form-control" name="vinculo" value="${paciente.vinculo}">
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
									data-mask="99/99/9999" required
									value="<fmt:formatDate value="${paciente.data_nascimento.time}"
									pattern="dd/MM/yyyy" />">
							</div>

							<!-- SEXO -->
							<div class="form-group col-sm-4">
								<label for="sexo">Sexo*</label> <select class="form-control"
									name="sexo" value="${paciente.sexo}">
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
								name="alergia_alimento_medicamento" MAXLENGTH="255" required>${paciente.alergia_alimento_medicamento}</textarea>
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
								MAXLENGTH="255" required>${paciente.problema_saude}</textarea>
						</div>

						<!-- Antecedentes patológicos familiares -->
						<div class="form-group">
							<label for="antecedentes_patologicos_familiares">Antecedentes
								patológicos familiares</label>
							<textarea class="form-control"
								name="antecedentes_patologicos_familiares" MAXLENGTH="255">${paciente.antecedentes_patologicos_familiares}</textarea>
						</div>

						<!-- ETILISMO -->
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" name="etilismo"
									value="true" ${paciente.etilismo ? 'checked' : ''}>
									Etilismo
								</label>
							</div>
						</div>

						<!-- TABAGISMO -->
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" name="tabagismo"
									value="true" ${paciente.tabagismo ? 'checked' : ''}>
									Tabagismo
								</label>
							</div>
						</div>

						<!-- DROGAS ILICITAS -->
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" name="drogas_ilicitas"
									value="true" ${paciente.drogas_ilicitas ? 'checked' : ''}>
									Drogas ilícitas
								</label>
							</div>
						</div>

						<!-- OBTIGATÓRIO -->
						<label for="obrigatorio">(*) Campos obrigatórios</label>
					</fieldset>
				</div>
				<div>
					<a href="listaPacientes" class="btn btn-default btn-lg"> <span
						class="glyphicon glyphicon-remove"></span> Cancelar
					</a>
					<button type="submit" class="btn btn-primary btn-lg">
						<span class="glyphicon glyphicon-refresh"></span> Atualizar
					</button>
				</div>
			</form>
		</div>
	</div>

	<c:import url="../rodape.jsp" />

	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>
	<script type="text/javascript" src="resources/js/inputmask-plugin.js"></script>
	<script type="text/javascript" src="resources/js/SomenteNumero.js"></script>
</body>
</html>