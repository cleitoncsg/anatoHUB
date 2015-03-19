<%@ page import="anato.ImunoHistoquimica" %>



			<div class="${hasErrors(bean: imunoHistoquimicaInstance, field: 'conclusao', 'error')} ">
				<label for="conclusao" class="control-label"><g:message code="imunoHistoquimica.conclusao.label" default="Conclusao" /></label>
				<div>
					<g:textField class="form-control" name="conclusao" value="${imunoHistoquimicaInstance?.conclusao}"/>
					<span class="help-inline">${hasErrors(bean: imunoHistoquimicaInstance, field: 'conclusao', 'error')}</span>
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

