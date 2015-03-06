<%@ page import="cumpleempleados.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="empleado.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${empleadoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'cumpleaños', 'error')} required">
	<label for="cumpleaños">
		<g:message code="empleado.cumpleaños.label" default="Cumpleaños" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="cumpleaños" precision="day"  value="${empleadoInstance?.cumpleaños}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'mail', 'error')} required"> 
	<label for="mail">
		<g:message code="empleado.mail.label" default="Mail" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mail" value="${empleadoInstance?.mail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" value="${empleadoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="empleado.password.label" default="Password" />
		<span class="required-indicator">*</span>
		
	</label>
	<g:textField name="password" value="${empleadoInstance?.password}"/>
	
</div>


