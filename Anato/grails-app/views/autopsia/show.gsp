
<%@ page import="anato.Autopsia" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'autopsia.label', default: 'Autopsia')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-autopsia" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.coletaDeMaterial.label" default="Coleta De Material" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${autopsiaInstance?.coletaDeMaterial}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.dataDeRequisicao.label" default="Data De Requisicao" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${autopsiaInstance?.dataDeRequisicao}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.dataEHoras.label" default="Data EH oras" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${autopsiaInstance?.dataEHoras}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.doencaConsequenciasFinal.label" default="Doenca Consequencias Final" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "doencaConsequenciasFinal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.doencaPrincipal.label" default="Doenca Principal" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "doencaPrincipal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.doencasConsequencia.label" default="Doencas Consequencia" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "doencasConsequencia")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.doencasContribuintes.label" default="Doencas Contribuintes" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "doencasContribuintes")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.legenda.label" default="Legenda" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "legenda")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.materialRecebido.label" default="Material Recebido" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "materialRecebido")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.medicoRequisitante.label" default="Medico Requisitante" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "medicoRequisitante")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.medicoResidente.label" default="Medico Residente" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "medicoResidente")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.notas.label" default="Notas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "notas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.outrasDoencas.label" default="Outras Doencas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: autopsiaInstance, field: "outrasDoencas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.paciente.label" default="Paciente" /></td>
				
				<td valign="top" class="value"><g:link controller="paciente" action="show" id="${autopsiaInstance?.paciente?.id}">${autopsiaInstance?.paciente?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="autopsia.recebimentoDoMaterial.label" default="Recebimento Do Material" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${autopsiaInstance?.recebimentoDoMaterial}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
