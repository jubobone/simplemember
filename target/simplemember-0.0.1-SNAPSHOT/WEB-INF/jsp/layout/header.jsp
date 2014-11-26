<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- Header -->
<nav class="navbar navbar-inverse" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="${pageContext.request.contextPath}/" class="navbar-brand">Simple Member</a>
		</div>

		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						  User <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/register">Create new member</a></li>
						</ul>
				</li>
					<div class="pull-right">
						<ul class="nav pull-right">
							<li class="dropdown" >
							<a class="btn" href="<c:url value="/j_spring_security_logout" />">Logout</a>
						</ul>
					</div>
				</sec:authorize>
			</ul>
		</div>
	</div>
</nav>