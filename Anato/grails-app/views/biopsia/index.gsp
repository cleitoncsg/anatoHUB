
<%@ page import="anato.Biopsia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'biopsia.label', default: 'Biopsia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-biopsia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-biopsia" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="coletaDeMaterial" title="${message(code: 'biopsia.coletaDeMaterial.label', default: 'Coleta De Material')}" />
					
						<g:sortableColumn property="conclusao" title="${message(code: 'biopsia.conclusao.label', default: 'Conclusao')}" />
					
						<g:sortableColumn property="dataDeRequisicao" title="${message(code: 'biopsia.dataDeRequisicao.label', default: 'Data De Requisicao')}" />
					
						<g:sortableColumn property="informacoesClinicas" title="${message(code: 'biopsia.informacoesClinicas.label', default: 'Informacoes Clinicas')}" />
					
						<g:sortableColumn property="legenda" title="${message(code: 'biopsia.legenda.label', default: 'Legenda')}" />
					
						<g:sortableColumn property="macropsia" title="${message(code: 'biopsia.macropsia.label', default: 'Macropsia')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${biopsiaInstanceList}" status="i" var="biopsiaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${biopsiaInstance.id}">${fieldValue(bean: biopsiaInstance, field: "coletaDeMaterial")}</g:link></td>
					
						<td>${fieldValue(bean: biopsiaInstance, field: "conclusao")}</td>
					
						<td><g:formatDate date="${biopsiaInstance.dataDeRequisicao}" /></td>
					
						<td>${fieldValue(bean: biopsiaInstance, field: "informacoesClinicas")}</td>
					
						<td>${fieldValue(bean: biopsiaInstance, field: "legenda")}</td>
					
						<td>${fieldValue(bean: biopsiaInstance, field: "macropsia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${biopsiaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
