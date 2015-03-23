
<%@ page import="anato.Congelacao" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'congelacao.label', default: 'Congelacao')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-congelacao" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="coletaDeMaterial" title="${message(code: 'congelacao.coletaDeMaterial.label', default: 'Coleta De Material')}" />
			
				<g:sortableColumn property="conclusao" title="${message(code: 'congelacao.conclusao.label', default: 'Conclusao')}" />
			
				<g:sortableColumn property="dataDeRequisicao" title="${message(code: 'congelacao.dataDeRequisicao.label', default: 'Data De Requisicao')}" />
			
				<g:sortableColumn property="dataEHoras" title="${message(code: 'congelacao.dataEHoras.label', default: 'Data EH oras')}" />
			
				<g:sortableColumn property="informacoesClinicas" title="${message(code: 'congelacao.informacoesClinicas.label', default: 'Informacoes Clinicas')}" />
			
				<g:sortableColumn property="legenda" title="${message(code: 'congelacao.legenda.label', default: 'Legenda')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${congelacaoInstanceList}" status="i" var="congelacaoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${congelacaoInstance.id}">${fieldValue(bean: congelacaoInstance, field: "coletaDeMaterial")}</g:link></td>
			
				<td>${fieldValue(bean: congelacaoInstance, field: "conclusao")}</td>
			
				<td><g:formatDate date="${congelacaoInstance.dataDeRequisicao}" /></td>
			
				<td><g:formatDate date="${congelacaoInstance.dataEHoras}" /></td>
			
				<td>${fieldValue(bean: congelacaoInstance, field: "informacoesClinicas")}</td>
			
				<td>${fieldValue(bean: congelacaoInstance, field: "legenda")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${congelacaoInstanceCount}" />
	</div>
</section>

</body>

</html>
