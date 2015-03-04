<%@ page import="cumpleempleados.Regalo" %>



<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'ID_regalo', 'error')} required">
	<label for="ID_regalo">
		<g:message code="regalo.ID_regalo.label" default="ID regalo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID_regalo" type="number" value="${regaloInstance.ID_regalo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="regalo.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estado" type="number" value="${regaloInstance.estado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="regalo.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${regaloInstance?.fecha}"  />
</div>

