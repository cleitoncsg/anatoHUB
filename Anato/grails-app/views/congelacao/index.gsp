
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
			
				<g:sortableColumn property="conclusao" title="${message(code: 'congelacao.conclusao.label', default: 'Conclusao')}" />
			
				<g:sortableColumn property="informacoesClinicas" title="${message(code: 'congelacao.informacoesClinicas.label', default: 'Informacoes Clinicas')}" />
			
				<g:sortableColumn property="legenda" title="${message(code: 'congelacao.legenda.label', default: 'Legenda')}" />
			
				<g:sortableColumn property="macropsia" title="${message(code: 'congelacao.macropsia.label', default: 'Macropsia')}" />
			
				<g:sortableColumn property="micropsia" title="${message(code: 'congelacao.micropsia.label', default: 'Micropsia')}" />
			
				<g:sortableColumn property="notas" title="${message(code: 'congelacao.notas.label', default: 'Notas')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${congelacaoInstanceList}" status="i" var="congelacaoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${congelacaoInstance.id}">${fieldValue(bean: congelacaoInstance, field: "conclusao")}</g:link></td>
			
				<td>${fieldValue(bean: congelacaoInstance, field: "informacoesClinicas")}</td>
			
				<td>${fieldValue(bean: congelacaoInstance, field: "legenda")}</td>
			
				<td>${fieldValue(bean: congelacaoInstance, field: "macropsia")}</td>
			
				<td>${fieldValue(bean: congelacaoInstance, field: "micropsia")}</td>
			
				<td>${fieldValue(bean: congelacaoInstance, field: "notas")}</td>
			
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
