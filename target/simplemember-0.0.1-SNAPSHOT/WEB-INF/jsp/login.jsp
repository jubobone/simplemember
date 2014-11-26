<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<div class="row">
		<div class="span12">
			<form class="form-horizontal" action='<c:url value='j_spring_security_check' />' method="POST">
				<fieldset>
					<div id="legend">
						<legend>Login</legend>
					</div>
					<div class="control-group">
						<!-- Username -->
						<label class="control-label" for="username">Username</label>
						<div class="controls">
							<input type="text" id="username" name="j_username" placeholder=""
								class="input-xlarge">
						</div>
					</div>
					
					<div class="control-group">
						<!-- Password-->
						<label class="control-label" for="password">Password</label>
						<div class="controls">
							<input type="password" id="password" name="j_password"
								placeholder="" class="input-xlarge">
						</div>
					</div>
					
					<div class="control-group">
						<!-- Button -->
						<div class="controls">
							<button class="btn btn-success">Login</button>
						</div>
					</div>
					
				</fieldset>
			</form>
		</div>
	</div>
</div>