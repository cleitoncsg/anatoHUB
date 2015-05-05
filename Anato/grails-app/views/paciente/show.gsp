
<%@ page import="anato.Paciente" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
	<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
</head>

<body>

<section id="show-paciente" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.biopsias.label" default="Biopsias" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${pacienteInstance.biopsias}" var="b">
						<li><g:link controller="biopsia" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
					</g:each>
					<g:link class="btn btn-large btn-success" controller="biopsia" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'biopsia.label', default: 'Biopsia')])}</g:link>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.autopsias.label" default="Autopsias" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${pacienteInstance.autopsias}" var="a">
						<li><g:link controller="autopsia" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
					</g:each>
					<g:link class="btn btn-large btn-success" controller="autopsia" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'autopsia.label', default: 'Autopsia')])}</g:link>
					</ul>
				</td>
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.citologias.label" default="Citologias" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${pacienteInstance.citologias}" var="a">
						<li><g:link controller="citologia" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
					</g:each>
					<g:link class="btn btn-large btn-success" controller="citologia" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cigologia.label', default: 'Citologias')])}</g:link>
					</ul>
				</td>
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.congelamentos.label" default="Congelamentos" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${pacienteInstance.congelamentos}" var="a">
						<li><g:link controller="congelacao" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
					</g:each>
					<g:link class="btn btn-large btn-success" controller="congelacao" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'congelamento.label', default: 'Congelamentos')])}</g:link>
					</ul>
				</td>
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.imuno.label" default="Imuno-Histoquímico" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${pacienteInstance.imuno}" var="a">
						<li><g:link controller="imunoHistoloquimica" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
					</g:each>
					<g:link class="btn btn-large btn-success" controller="imunoHistoquimica" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'imunoHistoquimica.label', default: 'imunoHistoquimica')])}</g:link>
					</ul>
				</td>
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="paciente.dataDeNascimento.label" default="Data De Nascimento" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${pacienteInstance?.dataDeNascimento}" /></td>
				
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
</section>

</body>

</html>
