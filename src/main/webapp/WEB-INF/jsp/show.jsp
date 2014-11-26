<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form class="form-horizontal" action="../edit" method="post">
	<fieldset>
		<legend>Show</legend>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="id-card">Id Card</label>
			<div class="col-sm-5">${member.idCard}</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="name">firstname</label>
			<div class="col-sm-5">${member.name}</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="lastname">Lastname</label>
			<div class="col-sm-5">${member.lastname}</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="age">Age</label>
			<div class="col-sm-5">${member.age}</div>
		</div>
	</fieldset>
</form>