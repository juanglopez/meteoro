
<%@ page import="cumpleempleados.Regalo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regalo.label', default: 'Regalo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regalo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>				
			</ul>
		</div>	
			
			<h2 align="center">Regalos Empleado</h2>
			<br>
	
		
     
         <g:each in="${regalos}" status="i" var="regalo">
		        			
			<ol class="property-list regalo">
			
				<g:if test="${regalo.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="regalo.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${regaloInstance}" field="estado"/></span>					
				</li>
				</g:if>				
					<g:if test="${regalo.descripcion}">
				<li class="fieldcontain">
				   <span class="property-value" aria-labelledby="fecha-label">${regalo.descripcion}</span>					
				</li>
				</g:if>			
				<g:if test="${regalo.url}">
				<li class="fieldcontain">									
				   <span class="property-value" aria-labelledby="url-label"> ${regalo.url}   </span>					
				</li>
				</g:if>		
			</ol>
			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${regalo.id}" />
					<g:link class="edit" action="edit" id="${regalo.id}">
						Editar
					</g:link>
					<g:actionSubmit class="delete" action="delete" value="Borrar" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			
		</g:each>
		
		
		
	</body>
</html>
