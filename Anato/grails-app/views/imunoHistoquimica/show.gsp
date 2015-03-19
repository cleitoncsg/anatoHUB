
<%@ page import="anato.ImunoHistoquimica" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'imunoHistoquimica.label', default: 'ImunoHistoquimica')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-imunoHistoquimica" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="imunoHistoquimica.conclusao.label" default="Conclusao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: imunoHistoquimicaInstance, field: "conclusao")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="imunoHistoquimica.informacoesClinicas.label" default="Informacoes Clinicas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: imunoHistoquimicaInstance, field: "informacoesClinicas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="imunoHistoquimica.legenda.label" default="Legenda" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: imunoHistoquimicaInstance, field: "legenda")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="imunoHistoquimica.notas.label" default="Notas" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: imunoHistoquimicaInstance, field: "notas")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="imunoHistoquimica.paciente.label" default="Paciente" /></td>
				
				<td valign="top" class="value"><g:link controller="paciente" action="show" id="${imunoHistoquimicaInstance?.paciente?.id}">${imunoHistoquimicaInstance?.paciente?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
