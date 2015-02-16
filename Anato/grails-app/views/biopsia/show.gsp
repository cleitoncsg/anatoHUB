
<%@ page import="anato.Biopsia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'biopsia.label', default: 'Biopsia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-biopsia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-biopsia" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list biopsia">
			
				<g:if test="${biopsiaInstance?.coletaDeMaterial}">
				<li class="fieldcontain">
					<span id="coletaDeMaterial-label" class="property-label"><g:message code="biopsia.coletaDeMaterial.label" default="Coleta De Material" /></span>
					
						<span class="property-value" aria-labelledby="coletaDeMaterial-label"><g:formatDate date="${biopsiaInstance?.coletaDeMaterial}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.conclusao}">
				<li class="fieldcontain">
					<span id="conclusao-label" class="property-label"><g:message code="biopsia.conclusao.label" default="Conclusao" /></span>
					
						<span class="property-value" aria-labelledby="conclusao-label"><g:fieldValue bean="${biopsiaInstance}" field="conclusao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.dataDeRequisicao}">
				<li class="fieldcontain">
					<span id="dataDeRequisicao-label" class="property-label"><g:message code="biopsia.dataDeRequisicao.label" default="Data De Requisicao" /></span>
					
						<span class="property-value" aria-labelledby="dataDeRequisicao-label"><g:formatDate date="${biopsiaInstance?.dataDeRequisicao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.informacoesClinicas}">
				<li class="fieldcontain">
					<span id="informacoesClinicas-label" class="property-label"><g:message code="biopsia.informacoesClinicas.label" default="Informacoes Clinicas" /></span>
					
						<span class="property-value" aria-labelledby="informacoesClinicas-label"><g:fieldValue bean="${biopsiaInstance}" field="informacoesClinicas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.legenda}">
				<li class="fieldcontain">
					<span id="legenda-label" class="property-label"><g:message code="biopsia.legenda.label" default="Legenda" /></span>
					
						<span class="property-value" aria-labelledby="legenda-label"><g:fieldValue bean="${biopsiaInstance}" field="legenda"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.macropsia}">
				<li class="fieldcontain">
					<span id="macropsia-label" class="property-label"><g:message code="biopsia.macropsia.label" default="Macropsia" /></span>
					
						<span class="property-value" aria-labelledby="macropsia-label"><g:fieldValue bean="${biopsiaInstance}" field="macropsia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.materialRecebido}">
				<li class="fieldcontain">
					<span id="materialRecebido-label" class="property-label"><g:message code="biopsia.materialRecebido.label" default="Material Recebido" /></span>
					
						<span class="property-value" aria-labelledby="materialRecebido-label"><g:fieldValue bean="${biopsiaInstance}" field="materialRecebido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.medicoRequisitante}">
				<li class="fieldcontain">
					<span id="medicoRequisitante-label" class="property-label"><g:message code="biopsia.medicoRequisitante.label" default="Medico Requisitante" /></span>
					
						<span class="property-value" aria-labelledby="medicoRequisitante-label"><g:fieldValue bean="${biopsiaInstance}" field="medicoRequisitante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.medicoResidente}">
				<li class="fieldcontain">
					<span id="medicoResidente-label" class="property-label"><g:message code="biopsia.medicoResidente.label" default="Medico Residente" /></span>
					
						<span class="property-value" aria-labelledby="medicoResidente-label"><g:fieldValue bean="${biopsiaInstance}" field="medicoResidente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.micropsia}">
				<li class="fieldcontain">
					<span id="micropsia-label" class="property-label"><g:message code="biopsia.micropsia.label" default="Micropsia" /></span>
					
						<span class="property-value" aria-labelledby="micropsia-label"><g:fieldValue bean="${biopsiaInstance}" field="micropsia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.notas}">
				<li class="fieldcontain">
					<span id="notas-label" class="property-label"><g:message code="biopsia.notas.label" default="Notas" /></span>
					
						<span class="property-value" aria-labelledby="notas-label"><g:fieldValue bean="${biopsiaInstance}" field="notas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.paciente}">
				<li class="fieldcontain">
					<span id="paciente-label" class="property-label"><g:message code="biopsia.paciente.label" default="Paciente" /></span>
					
						<span class="property-value" aria-labelledby="paciente-label"><g:link controller="paciente" action="show" id="${biopsiaInstance?.paciente?.id}">${biopsiaInstance?.paciente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${biopsiaInstance?.recebimentoDoMaterial}">
				<li class="fieldcontain">
					<span id="recebimentoDoMaterial-label" class="property-label"><g:message code="biopsia.recebimentoDoMaterial.label" default="Recebimento Do Material" /></span>
					
						<span class="property-value" aria-labelledby="recebimentoDoMaterial-label"><g:formatDate date="${biopsiaInstance?.recebimentoDoMaterial}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:biopsiaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${biopsiaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
