<%@ page import="cumpleempleados.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="empleado.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${empleadoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fecha_cumple', 'error')} required">
	<label for="fecha_cumple">
		<g:message code="empleado.fecha_cumple.label" default="Fechacumple" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha_cumple" precision="day"  value="${empleadoInstance?.fecha_cumple}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="empleado.mail.label" default="Mail" />
		
	</label>
	<g:textField name="mail" value="${empleadoInstance?.mail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${empleadoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="empleado.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${empleadoInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'regalos', 'error')} ">
	<label for="regalos">
		<g:message code="empleado.regalos.label" default="Regalos" />
		
	</label>
	<g:select name="regalos" from="${cumpleempleados.Regalo.list()}" multiple="multiple" optionKey="id" size="5" value="${empleadoInstance?.regalos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'user_ID', 'error')} required">
	<label for="user_ID">
		<g:message code="empleado.user_ID.label" default="User ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="user_ID" type="number" value="${empleadoInstance.user_ID}" required=""/>
</div>

