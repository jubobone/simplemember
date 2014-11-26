<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- content -->
	<form class="form-horizontal" action="${pageContext.request.contextPath}/edit" method="post">
		<input type="hidden" value="${member.id}" name="id" />
		<fieldset>
			<legend>Edit</legend>
			<div class="control-group">
				<label class="control-label" for="id-card">Id Card</label>
				<div class="controls">
					<input type="text" value="${member.idCard}" id="id-card" name="idCard" class="span5"
						required /> <label class="help-block help-inline"></label>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="name">firstname</label>
				<div class="controls">
					<input type="text" id="name" value="${member.name}" name="name" class="span5" required />
					<label class="help-block help-inline"></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="lastname">Lastname</label>
				<div class="controls">
					<input type="text" id="lastname" value="${member.lastname}" name="lastname" class="span5"
						required /> <label class="help-block help-inline"></label>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="age">Age</label>
				<div class="controls">
					<input type="number" id="age" value="${member.age}" name="age" class="span5" required />
					<label class="help-block help-inline"></label>
				</div>
			</div>

			<div class="form-actions">
				<button class="btn btn-primary" type="submit">Submit</button>
				<button class="btn" type="reset">reset</button>
			</div>
		</fieldset>
	</form>