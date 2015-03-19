
<%@ page import="anato.Citologia" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'citologia.label', default: 'Citologia')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-citologia" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.conclusao.label" default="Conclusao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "conclusao")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.informacoesClinicas.label" default="Informacoes Clinicas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "informacoesClinicas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.legenda.label" default="Legenda" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "legenda")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.micropsia.label" default="Micropsia" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "micropsia")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.notas.label" default="Notas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "notas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.paciente.label" default="Paciente" /></td>
				
				<td valign="top" class="value"><g:link controller="paciente" action="show" id="${citologiaInstance?.paciente?.id}">${citologiaInstance?.paciente?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.quantidade.label" default="Quantidade" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "quantidade")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
