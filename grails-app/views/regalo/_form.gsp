<%@ page import="cumpleempleados.Regalo" %>



<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="regalo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${regaloInstance?.descripcion}"/>
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

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="regalo.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${regaloInstance?.url}"/>
</div>

