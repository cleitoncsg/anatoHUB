<%@ page import="anato.Paciente" %>



			<div class="${hasErrors(bean: pacienteInstance, field: 'dataDeNascimento', 'error')} required">
				<label for="dataDeNascimento" class="control-label">
					<g:message code="paciente.dataDeNascimento.label" default="Data De Nascimento" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataDeNascimento" precision="day"  value="${pacienteInstance?.dataDeNascimento}"  />
					<span class="help-inline">${hasErrors(bean: pacienteInstance, field: 'dataDeNascimento', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: pacienteInstance, field: 'exames', 'error')} ">
				<label for="exames" class="control-label"><g:message code="paciente.exames.label" default="Exames" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${pacienteInstance?.exames?}" var="e">
    <li><g:link controller="exame" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="exame" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'exame.label', default: 'Exame')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: pacienteInstance, field: 'exames', 'error')}</span>
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

