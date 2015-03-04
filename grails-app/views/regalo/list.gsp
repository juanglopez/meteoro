
<%@ page import="cumpleempleados.Regalo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regalo.label', default: 'Regalo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regalo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regalo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="ID_regalo" title="${message(code: 'regalo.ID_regalo.label', default: 'ID regalo')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'regalo.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'regalo.fecha.label', default: 'Fecha')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regaloInstanceList}" status="i" var="regaloInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regaloInstance.id}">${fieldValue(bean: regaloInstance, field: "ID_regalo")}</g:link></td>
					
						<td>${fieldValue(bean: regaloInstance, field: "estado")}</td>
					
						<td><g:formatDate date="${regaloInstance.fecha}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regaloInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
