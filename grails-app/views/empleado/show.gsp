
<%@ page import="cumpleempleados.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a href="${createLink(uri: '/')}">
				   Inicio</a></li>
				<li><g:link  action="list">
			         Lista Empleados</g:link></li>
				<li><g:link class="create" action="create">
				Agregar Empleado</g:link></li>
			</ul>
		</div>
		
		<br>
		
		<div id="show-empleado" class="content scaffold-show" role="main">
		
			<h2 align="center">Editar Empleado</h2>
			
			
			<ol class="property-list empleado">
			
				<g:if test="${empleadoInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="empleado.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${empleadoInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.cumpleaños}">
				<li class="fieldcontain">
					<span id="cumpleaños-label" class="property-label"><g:message code="empleado.cumpleaños.label" default="Cumpleaños" /></span>
					
						<span class="property-value" aria-labelledby="cumpleaños-label"><g:formatDate date="${empleadoInstance?.cumpleaños}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.mail}">
				<li class="fieldcontain">
					<span id="mail-label" class="property-label"><g:message code="empleado.mail.label" default="Mail" /></span>
					
						<span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${empleadoInstance}" field="mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="empleado.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empleadoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
						
				<g:if test="${empleadoInstance?.regalos}">
				<li class="fieldcontain">
					<span id="regalos-label" class="property-label"><g:message code="empleado.regalos.label" default="Regalos" /></span>
					
						<g:each in="${empleadoInstance.regalos}" var="r">
						<g:link controller="regalo" action="show" params=""><h4>&nbsp;Ver regalos</h4></g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${empleadoInstance?.id}" />
					<g:link class="edit" action="edit" id="${empleadoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
