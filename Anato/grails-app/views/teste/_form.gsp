<%@ page import="anato.Teste" %>



			<div class="${hasErrors(bean: testeInstance, field: 'lala', 'error')} required">
				<label for="lala" class="control-label"><g:message code="teste.lala.label" default="Lala" /><span class="required-indicator">*</span></label>
				<div>
					<bs:datePicker name="lala" precision="day"  value="${testeInstance?.lala}"  />
					<span class="help-inline">${hasErrors(bean: testeInstance, field: 'lala', 'error')}</span>
				</div>
			</div>

