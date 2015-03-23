
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
				<td valign="top" class="name"><g:message code="citologia.coletaDeMaterial.label" default="Coleta De Material" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${citologiaInstance?.coletaDeMaterial}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.conclusao.label" default="Conclusao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "conclusao")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.dataDeRequisicao.label" default="Data De Requisicao" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${citologiaInstance?.dataDeRequisicao}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.dataEHoras.label" default="Data EH oras" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${citologiaInstance?.dataEHoras}" /></td>
				
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
				<td valign="top" class="name"><g:message code="citologia.materialRecebido.label" default="Material Recebido" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "materialRecebido")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.medicoRequisitante.label" default="Medico Requisitante" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "medicoRequisitante")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.medicoResidente.label" default="Medico Residente" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: citologiaInstance, field: "medicoResidente")}</td>
				
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
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="citologia.recebimentoDoMaterial.label" default="Recebimento Do Material" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${citologiaInstance?.recebimentoDoMaterial}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
