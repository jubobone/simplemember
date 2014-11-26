<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><tiles:insertAttribute name="title" /></title>
	<link rel='stylesheet' href='${pageContext.request.contextPath}/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>
	<script type='text/javascript' src='${pageContext.request.contextPath}/webjars/jquery/2.0.3/jquery.min.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/webjars/bootstrap/3.1.0/js/bootstrap.min.js'></script>
</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
</body>
</html>