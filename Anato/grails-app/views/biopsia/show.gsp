
<%@ page import="anato.Biopsia" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'biopsia.label', default: 'Biopsia')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-biopsia" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.coletaDeMaterial.label" default="Coleta De Material" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${biopsiaInstance?.coletaDeMaterial}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.conclusao.label" default="Conclusao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "conclusao")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.dataDeRequisicao.label" default="Data De Requisicao" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${biopsiaInstance?.dataDeRequisicao}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.dataEHoras.label" default="Data EH oras" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${biopsiaInstance?.dataEHoras}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.informacoesClinicas.label" default="Informacoes Clinicas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "informacoesClinicas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.legenda.label" default="Legenda" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "legenda")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.macropsia.label" default="Macropsia" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "macropsia")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.materialRecebido.label" default="Material Recebido" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "materialRecebido")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.medicoRequisitante.label" default="Medico Requisitante" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "medicoRequisitante")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.medicoResidente.label" default="Medico Residente" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "medicoResidente")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.micropsia.label" default="Micropsia" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "micropsia")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.notas.label" default="Notas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: biopsiaInstance, field: "notas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.paciente.label" default="Paciente" /></td>
				
				<td valign="top" class="value"><g:link controller="paciente" action="show" id="${biopsiaInstance?.paciente?.id}">${biopsiaInstance?.paciente?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="biopsia.recebimentoDoMaterial.label" default="Recebimento Do Material" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${biopsiaInstance?.recebimentoDoMaterial}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
