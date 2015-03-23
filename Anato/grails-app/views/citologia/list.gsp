
<%@ page import="anato.Citologia" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'citologia.label', default: 'Citologia')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-citologia" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="coletaDeMaterial" title="${message(code: 'citologia.coletaDeMaterial.label', default: 'Coleta De Material')}" />
			
				<g:sortableColumn property="conclusao" title="${message(code: 'citologia.conclusao.label', default: 'Conclusao')}" />
			
				<g:sortableColumn property="dataDeRequisicao" title="${message(code: 'citologia.dataDeRequisicao.label', default: 'Data De Requisicao')}" />
			
				<g:sortableColumn property="dataEHoras" title="${message(code: 'citologia.dataEHoras.label', default: 'Data EH oras')}" />
			
				<g:sortableColumn property="informacoesClinicas" title="${message(code: 'citologia.informacoesClinicas.label', default: 'Informacoes Clinicas')}" />
			
				<g:sortableColumn property="legenda" title="${message(code: 'citologia.legenda.label', default: 'Legenda')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${citologiaInstanceList}" status="i" var="citologiaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${citologiaInstance.id}">${fieldValue(bean: citologiaInstance, field: "coletaDeMaterial")}</g:link></td>
			
				<td>${fieldValue(bean: citologiaInstance, field: "conclusao")}</td>
			
				<td><g:formatDate date="${citologiaInstance.dataDeRequisicao}" /></td>
			
				<td><g:formatDate date="${citologiaInstance.dataEHoras}" /></td>
			
				<td>${fieldValue(bean: citologiaInstance, field: "informacoesClinicas")}</td>
			
				<td>${fieldValue(bean: citologiaInstance, field: "legenda")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${citologiaInstanceCount}" />
	</div>
</section>

</body>

</html>
