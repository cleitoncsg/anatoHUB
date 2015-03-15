
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
			
				<g:sortableColumn property="dataDeRequisicao" title="${message(code: 'autopsia.dataDeRequisicao.label', default: 'Data De Requisicao')}" />
			
				<g:sortableColumn property="doencaConsequenciasFinal" title="${message(code: 'autopsia.doencaConsequenciasFinal.label', default: 'Doenca Consequencias Final')}" />
			
				<g:sortableColumn property="doencaPrincipal" title="${message(code: 'autopsia.doencaPrincipal.label', default: 'Doenca Principal')}" />
			
				<g:sortableColumn property="doencasConsequencia" title="${message(code: 'autopsia.doencasConsequencia.label', default: 'Doencas Consequencia')}" />
			
				<g:sortableColumn property="doencasContribuintes" title="${message(code: 'autopsia.doencasContribuintes.label', default: 'Doencas Contribuintes')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${autopsiaInstanceList}" status="i" var="autopsiaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${autopsiaInstance.id}">${fieldValue(bean: autopsiaInstance, field: "coletaDeMaterial")}</g:link></td>
			
				<td><g:formatDate date="${autopsiaInstance.dataDeRequisicao}" /></td>
			
				<td>${fieldValue(bean: autopsiaInstance, field: "doencaConsequenciasFinal")}</td>
			
				<td>${fieldValue(bean: autopsiaInstance, field: "doencaPrincipal")}</td>
			
				<td>${fieldValue(bean: autopsiaInstance, field: "doencasConsequencia")}</td>
			
				<td>${fieldValue(bean: autopsiaInstance, field: "doencasContribuintes")}</td>
			
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
