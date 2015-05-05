
<%@ page import="anato.Paciente" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
	<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
</head>

<body>

<section id="list-paciente" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="dataDeNascimento" title="${message(code: 'paciente.dataDeNascimento.label', default: 'Data De Nascimento')}" />
			
				<g:sortableColumn property="nome" title="${message(code: 'paciente.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="nomeDaMae" title="${message(code: 'paciente.nomeDaMae.label', default: 'Nome Da Mae')}" />
			
				<g:sortableColumn property="prontuario" title="${message(code: 'paciente.prontuario.label', default: 'Prontuario')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${pacienteInstanceList}" status="i" var="pacienteInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${pacienteInstance.id}">${fieldValue(bean: pacienteInstance, field: "dataDeNascimento")}</g:link></td>
			
				<td>${fieldValue(bean: pacienteInstance, field: "nome")}</td>
			
				<td>${fieldValue(bean: pacienteInstance, field: "nomeDaMae")}</td>
			
				<td>${fieldValue(bean: pacienteInstance, field: "prontuario")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${pacienteInstanceCount}" />
	</div>
</section>

</body>

</html>
