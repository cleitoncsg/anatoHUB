<%@ page import="anato.Congelacao" %>



			<div class="${hasErrors(bean: congelacaoInstance, field: 'conclusao', 'error')} ">
				<label for="conclusao" class="control-label"><g:message code="congelacao.conclusao.label" default="Conclusao" /></label>
				<div>
					<g:textField class="form-control" name="conclusao" value="${congelacaoInstance?.conclusao}"/>
					<span class="help-inline">${hasErrors(bean: congelacaoInstance, field: 'conclusao', 'error')}</span>
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

