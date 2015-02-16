
<%@ page import="anato.Paciente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paciente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paciente">
			
				<g:if test="${pacienteInstance?.dataDeNascimento}">
				<li class="fieldcontain">
					<span id="dataDeNascimento-label" class="property-label"><g:message code="paciente.dataDeNascimento.label" default="Data De Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="dataDeNascimento-label"><g:formatDate date="${pacienteInstance?.dataDeNascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.exames}">
				<li class="fieldcontain">
					<span id="exames-label" class="property-label"><g:message code="paciente.exames.label" default="Exames" /></span>
					
						<g:each in="${pacienteInstance.exames}" var="e">
						<span class="property-value" aria-labelledby="exames-label"><g:link controller="exame" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="paciente.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${pacienteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.nomeDaMae}">
				<li class="fieldcontain">
					<span id="nomeDaMae-label" class="property-label"><g:message code="paciente.nomeDaMae.label" default="Nome Da Mae" /></span>
					
						<span class="property-value" aria-labelledby="nomeDaMae-label"><g:fieldValue bean="${pacienteInstance}" field="nomeDaMae"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.prontuario}">
				<li class="fieldcontain">
					<span id="prontuario-label" class="property-label"><g:message code="paciente.prontuario.label" default="Prontuario" /></span>
					
						<span class="property-value" aria-labelledby="prontuario-label"><g:fieldValue bean="${pacienteInstance}" field="prontuario"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pacienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pacienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
