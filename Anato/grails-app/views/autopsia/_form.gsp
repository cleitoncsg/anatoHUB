<%@ page import="anato.Autopsia" %>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'dataEHoras', 'error')} required">
				<label for="dataEHoras" class="control-label"><g:message code="autopsia.dataEHoras.label" default="Data E Hora do Exame" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataEHoras" precision="minute"  value="${autopsiaInstance?.dataEHoras}"  />
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'dataEHoras', 'error')}</span>
				</div>
			</div>
			
			<div class="${hasErrors(bean: autopsiaInstance, field: 'coletaDeMaterial', 'error')} required">
				<label for="coletaDeMaterial" class="control-label"><g:message code="autopsia.coletaDeMaterial.label" default="Coleta De Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="coletaDeMaterial" precision="day"  value="${autopsiaInstance?.coletaDeMaterial}"  />
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'coletaDeMaterial', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'dataDeRequisicao', 'error')} required">
				<label for="dataDeRequisicao" class="control-label"><g:message code="autopsia.dataDeRequisicao.label" default="Data De Requisicao" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataDeRequisicao" precision="day"  value="${autopsiaInstance?.dataDeRequisicao}"  />
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'dataDeRequisicao', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'doencaConsequenciasFinal', 'error')} ">
				<label for="doencaConsequenciasFinal" class="control-label"><g:message code="autopsia.doencaConsequenciasFinal.label" default="Doenca Consequencias Final" /></label>
				<div>
					<g:textField class="form-control" name="doencaConsequenciasFinal" value="${autopsiaInstance?.doencaConsequenciasFinal}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'doencaConsequenciasFinal', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'doencaPrincipal', 'error')} ">
				<label for="doencaPrincipal" class="control-label"><g:message code="autopsia.doencaPrincipal.label" default="Doenca Principal" /></label>
				<div>
					<g:textField class="form-control" name="doencaPrincipal" value="${autopsiaInstance?.doencaPrincipal}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'doencaPrincipal', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'doencasConsequencia', 'error')} ">
				<label for="doencasConsequencia" class="control-label"><g:message code="autopsia.doencasConsequencia.label" default="Doencas Consequencia" /></label>
				<div>
					<g:textField class="form-control" name="doencasConsequencia" value="${autopsiaInstance?.doencasConsequencia}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'doencasConsequencia', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: autopsiaInstance, field: 'doencasContribuintes', 'error')} ">
				<label for="doencasContribuintes" class="control-label"><g:message code="autopsia.doencasContribuintes.label" default="Doencas Contribuintes" /></label>
				<div>
					<g:textField class="form-control" name="doencasContribuintes" value="${autopsiaInstance?.doencasContribuintes}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'doencasContribuintes', 'error')}</span>
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

			<div class="${hasErrors(bean: autopsiaInstance, field: 'outrasDoencas', 'error')} ">
				<label for="outrasDoencas" class="control-label"><g:message code="autopsia.outrasDoencas.label" default="Outras Doencas" /></label>
				<div>
					<g:textField class="form-control" name="outrasDoencas" value="${autopsiaInstance?.outrasDoencas}"/>
					<span class="help-inline">${hasErrors(bean: autopsiaInstance, field: 'outrasDoencas', 'error')}</span>
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

