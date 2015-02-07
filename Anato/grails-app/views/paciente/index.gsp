
<%@ page import="anato.Paciente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-paciente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataDeNascimento" title="${message(code: 'paciente.dataDeNascimento.label', default: 'Data De Nascimento')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'paciente.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="nomeDaMae" title="${message(code: 'paciente.nomeDaMae.label', default: 'Nome Da Mae')}" />
					
						<g:sortableColumn property="prontuario" title="${message(code: 'paciente.prontuario.label', default: 'Prontuario')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pacienteInstanceList}" status="i" var="pacienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pacienteInstance.id}">${fieldValue(bean: pacienteInstance, field: "dataDeNascimento")}</g:link></td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "nomeDaMae")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "prontuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pacienteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
