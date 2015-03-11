
<%@ page import="cumpleempleados.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<br/>
		<div class="nav" role="navigation"> 
			<ul>   
				<li>
					<a class="" href="${createLink(uri: '/empleado/list')}">
						<h4>Inicio</h4>
					</a>
				</li>
				<li>
					<g:link controller="Empleado" class="create" action="create" >
					<h4>Agregar Empleado</h4> </g:link>
				</li>
				<li>
					<g:link controller="Empleado" action="buscar">
					<h4>Cumplen Hoy</h4> </g:link>
				</li>
				<li>
					<g:link  controller="Regalo" action="montoTotal">
					<h4>Total Mes</h4> </g:link>
				</li>	 		 				 
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
			
<%--				<g:if test="${empleadoInstance?.password}">--%>
<%--				<li class="fieldcontain">--%>
<%--					<span id="password-label" class="property-label"><g:message code="empleado.password.label" default="Password" /></span>--%>
<%--					--%>
<%--						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${empleadoInstance}" field="password"/></span>--%>
<%--					--%>
<%--				</li>--%>
<%--				</g:if>--%>
			
				<g:if test="${empleadoInstance?.regalos}">
				<li class="fieldcontain">
					<span id="regalos-label" class="property-label">
					<g:message code="empleado.regalos.label" default="Regalos" /></span>
					
					    <td><g:link action="verRegalos" params="[emp : empleadoInstance.id]">  &nbsp; &nbsp;Ver Regalos  </g:link> 
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
