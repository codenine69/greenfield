<%@ page import="org.greenfield.Catalog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'catalog.label', default: 'Catalog')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<style type="text/css">
			.btn{
				margin-bottom:20px;
				width:175px;
			}
		</style>
		
		<div id="create-catalog" class="content scaffold-create" role="main">
		
			<h1>Configuration</h1>
		
			<g:if test="${flash.message}">
				<div class="alert alert-info" role="status">${flash.message}</div>
			</g:if>
			
			<g:hasErrors bean="${catalogInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${catalogInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
	

			
			<g:link uri="/configuration/edit_homepage" class="btn btn-default">
				<span class="glyphicon glyphicon-home"></span>
				Edit Home Page
			</g:link>
			<br/>
			
			<g:link uri="/page/list" class="btn btn-default">
				<span class="glyphicon glyphicon-list-alt"></span>
				Custom Pages
			</g:link>
			<br/>
			
			<g:link uri="/configuration/uploads" class="btn btn-default">
				<span class="glyphicon glyphicon-upload"></span>
				Uploads
			</g:link>
			<br/>
			
			<g:link uri="/configuration/import_products_view" class="btn btn-default">
				<span class="glyphicon glyphicon-import"></span>
				Import Products
			</g:link>
			<br/>
			
		</div>
	</body>
</html>

						
	
	