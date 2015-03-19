
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
			
				<g:sortableColumn property="conclusao" title="${message(code: 'imunoHistoquimica.conclusao.label', default: 'Conclusao')}" />
			
				<g:sortableColumn property="informacoesClinicas" title="${message(code: 'imunoHistoquimica.informacoesClinicas.label', default: 'Informacoes Clinicas')}" />
			
				<g:sortableColumn property="legenda" title="${message(code: 'imunoHistoquimica.legenda.label', default: 'Legenda')}" />
			
				<g:sortableColumn property="notas" title="${message(code: 'imunoHistoquimica.notas.label', default: 'Notas')}" />
			
				<th><g:message code="imunoHistoquimica.paciente.label" default="Paciente" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${imunoHistoquimicaInstanceList}" status="i" var="imunoHistoquimicaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${imunoHistoquimicaInstance.id}">${fieldValue(bean: imunoHistoquimicaInstance, field: "conclusao")}</g:link></td>
			
				<td>${fieldValue(bean: imunoHistoquimicaInstance, field: "informacoesClinicas")}</td>
			
				<td>${fieldValue(bean: imunoHistoquimicaInstance, field: "legenda")}</td>
			
				<td>${fieldValue(bean: imunoHistoquimicaInstance, field: "notas")}</td>
			
				<td>${fieldValue(bean: imunoHistoquimicaInstance, field: "paciente")}</td>
			
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
