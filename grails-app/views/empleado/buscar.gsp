
<%@ page import="cumpleempleados.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>		
       
       <br>		
		<div class="nav" role="navigation"> 	       
				<li>
				<a class="" href="${createLink(uri: '/')}">
				<h4>Inicio</h4>
				</a>
				</li>
		</div>
		<br>		
       
		<div id="list-empleado" class="content scaffold-list" role="main">		
			     <h2 align="center">Hoy cumplen estos Empleados</h2> 
			     <br>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div> 
			</g:if>
		
			<table>
				<thead>
					<tr>					    				 					    
						<g:sortableColumn property="apellido" title="${message(code: 'empleado.apellido.label', default: 'Apellido')}" />
					    <g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
					    <g:sortableColumn property="cumpleaños" title="${message(code: 'empleado.cumpleaños.label', default: 'Cumpleaños')}" />
					    <g:sortableColumn property="Mail" title="${message(code: 'empleado.cumpleaños.mail', default: 'Mail')}" />
				    	<g:sortableColumn property="Regalar" title="${message(code: 'default.regalar.label', default: 'Regalar')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${result}" status="i" var="empleadoInstance">
				    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
						
						<td><g:formatDate date="${empleadoInstance.cumpleaños}" /></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "mail")}</td>
					
					    <td><g:link controller="Productos" action="productos" params="[emp_id :empleadoInstance.id]"> Regalar </g:link></td>
				
					</tr>
				</g:each>
				</tbody>
			</div>	
			</table>
		     <div class="pagination">
				<g:paginate total="${empleadoInstanceTotal}" />
			</div>	
	
		</div>
	</body>
</html>
