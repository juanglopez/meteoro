<!DOCTYPE html>
<html>
<head>
<title>Listado de regalos</title>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

</head>
<body>

<g:form id="asignar" controller="Asignar" >
	<input type="hidden" id="formTitle" name="title" value="" />
	<input type="hidden" id="formUrl" name="url" value="" />
</g:form>

<h1>Lista de Regalos</h1>

  Ingrese el producto deseado
  </br>
  <input id="t_regalo" type="text" name="nombre" value="" />
  <button id="b_regalo"type="button" onclick="buscarRegalo()">BUSCAR</button>

 

<ol id="respuesta_api"> 
<!-- Aca adentro ira la respuesta de mercado libre -->

</ol>
<script type="text/javascript">
function submitRegalo(title,url){
	$("#formTitle").val( title )
	$("#formUrl").val( url )
     document.forms[0].submit();
}

function buscarRegalo()
{
var x=document.getElementById("t_regalo");
console.log("2");

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
<!-->console.log("Punto 7");<-->
console.log("6");

</script>
</body>
</html>
