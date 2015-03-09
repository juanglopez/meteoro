<!DOCTYPE html>
<html>
<head>
<title>Listado de regalos</title>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
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
        
<g:form controller="Regalo" action="assignGift"  >
	<input type="hidden" id="formDescripcion" name="descripcion" value="" />
	<input type="hidden" id="formUrl" name="url" value="" />
    <input type="hidden" id="formEmp" name="empl" value="${empl}"/>
</g:form>

			<h2 align="center">Lista de Regalos</h2> 
			<br>

  			<h4 align="center"> Ingrese el producto deseado</h4>
  <br>
  <div align="center" id="buscador">
  			<input id="t_regalo" type="text" name="nombre" value="" />
  			<button id="b_regalo"type="button" onclick="buscarRegalo()">BUSCAR</button>
  </div>
 <br><br>

<ol id="respuesta_api"> 

<!-- Aca adentro ira la respuesta de mercado libre -->

</ol>












<script type="text/javascript">
function submitRegalo(descripcion,url){
	$("#formDescripcion").val( descripcion )
	$("#formUrl").val( url )

	
     document.forms[0].submit();
}

function buscarRegalo()
{
var x=document.getElementById("t_regalo");


var promise = $.get("https://api.mercadolibre.com/sites/MLA/search", { q: x.value, offset: 1 });
promise.done( mostrarResultado );
promise.fail( mostrarError );

function mostrarResultado( data ) {
	document.getElementById("respuesta_api").innerHTML = "";
	$.each( data.results, agregarResultado )
	console.log("3");
	
}

function agregarResultado(index, item) {
	console.log("agregandoresultado ",item);
	$("#respuesta_api").append( "<li><a href=" + item.permalink + ">" + item.title + "</a></li><ol><img src="+
	item.thumbnail + "/><button type='button' id='b_elegido'"+ index + " onclick=\"submitRegalo('"+ item.title + "','" + item.permalink +"')\">ELEGIR</button></ol>");
}



function mostrarError() {
	console.log("5");
	
	$("#respuesta_api").html( "<li>Se produjo un errors</li>" );
}
}


</script>
</body>
</html>
