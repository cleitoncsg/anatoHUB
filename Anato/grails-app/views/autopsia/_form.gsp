<%@ page import="anato.Autopsia" %>



			<div class="${hasErrors(bean: autopsiaInstance, field: 'coletaDeMaterial', 'error')} required">
				<label for="coletaDeMaterial" class="control-label"><g:message code="autopsia.coletaDeMaterial.label" default="Coleta De Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="coletaDeMaterial" precision="day"  value="${autopsiaInstance?.coletaDeMaterial}"  />
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'coletaDeMaterial', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'conclusao', 'error')} ">
				<label for="conclusao" class="control-label"><g:message code="autopsia.conclusao.label" default="Conclusao" /></label>
				<div>
					<g:textField class="form-control" name="conclusao" value="${autopsiaInstance?.conclusao}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'conclusao', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'dataDeRequisicao', 'error')} required">
				<label for="dataDeRequisicao" class="control-label"><g:message code="autopsia.dataDeRequisicao.label" default="Data De Requisicao" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataDeRequisicao" precision="day"  value="${autopsiaInstance?.dataDeRequisicao}"  />
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'dataDeRequisicao', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'legenda', 'error')} ">
				<label for="legenda" class="control-label"><g:message code="autopsia.legenda.label" default="Legenda" /></label>
				<div>
					<g:textField class="form-control" name="legenda" value="${autopsiaInstance?.legenda}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'legenda', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'materialRecebido', 'error')} ">
				<label for="materialRecebido" class="control-label"><g:message code="autopsia.materialRecebido.label" default="Material Recebido" /></label>
				<div>
					<g:textField class="form-control" name="materialRecebido" value="${autopsiaInstance?.materialRecebido}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'materialRecebido', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'medicoRequisitante', 'error')} ">
				<label for="medicoRequisitante" class="control-label"><g:message code="autopsia.medicoRequisitante.label" default="Medico Requisitante" /></label>
				<div>
					<g:textField class="form-control" name="medicoRequisitante" value="${autopsiaInstance?.medicoRequisitante}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'medicoRequisitante', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'medicoResidente', 'error')} ">
				<label for="medicoResidente" class="control-label"><g:message code="autopsia.medicoResidente.label" default="Medico Residente" /></label>
				<div>
					<g:textField class="form-control" name="medicoResidente" value="${autopsiaInstance?.medicoResidente}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'medicoResidente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'notas', 'error')} ">
				<label for="notas" class="control-label"><g:message code="autopsia.notas.label" default="Notas" /></label>
				<div>
					<g:textField class="form-control" name="notas" value="${autopsiaInstance?.notas}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'notas', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'paciente', 'error')} required">
				<label for="paciente" class="control-label"><g:message code="autopsia.paciente.label" default="Paciente" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="paciente" name="paciente.id" from="${anato.Paciente.list()}" optionKey="id" required="" value="${autopsiaInstance?.paciente?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'paciente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'recebimentoDoMaterial', 'error')} required">
				<label for="recebimentoDoMaterial" class="control-label"><g:message code="autopsia.recebimentoDoMaterial.label" default="Recebimento Do Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="recebimentoDoMaterial" precision="day"  value="${autopsiaInstance?.recebimentoDoMaterial}"  />
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'recebimentoDoMaterial', 'error')}</span>
				</div>
			</div>

