
<%@ page import="anato.Teste" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'teste.label', default: 'Teste')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-teste" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="lala" title="${message(code: 'teste.lala.label', default: 'Lala')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${testeInstanceList}" status="i" var="testeInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${testeInstance.id}">${fieldValue(bean: testeInstance, field: "lala")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${testeInstanceCount}" />
	</div>
</section>

</body>

</html>
