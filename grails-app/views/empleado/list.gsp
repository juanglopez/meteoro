
<%@ page import="cumpleempleados.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empleado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="apellido" title="${message(code: 'empleado.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="cumpleaños" title="${message(code: 'empleado.cumpleaños.label', default: 'Cumpleaños')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'empleado.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoInstanceList}" status="i" var="empleadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "apellido")}</g:link></td>
					
						<td><g:formatDate date="${empleadoInstance.cumpleaños}" /></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "mail")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
				
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empleadoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
