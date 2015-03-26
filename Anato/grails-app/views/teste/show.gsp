
<%@ page import="anato.Teste" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'teste.label', default: 'Teste')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-teste" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="teste.lala.label" default="Lala" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${testeInstance?.lala}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
