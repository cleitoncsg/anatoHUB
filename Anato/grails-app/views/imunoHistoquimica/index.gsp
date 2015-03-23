
<%@ page import="anato.ImunoHistoquimica" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'imunoHistoquimica.label', default: 'ImunoHistoquimica')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-imunoHistoquimica" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="coletaDeMaterial" title="${message(code: 'imunoHistoquimica.coletaDeMaterial.label', default: 'Coleta De Material')}" />
			
				<g:sortableColumn property="conclusao" title="${message(code: 'imunoHistoquimica.conclusao.label', default: 'Conclusao')}" />
			
				<g:sortableColumn property="dataDeRequisicao" title="${message(code: 'imunoHistoquimica.dataDeRequisicao.label', default: 'Data De Requisicao')}" />
			
				<g:sortableColumn property="dataEHoras" title="${message(code: 'imunoHistoquimica.dataEHoras.label', default: 'Data EH oras')}" />
			
				<g:sortableColumn property="informacoesClinicas" title="${message(code: 'imunoHistoquimica.informacoesClinicas.label', default: 'Informacoes Clinicas')}" />
			
				<g:sortableColumn property="legenda" title="${message(code: 'imunoHistoquimica.legenda.label', default: 'Legenda')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${imunoHistoquimicaInstanceList}" status="i" var="imunoHistoquimicaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${imunoHistoquimicaInstance.id}">${fieldValue(bean: imunoHistoquimicaInstance, field: "coletaDeMaterial")}</g:link></td>
			
				<td>${fieldValue(bean: imunoHistoquimicaInstance, field: "conclusao")}</td>
			
				<td><g:formatDate date="${imunoHistoquimicaInstance.dataDeRequisicao}" /></td>
			
				<td><g:formatDate date="${imunoHistoquimicaInstance.dataEHoras}" /></td>
			
				<td>${fieldValue(bean: imunoHistoquimicaInstance, field: "informacoesClinicas")}</td>
			
				<td>${fieldValue(bean: imunoHistoquimicaInstance, field: "legenda")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${imunoHistoquimicaInstanceCount}" />
	</div>
</section>

</body>

</html>
