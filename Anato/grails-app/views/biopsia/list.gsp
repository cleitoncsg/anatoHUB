
<%@ page import="anato.Biopsia" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'biopsia.label', default: 'Biopsia')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-biopsia" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="coletaDeMaterial" title="${message(code: 'biopsia.coletaDeMaterial.label', default: 'Coleta De Material')}" />
			
				<g:sortableColumn property="conclusao" title="${message(code: 'biopsia.conclusao.label', default: 'Conclusao')}" />
			
				<g:sortableColumn property="dataDeRequisicao" title="${message(code: 'biopsia.dataDeRequisicao.label', default: 'Data De Requisicao')}" />
			
				<g:sortableColumn property="dataEHoras" title="${message(code: 'biopsia.dataEHoras.label', default: 'Data EH oras')}" />
			
				<g:sortableColumn property="informacoesClinicas" title="${message(code: 'biopsia.informacoesClinicas.label', default: 'Informacoes Clinicas')}" />
			
				<g:sortableColumn property="legenda" title="${message(code: 'biopsia.legenda.label', default: 'Legenda')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${biopsiaInstanceList}" status="i" var="biopsiaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${biopsiaInstance.id}">${fieldValue(bean: biopsiaInstance, field: "coletaDeMaterial")}</g:link></td>
			
				<td>${fieldValue(bean: biopsiaInstance, field: "conclusao")}</td>
			
				<td><g:formatDate date="${biopsiaInstance.dataDeRequisicao}" /></td>
			
				<td><g:formatDate date="${biopsiaInstance.dataEHoras}" /></td>
			
				<td>${fieldValue(bean: biopsiaInstance, field: "informacoesClinicas")}</td>
			
				<td>${fieldValue(bean: biopsiaInstance, field: "legenda")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${biopsiaInstanceCount}" />
	</div>
</section>

</body>

</html>
