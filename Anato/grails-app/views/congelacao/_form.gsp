<%@ page import="anato.Congelacao" %>



			<div class="${hasErrors(bean: congelacaoInstance, field: 'dataEHoras', 'error')} required">
				<label for="dataEHoras" class="control-label"><g:message code="congelacao.dataEHoras.label" default="Data E Hora do Exame" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataEHoras" precision="day"  value="${congelacaoInstance?.dataEHoras}"  />
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'dataEHoras', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'coletaDeMaterial', 'error')} required">
				<label for="coletaDeMaterial" class="control-label"><g:message code="congelacao.coletaDeMaterial.label" default="Coleta De Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="coletaDeMaterial" precision="day"  value="${congelacaoInstance?.coletaDeMaterial}"  />
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'coletaDeMaterial', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'conclusao', 'error')} ">
				<label for="conclusao" class="control-label"><g:message code="congelacao.conclusao.label" default="Conclusao" /></label>
				<div>
					<g:textField class="form-control" name="conclusao" value="${congelacaoInstance?.conclusao}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'conclusao', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'dataDeRequisicao', 'error')} required">
				<label for="dataDeRequisicao" class="control-label"><g:message code="congelacao.dataDeRequisicao.label" default="Data De Requisicao" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataDeRequisicao" precision="day"  value="${congelacaoInstance?.dataDeRequisicao}"  />
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'dataDeRequisicao', 'error')}</span>
				</div>
			</div>

			
			<div class="${hasErrors(bean: congelacaoInstance, field: 'informacoesClinicas', 'error')} ">
				<label for="informacoesClinicas" class="control-label"><g:message code="congelacao.informacoesClinicas.label" default="Informacoes Clinicas" /></label>
				<div>
					<g:textField class="form-control" name="informacoesClinicas" value="${congelacaoInstance?.informacoesClinicas}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'informacoesClinicas', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'legenda', 'error')} ">
				<label for="legenda" class="control-label"><g:message code="congelacao.legenda.label" default="Legenda" /></label>
				<div>
					<g:textField class="form-control" name="legenda" value="${congelacaoInstance?.legenda}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'legenda', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'macropsia', 'error')} ">
				<label for="macropsia" class="control-label"><g:message code="congelacao.macropsia.label" default="Macropsia" /></label>
				<div>
					<g:textField class="form-control" name="macropsia" value="${congelacaoInstance?.macropsia}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'macropsia', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'materialRecebido', 'error')} ">
				<label for="materialRecebido" class="control-label"><g:message code="congelacao.materialRecebido.label" default="Material Recebido" /></label>
				<div>
					<g:textField class="form-control" name="materialRecebido" value="${congelacaoInstance?.materialRecebido}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'materialRecebido', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'medicoRequisitante', 'error')} ">
				<label for="medicoRequisitante" class="control-label"><g:message code="congelacao.medicoRequisitante.label" default="Medico Requisitante" /></label>
				<div>
					<g:textField class="form-control" name="medicoRequisitante" value="${congelacaoInstance?.medicoRequisitante}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'medicoRequisitante', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'medicoResidente', 'error')} ">
				<label for="medicoResidente" class="control-label"><g:message code="congelacao.medicoResidente.label" default="Medico Residente" /></label>
				<div>
					<g:textField class="form-control" name="medicoResidente" value="${congelacaoInstance?.medicoResidente}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'medicoResidente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'micropsia', 'error')} ">
				<label for="micropsia" class="control-label"><g:message code="congelacao.micropsia.label" default="Micropsia" /></label>
				<div>
					<g:textField class="form-control" name="micropsia" value="${congelacaoInstance?.micropsia}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'micropsia', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'notas', 'error')} ">
				<label for="notas" class="control-label"><g:message code="congelacao.notas.label" default="Notas" /></label>
				<div>
					<g:textField class="form-control" name="notas" value="${congelacaoInstance?.notas}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'notas', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'paciente', 'error')} required">
				<label for="paciente" class="control-label"><g:message code="congelacao.paciente.label" default="Paciente" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="paciente" name="paciente.id" from="${anato.Paciente.list()}" optionKey="id" required="" value="${congelacaoInstance?.paciente?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'paciente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: congelacaoInstance, field: 'recebimentoDoMaterial', 'error')} required">
				<label for="recebimentoDoMaterial" class="control-label"><g:message code="congelacao.recebimentoDoMaterial.label" default="Recebimento Do Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="recebimentoDoMaterial" precision="day"  value="${congelacaoInstance?.recebimentoDoMaterial}"  />
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'recebimentoDoMaterial', 'error')}</span>
				</div>
			</div>

