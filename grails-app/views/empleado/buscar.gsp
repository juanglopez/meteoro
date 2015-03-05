
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
		
			     <h2 align="center">::Hoy cumplen estos Empleados::</h2> 
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
					    
					</tr>
				</thead>
				<tbody>
				<g:each in="${result}" status="i" var="empleadoInstance">
					<tr>
					
						<td><g:link action="show" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
						
						<td><g:formatDate date="${empleadoInstance.cumpleaños}" /></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "mail")}</td>
					
					    <td><a href=""> ver </a></td>
				
					</tr>
				</g:each>
				</tbody>
			</table>
			
		</div>
	</body>
</html>
