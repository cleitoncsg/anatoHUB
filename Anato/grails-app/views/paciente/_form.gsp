<%@ page import="anato.Paciente" %>



<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'dataDeNascimento', 'error')} required">
	<label for="dataDeNascimento">
		<g:message code="paciente.dataDeNascimento.label" default="Data De Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataDeNascimento" precision="day"  value="${pacienteInstance?.dataDeNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'exames', 'error')} ">
	<label for="exames">
		<g:message code="paciente.exames.label" default="Exames" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pacienteInstance?.exames?}" var="e">
    <li><g:link controller="exame" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="exame" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'exame.label', default: 'Exame')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="paciente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${pacienteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nomeDaMae', 'error')} required">
	<label for="nomeDaMae">
		<g:message code="paciente.nomeDaMae.label" default="Nome Da Mae" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeDaMae" required="" value="${pacienteInstance?.nomeDaMae}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'prontuario', 'error')} required">
	<label for="prontuario">
		<g:message code="paciente.prontuario.label" default="Prontuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prontuario" required="" value="${pacienteInstance?.prontuario}"/>

</div>

