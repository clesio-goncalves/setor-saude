<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Exibir dados do paciente</title>
<meta name="viewport" content="width=device-width">
</head>
<body>
	<c:import url="../cabecalho.jsp" />

	<div class="container">
		<div class="row">
			<div class="panel panel-default col-sm-12">
				<div class="panel-heading">Exibir dados do paciente</div>
				<!-- Table -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-hover">
							<tr>
								<th width="300">ID</th>
								<td>${paciente.id}</td>
							</tr>

							<tr>
								<th>Nome</th>
								<td>${paciente.nome}</td>
							</tr>

							<tr>
								<th>RG</th>
								<td>${paciente.rg}</td>
							</tr>

							<tr>
								<th>Cartão SUS</th>
								<c:if test="${not empty paciente.cartao_sus}">
									<td>${paciente.cartao_sus}</td>
								</c:if>
								<c:if test="${empty paciente.cartao_sus}">
									<td>Não informado</td>
								</c:if>
							</tr>

							<tr>
								<th>Vínculo institucional</th>
								<td>${paciente.vinculo}</td>
							</tr>

							<tr>
								<th>Data de nascimento</th>
								<td><fmt:formatDate
										value="${paciente.data_nascimento.time}" pattern="dd/MM/yyyy" /></td>
							</tr>

							<tr>
								<th>Sexo</th>
								<td>${paciente.sexo}</td>
							</tr>

							<tr>
								<th>Possui alergia medicamentosa ou alimentar? Qual?</th>
								<td>${paciente.alergia_alimento_medicamento}</td>
							</tr>

							<tr>
								<th>Teve ou tem algum problema de saúde? Quais?</th>
								<td>${paciente.problema_saude}</td>
							</tr>

							<tr>
								<th>Antecedentes patológicos familiares</th>
								<c:if
									test="${not empty paciente.antecedentes_patologicos_familiares}">
									<td>${paciente.antecedentes_patologicos_familiares}</td>
								</c:if>
								<c:if
									test="${empty paciente.antecedentes_patologicos_familiares}">
									<td>Não informado</td>
								</c:if>
							</tr>

							<tr>
								<th>Etilismo</th>
								<c:if test="${paciente.etilismo eq true}">
									<td>Sim</td>
								</c:if>
								<c:if test="${paciente.etilismo eq false}">
									<td>Não</td>
								</c:if>
							</tr>

							<tr>
								<th>Tabagismo</th>
								<c:if test="${paciente.tabagismo eq true}">
									<td>Sim</td>
								</c:if>
								<c:if test="${paciente.tabagismo eq false}">
									<td>Não</td>
								</c:if>
							</tr>

							<tr>
								<th>Drogas ilícitas</th>
								<c:if test="${paciente.drogas_ilicitas eq true}">
									<td>Sim</td>
								</c:if>
								<c:if test="${paciente.drogas_ilicitas eq false}">
									<td>Não</td>
								</c:if>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div align="center">
				<!-- Cadastrar -->
				<a href="novoPaciente" class="btn btn-primary btn-lg"><span
					class="glyphicon glyphicon-plus"></span> Cadastrar</a>
				<!-- Editar -->
				<a href="editarPaciente?id=${paciente.id}"
					class="btn btn-info btn-lg"><span
					class="glyphicon glyphicon-edit"></span> Editar </a>
				<!-- Excluir -->
				<button class="btn btn-danger btn-lg" data-toggle="modal"
					data-target="#${paciente.id}">
					<span class="glyphicon glyphicon-trash"></span> Excluir
				</button>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="${paciente.id}" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Exclusão do
								paciente</h4>
						</div>
						<div class="modal-body">Deseja realmente excluir o paciente
							(${paciente.id}) -> ${paciente.nome}?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								<span class="glyphicon glyphicon-log-out"></span> Fechar
							</button>
							<a href="removePaciente?id=${paciente.id}" class="btn btn-danger"><span
								class="glyphicon glyphicon-trash"></span> Excluir</a>
						</div>
					</div>
				</div>
			</div>
			<ul class="pager">
				<li class="previous"><a href="listaPacientes"><span
						class="glyphicon glyphicon-chevron-left"></span> Voltar</a></li>
			</ul>
		</div>
	</div>

	<c:import url="../rodape.jsp" />

	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>

</body>
</html>
