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
	       
				<li>
				<a class="" href="${createLink(uri: '/empleado/list')}">
							<h4>Inicio</h4>
				</a>
				</li>			 		 				 
			</ul>			
		</div>
		<br>
		<br>

		<div>
		
	        <h2>El monto total del mes es: ${tatalResult}</h2>
		<br>

       </div>
       
       
</body>
</html>






