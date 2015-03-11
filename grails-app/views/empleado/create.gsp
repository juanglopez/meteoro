<%@ page import="cumpleempleados.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		     <link href="${ resource (dir: 'css' , file : 'main.css')}"  rel="stylesheet" type="text/css" />
		
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	
	<style type="text/css">
	
	 #button {
  			position: relative;
  		    margin-left: 310px;
  		
	  }
	</style>
	
	</head>
	<body>
		<a href="#create-empleado" class="skip" tabindex="-1">
		
		<g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="" href="${createLink(uri: '/')}">
					<h4>Home</h4></a>
				</li>
				<li><a class="" href="${createLink(uri: '/empleado/list')}">
					<h4>ListaEmpleados</h4></a>
				</li>
			</ul>
		</div>
		<br>
		<br>
		<div id="create-empleado" class="content scaffold-create" role="main">
			  <h2 align="center">Crear Empleado</h2> 
			     <br>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${empleadoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${empleadoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>

				<g:submitButton id="button" class ="button_example" name="create"  value="Crear Empleado" />
				</div>
				
			</g:form>

			<br><br>
	
	</body>
</html>
