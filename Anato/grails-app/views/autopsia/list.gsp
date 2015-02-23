
<%@ page import="anato.Autopsia" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'autopsia.label', default: 'Autopsia')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-autopsia" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="coletaDeMaterial" title="${message(code: 'autopsia.coletaDeMaterial.label', default: 'Coleta De Material')}" />
			
				<g:sortableColumn property="conclusao" title="${message(code: 'autopsia.conclusao.label', default: 'Conclusao')}" />
			
				<g:sortableColumn property="dataDeRequisicao" title="${message(code: 'autopsia.dataDeRequisicao.label', default: 'Data De Requisicao')}" />
			
				<g:sortableColumn property="legenda" title="${message(code: 'autopsia.legenda.label', default: 'Legenda')}" />
			
				<g:sortableColumn property="materialRecebido" title="${message(code: 'autopsia.materialRecebido.label', default: 'Material Recebido')}" />
			
				<g:sortableColumn property="medicoRequisitante" title="${message(code: 'autopsia.medicoRequisitante.label', default: 'Medico Requisitante')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${autopsiaInstanceList}" status="i" var="autopsiaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${autopsiaInstance.id}">${fieldValue(bean: autopsiaInstance, field: "coletaDeMaterial")}</g:link></td>
			
				<td>${fieldValue(bean: autopsiaInstance, field: "conclusao")}</td>
			
				<td><g:formatDate date="${autopsiaInstance.dataDeRequisicao}" /></td>
			
				<td>${fieldValue(bean: autopsiaInstance, field: "legenda")}</td>
			
				<td>${fieldValue(bean: autopsiaInstance, field: "materialRecebido")}</td>
			
				<td>${fieldValue(bean: autopsiaInstance, field: "medicoRequisitante")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${autopsiaInstanceCount}" />
	</div>
</section>

</body>

</html>
