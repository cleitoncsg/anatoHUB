<%@ page import="anato.Biopsia" %>



<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'coletaDeMaterial', 'error')} required">
	<label for="coletaDeMaterial">
		<g:message code="biopsia.coletaDeMaterial.label" default="Coleta De Material" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="coletaDeMaterial" precision="day"  value="${biopsiaInstance?.coletaDeMaterial}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'conclusao', 'error')} required">
	<label for="conclusao">
		<g:message code="biopsia.conclusao.label" default="Conclusao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="conclusao" required="" value="${biopsiaInstance?.conclusao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'dataDeRequisicao', 'error')} required">
	<label for="dataDeRequisicao">
		<g:message code="biopsia.dataDeRequisicao.label" default="Data De Requisicao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataDeRequisicao" precision="day"  value="${biopsiaInstance?.dataDeRequisicao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'informacoesClinicas', 'error')} required">
	<label for="informacoesClinicas">
		<g:message code="biopsia.informacoesClinicas.label" default="Informacoes Clinicas" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="informacoesClinicas" required="" value="${biopsiaInstance?.informacoesClinicas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'legenda', 'error')} required">
	<label for="legenda">
		<g:message code="biopsia.legenda.label" default="Legenda" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="legenda" required="" value="${biopsiaInstance?.legenda}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'macropsia', 'error')} required">
	<label for="macropsia">
		<g:message code="biopsia.macropsia.label" default="Macropsia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="macropsia" required="" value="${biopsiaInstance?.macropsia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'materialRecebido', 'error')} required">
	<label for="materialRecebido">
		<g:message code="biopsia.materialRecebido.label" default="Material Recebido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="materialRecebido" required="" value="${biopsiaInstance?.materialRecebido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'medicoRequisitante', 'error')} required">
	<label for="medicoRequisitante">
		<g:message code="biopsia.medicoRequisitante.label" default="Medico Requisitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="medicoRequisitante" required="" value="${biopsiaInstance?.medicoRequisitante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'medicoResidente', 'error')} required">
	<label for="medicoResidente">
		<g:message code="biopsia.medicoResidente.label" default="Medico Residente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="medicoResidente" required="" value="${biopsiaInstance?.medicoResidente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'micropsia', 'error')} required">
	<label for="micropsia">
		<g:message code="biopsia.micropsia.label" default="Micropsia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="micropsia" required="" value="${biopsiaInstance?.micropsia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'notas', 'error')} required">
	<label for="notas">
		<g:message code="biopsia.notas.label" default="Notas" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="notas" required="" value="${biopsiaInstance?.notas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'paciente', 'error')} required">
	<label for="paciente">
		<g:message code="biopsia.paciente.label" default="Paciente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paciente" name="paciente.id" from="${anato.Paciente.list()}" optionKey="id" required="" value="${biopsiaInstance?.paciente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: biopsiaInstance, field: 'recebimentoDoMaterial', 'error')} required">
	<label for="recebimentoDoMaterial">
		<g:message code="biopsia.recebimentoDoMaterial.label" default="Recebimento Do Material" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="recebimentoDoMaterial" precision="day"  value="${biopsiaInstance?.recebimentoDoMaterial}"  />

</div>

