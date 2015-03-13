<%@ page import="anato.Paciente" %>



			<div class="${hasErrors(bean: pacienteInstance, field: 'biopsias', 'error')} ">
				<label for="biopsias" class="control-label"><g:message code="paciente.biopsias.label" default="Biopsias" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${pacienteInstance?.biopsias?}" var="b">
    <li><g:link controller="biopsia" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="biopsia" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'biopsia.label', default: 'Biopsia')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: pacienteInstance, field: 'biopsias', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: pacienteInstance, field: 'autopsias', 'error')} ">
				<label for="autopsias" class="control-label"><g:message code="paciente.autopsias.label" default="Autopsias" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${pacienteInstance?.autopsias?}" var="a">
    <li><g:link controller="autopsia" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="autopsia" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'autopsia.label', default: 'Autopsia')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: pacienteInstance, field: 'autopsias', 'error')}</span>
				</div>
			</div>

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

