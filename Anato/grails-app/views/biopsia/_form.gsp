<%@ page import="anato.Biopsia" %>



			<div class="${hasErrors(bean: biopsiaInstance, field: 'paciente', 'error')} required">
				<label for="paciente" class="control-label"><g:message code="biopsia.paciente.label" default="Paciente" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="paciente" name="paciente.id" from="${anato.Paciente.list()}" optionKey="id" required="" value="${biopsiaInstance?.paciente?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'paciente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'coletaDeMaterial', 'error')} required">
				<label for="coletaDeMaterial" class="control-label"><g:message code="biopsia.coletaDeMaterial.label" default="Coleta De Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="coletaDeMaterial" precision="day"  value="${biopsiaInstance?.coletaDeMaterial}"  />
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'coletaDeMaterial', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'conclusao', 'error')} ">
				<label for="conclusao" class="control-label"><g:message code="biopsia.conclusao.label" default="Conclusao" /></label>
				<div>
					<g:textField class="form-control" name="conclusao" value="${biopsiaInstance?.conclusao}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'conclusao', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'dataDeRequisicao', 'error')} required">
				<label for="dataDeRequisicao" class="control-label"><g:message code="biopsia.dataDeRequisicao.label" default="Data De Requisicao" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataDeRequisicao" precision="day"  value="${biopsiaInstance?.dataDeRequisicao}"  />
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'dataDeRequisicao', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'informacoesClinicas', 'error')} ">
				<label for="informacoesClinicas" class="control-label"><g:message code="biopsia.informacoesClinicas.label" default="Informacoes Clinicas" /></label>
				<div>
					<g:textField class="form-control" name="informacoesClinicas" value="${biopsiaInstance?.informacoesClinicas}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'informacoesClinicas', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'legenda', 'error')} ">
				<label for="legenda" class="control-label"><g:message code="biopsia.legenda.label" default="Legenda" /></label>
				<div>
					<g:textField class="form-control" name="legenda" value="${biopsiaInstance?.legenda}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'legenda', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'macropsia', 'error')} ">
				<label for="macropsia" class="control-label"><g:message code="biopsia.macropsia.label" default="Macropsia" /></label>
				<div>
					<g:textField class="form-control" name="macropsia" value="${biopsiaInstance?.macropsia}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'macropsia', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'materialRecebido', 'error')} ">
				<label for="materialRecebido" class="control-label"><g:message code="biopsia.materialRecebido.label" default="Material Recebido" /></label>
				<div>
					<g:textField class="form-control" name="materialRecebido" value="${biopsiaInstance?.materialRecebido}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'materialRecebido', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'medicoRequisitante', 'error')} ">
				<label for="medicoRequisitante" class="control-label"><g:message code="biopsia.medicoRequisitante.label" default="Medico Requisitante" /></label>
				<div>
					<g:textField class="form-control" name="medicoRequisitante" value="${biopsiaInstance?.medicoRequisitante}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'medicoRequisitante', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'medicoResidente', 'error')} ">
				<label for="medicoResidente" class="control-label"><g:message code="biopsia.medicoResidente.label" default="Medico Residente" /></label>
				<div>
					<g:textField class="form-control" name="medicoResidente" value="${biopsiaInstance?.medicoResidente}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'medicoResidente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'micropsia', 'error')} ">
				<label for="micropsia" class="control-label"><g:message code="biopsia.micropsia.label" default="Micropsia" /></label>
				<div>
					<g:textField class="form-control" name="micropsia" value="${biopsiaInstance?.micropsia}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'micropsia', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: biopsiaInstance, field: 'notas', 'error')} ">
				<label for="notas" class="control-label"><g:message code="biopsia.notas.label" default="Notas" /></label>
				<div>
					<g:textField class="form-control" name="notas" value="${biopsiaInstance?.notas}"/>
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'notas', 'error')}</span>
				</div>
			</div>

			
			<div class="${hasErrors(bean: biopsiaInstance, field: 'recebimentoDoMaterial', 'error')} required">
				<label for="recebimentoDoMaterial" class="control-label"><g:message code="biopsia.recebimentoDoMaterial.label" default="Recebimento Do Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="recebimentoDoMaterial" precision="day"  value="${biopsiaInstance?.recebimentoDoMaterial}"  />
					<span class="help-inline">${hasErrors(bean: biopsiaInstance, field: 'recebimentoDoMaterial', 'error')}</span>
				</div>
			</div>

