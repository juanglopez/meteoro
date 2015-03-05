<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	   		
    <link href="${ resource (dir: 'css' , file : 'bootstrap.css')}"  rel="stylesheet" type="text/css" />
<%--        <link href="${ resource (dir: 'css' , file : 'bootstrap.min.css')}"  rel="stylesheet" type="text/css" />--%>
    
     <script  src="${resource (dir: 'js' , file : 'jquery-1.11.2.min.js')}"></script>      
     <script type="text/javascript" src="${resource (dir: 'js' , file : 'bootstrap.js')}"></script>      
	     
	     <style type="text/css">
				body{
				text-align:center;
					margin:0 auto;
				}
				#contenedor{
					margin: 0 auto;
					text-align:left;
					width:70%;
				}
			
</style>
	       	
    </head>
	<body>
		  <div class="jumbotron">
  			<h1>!Regalar Productos!</h1>
  				<p>Regala productos para tus empleados de una forma mas rapida</p>
  					<p>
  					  <g:link class="btn btn-primary btn-lg" controller="Empleado" action="index" role="button"> REGALAR </g:link>
  				    </p>
	</div>

		<div class="footer" role="contentinfo">		     
		     <img align="center" src="http://www.toyotariba.com.ve/images/MERCADOLIBRE-PNG-FONDO-OSCURO.png" border=0 /> 		
		</div>
	</body>
	

</html>
