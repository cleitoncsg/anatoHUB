<%@ page import="anato.Paciente" %>

			<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
			<div class="${hasErrors(bean: pacienteInstance, field: 'dataDeNascimento', 'error')} required">
				<label for="dataDeNascimento" class="control-label"><g:message code="paciente.dataDeNascimento.label" default="Data De Nascimento" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataDeNascimento" precision="day"  value="${pacienteInstance?.dataDeNascimento}"  />
					<span class="help-inline">${hasErrors(bean: pacienteInstance, field: 'dataDeNascimento', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: pacienteInstance, field: 'nome', 'error')} ">
				<label for="nome" class="control-label"><g:message code="paciente.nome.label" default="Nome" /></label>
				<div>
					<g:textField class="form-control" name="nome" value="${pacienteInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: pacienteInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: pacienteInstance, field: 'nomeDaMae', 'error')} ">
				<label for="nomeDaMae" class="control-label"><g:message code="paciente.nomeDaMae.label" default="Nome Da Mae" /></label>
				<div>
					<g:textField class="form-control" name="nomeDaMae" value="${pacienteInstance?.nomeDaMae}"/>
					<span class="help-inline">${hasErrors(bean: pacienteInstance, field: 'nomeDaMae', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: pacienteInstance, field: 'prontuario', 'error')} ">
				<label for="prontuario" class="control-label"><g:message code="paciente.prontuario.label" default="Prontuario" /></label>
				<div>
					<g:textField class="form-control" name="prontuario" value="${pacienteInstance?.prontuario}"/>
					<span class="help-inline">${hasErrors(bean: pacienteInstance, field: 'prontuario', 'error')}</span>
				</div>
			</div>

