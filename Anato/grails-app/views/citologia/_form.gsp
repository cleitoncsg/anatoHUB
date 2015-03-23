<%@ page import="anato.Citologia" %>



			<div class="${hasErrors(bean: citologiaInstance, field: 'dataEHoras', 'error')} required">
				<label for="dataEHoras" class="control-label"><g:message code="citologia.dataEHoras.label" default="Data E Hora do Exame" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataEHoras" precision="day"  value="${citologiaInstance?.dataEHoras}"  />
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'dataEHoras', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'coletaDeMaterial', 'error')} required">
				<label for="coletaDeMaterial" class="control-label"><g:message code="citologia.coletaDeMaterial.label" default="Coleta De Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="coletaDeMaterial" precision="day"  value="${citologiaInstance?.coletaDeMaterial}"  />
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'coletaDeMaterial', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'conclusao', 'error')} ">
				<label for="conclusao" class="control-label"><g:message code="citologia.conclusao.label" default="Conclusao" /></label>
				<div>
					<g:textField class="form-control" name="conclusao" value="${citologiaInstance?.conclusao}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'conclusao', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'dataDeRequisicao', 'error')} required">
				<label for="dataDeRequisicao" class="control-label"><g:message code="citologia.dataDeRequisicao.label" default="Data De Requisicao" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataDeRequisicao" precision="day"  value="${citologiaInstance?.dataDeRequisicao}"  />
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'dataDeRequisicao', 'error')}</span>
				</div>
			</div>

			
			<div class="${hasErrors(bean: citologiaInstance, field: 'informacoesClinicas', 'error')} ">
				<label for="informacoesClinicas" class="control-label"><g:message code="citologia.informacoesClinicas.label" default="Informacoes Clinicas" /></label>
				<div>
					<g:textField class="form-control" name="informacoesClinicas" value="${citologiaInstance?.informacoesClinicas}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'informacoesClinicas', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'legenda', 'error')} ">
				<label for="legenda" class="control-label"><g:message code="citologia.legenda.label" default="Legenda" /></label>
				<div>
					<g:textField class="form-control" name="legenda" value="${citologiaInstance?.legenda}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'legenda', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'materialRecebido', 'error')} ">
				<label for="materialRecebido" class="control-label"><g:message code="citologia.materialRecebido.label" default="Material Recebido" /></label>
				<div>
					<g:textField class="form-control" name="materialRecebido" value="${citologiaInstance?.materialRecebido}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'materialRecebido', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'medicoRequisitante', 'error')} ">
				<label for="medicoRequisitante" class="control-label"><g:message code="citologia.medicoRequisitante.label" default="Medico Requisitante" /></label>
				<div>
					<g:textField class="form-control" name="medicoRequisitante" value="${citologiaInstance?.medicoRequisitante}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'medicoRequisitante', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'medicoResidente', 'error')} ">
				<label for="medicoResidente" class="control-label"><g:message code="citologia.medicoResidente.label" default="Medico Residente" /></label>
				<div>
					<g:textField class="form-control" name="medicoResidente" value="${citologiaInstance?.medicoResidente}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'medicoResidente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'micropsia', 'error')} ">
				<label for="micropsia" class="control-label"><g:message code="citologia.micropsia.label" default="Micropsia" /></label>
				<div>
					<g:textField class="form-control" name="micropsia" value="${citologiaInstance?.micropsia}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'micropsia', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'notas', 'error')} ">
				<label for="notas" class="control-label"><g:message code="citologia.notas.label" default="Notas" /></label>
				<div>
					<g:textField class="form-control" name="notas" value="${citologiaInstance?.notas}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'notas', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'paciente', 'error')} required">
				<label for="paciente" class="control-label"><g:message code="citologia.paciente.label" default="Paciente" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="paciente" name="paciente.id" from="${anato.Paciente.list()}" optionKey="id" required="" value="${citologiaInstance?.paciente?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'paciente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'quantidade', 'error')} ">
				<label for="quantidade" class="control-label"><g:message code="citologia.quantidade.label" default="Quantidade" /></label>
				<div>
					<g:textField class="form-control" name="quantidade" value="${citologiaInstance?.quantidade}"/>
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'quantidade', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: citologiaInstance, field: 'recebimentoDoMaterial', 'error')} required">
				<label for="recebimentoDoMaterial" class="control-label"><g:message code="citologia.recebimentoDoMaterial.label" default="Recebimento Do Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="recebimentoDoMaterial" precision="day"  value="${citologiaInstance?.recebimentoDoMaterial}"  />
					<span class="help-inline">${hasErrors(bean: citologiaInstance, field: 'recebimentoDoMaterial', 'error')}</span>
				</div>
			</div>

