
<%@ page import="anato.Congelacao" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'congelacao.label', default: 'Congelacao')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-congelacao" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="congelacao.conclusao.label" default="Conclusao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: congelacaoInstance, field: "conclusao")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="congelacao.informacoesClinicas.label" default="Informacoes Clinicas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: congelacaoInstance, field: "informacoesClinicas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="congelacao.legenda.label" default="Legenda" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: congelacaoInstance, field: "legenda")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="congelacao.macropsia.label" default="Macropsia" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: congelacaoInstance, field: "macropsia")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="congelacao.micropsia.label" default="Micropsia" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: congelacaoInstance, field: "micropsia")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="congelacao.notas.label" default="Notas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: congelacaoInstance, field: "notas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="congelacao.paciente.label" default="Paciente" /></td>
				
				<td valign="top" class="value"><g:link controller="paciente" action="show" id="${congelacaoInstance?.paciente?.id}">${congelacaoInstance?.paciente?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
