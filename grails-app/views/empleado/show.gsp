
<%@ page import="cumpleempleados.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empleado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empleado">
			
				<g:if test="${empleadoInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="empleado.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${empleadoInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.fecha_cumple}">
				<li class="fieldcontain">
					<span id="fecha_cumple-label" class="property-label"><g:message code="empleado.fecha_cumple.label" default="Fechacumple" /></span>
					
						<span class="property-value" aria-labelledby="fecha_cumple-label"><g:formatDate date="${empleadoInstance?.fecha_cumple}" /></span>
					
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
			
				<g:if test="${empleadoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="empleado.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${empleadoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.regalos}">
				<li class="fieldcontain">
					<span id="regalos-label" class="property-label"><g:message code="empleado.regalos.label" default="Regalos" /></span>
					
						<g:each in="${empleadoInstance.regalos}" var="r">
						<span class="property-value" aria-labelledby="regalos-label"><g:link controller="regalo" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.user_ID}">
				<li class="fieldcontain">
					<span id="user_ID-label" class="property-label"><g:message code="empleado.user_ID.label" default="User ID" /></span>
					
						<span class="property-value" aria-labelledby="user_ID-label"><g:fieldValue bean="${empleadoInstance}" field="user_ID"/></span>
					
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
