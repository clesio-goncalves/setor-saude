<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Listar Pacientes</title>
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" type="text/css"
	href="resources/css/jquery.dataTables.css">
</head>
<body>

	<c:import url="../cabecalho.jsp" />

	<div class="container">
		<div class="row">
			<div class="panel panel-default col-lg-12">
				<div class="panel-heading">Listagem de Pacientes</div>

				<!-- Table -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-hover display"
							id="table_id">
							<thead>
								<tr>
									<th>ID</th>
									<th>Nome</th>
									<th>RG</th>
									<th>Cartão SUS</th>
									<th>Vínculo</th>
									<th>Nascimento</th>
									<th>Sexo</th>
									<th>Ações</th>
								</tr>
							</thead>
							<tbody>
								<!-- percorre pacientes montando as linhas da tabela -->
								<c:forEach var="paciente" items="${pacientes}">
									<tr>
										<td>${paciente.id}</td>
										<td>${paciente.nome}</td>
										<td>${paciente.rg}</td>

										<!-- CARTÃO SUS -->
										<c:if test="${not empty paciente.cartao_sus}">
											<td>${paciente.cartao_sus}</td>
										</c:if>
										<c:if test="${empty paciente.cartao_sus}">
											<td>Não informado</td>
										</c:if>

										<td>${paciente.vinculo}</td>
										<td><fmt:formatDate
												value="${paciente.data_nascimento.time}"
												pattern="dd/MM/yyyy" /></td>

										<!-- Sexo -->
										<c:if test="${paciente.sexo eq 'Masculino'}">
											<td>M</td>
										</c:if>
										<c:if test="${paciente.sexo eq 'Feminino'}">
											<td>F</td>
										</c:if>

										<!-- AÇÕES -->
										<td>
											<!-- Exibir --> <a href="exibirPaciente?id=${paciente.id}"
											class="btn btn-success btn-xs"><span
												class="glyphicon glyphicon-zoom-in"></span> Exibir</a> <!-- Editar -->
											<a href="editarPaciente?id=${paciente.id}"
											class="btn btn-info btn-xs"><span
												class="glyphicon glyphicon-edit"></span> Editar </a> <!-- Botão exluir -->
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#${paciente.id}">
												<span class="glyphicon glyphicon-trash"></span> Excluir
											</button> <!-- Modal -->
											<div class="modal fade" id="${paciente.id}" tabindex="-1"
												role="dialog" aria-labelledby="myModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">
																<span aria-hidden="true">&times;</span><span
																	class="sr-only">Fechar</span>
															</button>
															<h4 class="modal-title" id="myModalLabel">Exclusão
																do paciente</h4>
														</div>
														<div class="modal-body">Deseja realmente excluir o
															paciente (${paciente.id}) -> ${paciente.nome}?</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-default"
																data-dismiss="modal">
																<span class="glyphicon glyphicon-log-out"></span> Fechar
															</button>
															<a href="removePaciente?id=${paciente.id}"
																class="btn btn-danger"><span
																class="glyphicon glyphicon-trash"></span> Excluir</a>
														</div>
													</div>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>

						</table>
					</div>
				</div>
			</div>
			<a href="novoPaciente" class="btn btn-primary btn-lg"><span
				class="glyphicon glyphicon-plus"></span> Cadastrar</a>
		</div>
	</div>


	<c:import url="../rodape.jsp" />

	<!-- jQuery -->
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>

	<!-- DataTables -->
	<script src="resources/js/jquery.dataTables.js"></script>

	<script>
		$(document).ready(function() {
			$('#table_id').DataTable({
				"language" : {
					"url" : "resources/idioma/Portuguese-Brasil.json"
				}
			});
		});
	</script>

</body>
</html>