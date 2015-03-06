<!DOCTYPE html>
<html>
<head>
<title>Listado de regalos</title>
		<meta name="layout" content="main"/>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
</head>
<body>

<h1>Lista de Regalos</h1>
<h2>prueba resultado</h2>
<ol id="respuesta_api">
<!-- Aca adentro ira la respuesta de mercado libre -->

</ol>
<script type="text/javascript">

var promise = $.get("https://api.mercadolibre.com/sites/MLA/search", { q: "cosas", offset: 2 });
promise.done( mostrarResultado );
promise.fail( mostrarError );

function mostrarResultado( data ) {
	$.each( data.results, agregarResultado )
}

function agregarResultado(index, item) {
	console.log(item.title);
	$("#respuesta_api").append( "<li><a href=" + item.permalink + ">" + item.title + "</a></li><ol><img src="+ item.thumbnail + "/></ol>" );
}



function mostrarError() {
	$("#respuesta_api").html( "<li>Se produjo un errors</li>" );
}

<!-->console.log("Punto 7");<-->

</script>
</body>
</html>