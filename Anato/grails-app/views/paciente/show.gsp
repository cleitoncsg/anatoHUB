
<%@ page import="anato.Paciente" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-paciente" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.dataDeNascimento.label" default="Data De Nascimento" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${pacienteInstance?.dataDeNascimento}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.exames.label" default="Exames" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${pacienteInstance.exames}" var="e">
						<li><g:link controller="exame" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.nomeDaMae.label" default="Nome Da Mae" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "nomeDaMae")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.prontuario.label" default="Prontuario" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "prontuario")}</td>
				
			</tr>
		
		</tbody>
	</table>


	<li class="add">
		<g:link class="btn btn-large btn-success" controller="biopsia" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'biopsia.label', default: 'Biopsia')])}</g:link>
	</li>

	<li class="add">
		<g:link class="btn btn-large btn-success" controller="autopsia" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'autopsia.label', default: 'Autopsia')])}</g:link>
	</li>
</section>

</body>

</html>
