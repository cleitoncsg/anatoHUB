<%@ page import="anato.ImunoHistoquimica" %>



			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'dataEHoras', 'error')} required">
				<label for="dataEHoras" class="control-label"><g:message code="imunoHistoquimica.dataEHoras.label" default="Data E Hora do Exame" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataEHoras" precision="day"  value="${imunoHistoquimicaInstance?.dataEHoras}"  />
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'dataEHoras', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'coletaDeMaterial', 'error')} required">
				<label for="coletaDeMaterial" class="control-label"><g:message code="imunoHistoquimica.coletaDeMaterial.label" default="Coleta De Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="coletaDeMaterial" precision="day"  value="${imunoHistoquimicaInstance?.coletaDeMaterial}"  />
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'coletaDeMaterial', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'conclusao', 'error')} ">
				<label for="conclusao" class="control-label"><g:message code="imunoHistoquimica.conclusao.label" default="Conclusao" /></label>
				<div>
					<g:textField class="form-control" name="conclusao" value="${imunoHistoquimicaInstance?.conclusao}"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'conclusao', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'dataDeRequisicao', 'error')} required">
				<label for="dataDeRequisicao" class="control-label"><g:message code="imunoHistoquimica.dataDeRequisicao.label" default="Data De Requisicao" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="dataDeRequisicao" precision="day"  value="${imunoHistoquimicaInstance?.dataDeRequisicao}"  />
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'dataDeRequisicao', 'error')}</span>
				</div>
			</div>

			
			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'informacoesClinicas', 'error')} ">
				<label for="informacoesClinicas" class="control-label"><g:message code="imunoHistoquimica.informacoesClinicas.label" default="Informacoes Clinicas" /></label>
				<div>
					<g:textField class="form-control" name="informacoesClinicas" value="${imunoHistoquimicaInstance?.informacoesClinicas}"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'informacoesClinicas', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'legenda', 'error')} ">
				<label for="legenda" class="control-label"><g:message code="imunoHistoquimica.legenda.label" default="Legenda" /></label>
				<div>
					<g:textField class="form-control" name="legenda" value="${imunoHistoquimicaInstance?.legenda}"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'legenda', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'materialRecebido', 'error')} ">
				<label for="materialRecebido" class="control-label"><g:message code="imunoHistoquimica.materialRecebido.label" default="Material Recebido" /></label>
				<div>
					<g:textField class="form-control" name="materialRecebido" value="${imunoHistoquimicaInstance?.materialRecebido}"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'materialRecebido', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'medicoRequisitante', 'error')} ">
				<label for="medicoRequisitante" class="control-label"><g:message code="imunoHistoquimica.medicoRequisitante.label" default="Medico Requisitante" /></label>
				<div>
					<g:textField class="form-control" name="medicoRequisitante" value="${imunoHistoquimicaInstance?.medicoRequisitante}"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'medicoRequisitante', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'medicoResidente', 'error')} ">
				<label for="medicoResidente" class="control-label"><g:message code="imunoHistoquimica.medicoResidente.label" default="Medico Residente" /></label>
				<div>
					<g:textField class="form-control" name="medicoResidente" value="${imunoHistoquimicaInstance?.medicoResidente}"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'medicoResidente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'notas', 'error')} ">
				<label for="notas" class="control-label"><g:message code="imunoHistoquimica.notas.label" default="Notas" /></label>
				<div>
					<g:textField class="form-control" name="notas" value="${imunoHistoquimicaInstance?.notas}"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'notas', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'paciente', 'error')} required">
				<label for="paciente" class="control-label"><g:message code="imunoHistoquimica.paciente.label" default="Paciente" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="paciente" name="paciente.id" from="${anato.Paciente.list()}" optionKey="id" required="" value="${imunoHistoquimicaInstance?.paciente?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'paciente', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'recebimentoDoMaterial', 'error')} required">
				<label for="recebimentoDoMaterial" class="control-label"><g:message code="imunoHistoquimica.recebimentoDoMaterial.label" default="Recebimento Do Material" /><span class="required-indicator">*</span></label>
				<div>
					<g:datePicker name="recebimentoDoMaterial" precision="day"  value="${imunoHistoquimicaInstance?.recebimentoDoMaterial}"  />
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'recebimentoDoMaterial', 'error')}</span>
				</div>
			</div>

