
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
				<a class="" href="${createLink(uri: '/empleado/list')}">
					<h4>Inicio</h4>
				</a>
				</li>
				<li>
				<g:link class="create" action="create" >
				      <h4>Agregar Empleado</h4> </g:link>
				 </li>

				<li>
				<g:link  action="buscar">
				      <h4>Cumplen Hoy</h4> </g:link>
				 </li>
				 
				 
				<li>
				<g:link  controller="Regalo" action="montoTotal">
				      <h4>Total Mes</h4> </g:link>
				 </li>	 		 				 
			</ul>			
		</div>
		<br>
		<br>
		
		<div id="list-empleado" class="content scaffold-list" role="main">
		
			     <h2 align="center">Empleados</h2> 
			     <br/>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div> 
			</g:if>
		
			<table>
				<thead>
					<tr>					    				 					    
						<g:sortableColumn property="apellido" title="${message(code: 'empleado.apellido.label', default: 'Apellido')}" />
					    
					    <g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />					    
					
						<g:sortableColumn property="cumpleaños" title="${message(code: 'empleado.cumpleaños.label', default: 'Cumpleaños')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'empleado.mail.label', default: 'Mail')}" />
					    
					    <g:sortableColumn property="Asignar Regalo" title="${message(code: 'default.regalos.label', default: 'Regalos')}" />
  
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoInstanceList}" status="i" var="empleadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
						
						<td><g:formatDate date="${empleadoInstance.cumpleaños}" /></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "mail")}</td>
					
					    <td><g:link action="verRegalos" params="[emp : empleadoInstance.id]"> Ver Regalos  </g:link>
					
<%--					   <td><a href=""> Ver Regalos Asignados </a></td>--%>
				
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
