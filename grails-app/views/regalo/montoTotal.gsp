<!DOCTYPE html> <!-- requerido para indicar q es html 5 -->
<%@ page import="cumpleempleados.Empleado" %>
<html>
    <head>	
		<meta name="layout" content="main">	
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
			<li style="margin-left:300px;"><a class="home" href="${createLink(uri: '/')}"><h4><g:message code="default.home.label"/></h4></a></li>	 		 				 
		</ul>			
	</div>
	<div><br/><br/></div> 	
	<div>
		<h1 style="margin-left: 50px;">El costo total en regalos de este mes es de $${tatalResult}.</h1>
	</div>
	<div><br/><br/><br/></div>       
</body>
</html>






