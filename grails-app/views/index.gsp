<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	   
	   	<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>	 
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">		
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	     
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
				.btn-primary{
				    border-color: #yellow;
    				color: yellow;   				
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

	</body>
</html>
