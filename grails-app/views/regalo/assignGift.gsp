
<%@ page import="cumpleempleados.Regalo" %>

<!DOCTYPE html> <!-- requerido para indicar q es html 5 -->
<html>
    <head>	
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	
	</head>
<body>
	<br>		
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

   	<div><br/><br/></div> 	
	<div>
		<h1 style="margin-left: 50px;">El empleado ${empleadoNom} ${empleadoApe} recibirá el regalo ${regalo}.</h1>
	</div>
	<div><br/><br/><br/></div>    
       
</body>



</html>