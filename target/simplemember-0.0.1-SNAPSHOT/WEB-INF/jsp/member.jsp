<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- content -->
	<table class="table">
		<thead>
			<tr>
				<th scope="col">id card</th>
				<th scope="col">Name</th>
				<th scope="col">Lastname</th>
				<th scope="col">Age</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${memberList}">
				<tr>
					<td>${member.idCard}</td>
					<td>${member.name}</td>
					<td>${member.lastname}</td>
					<td>${member.age}</td>
					<td>
						<a href="show/${member.id}" class="btn btn-primary btn-edit">show</a>
						<a href="edit_page?id=${member.id}" class="btn btn-primary btn-edit" data-id="${member.id}">edit</a> 
						<a href="javascript:void(0);" class="btn btn-danger btn-delete" data-id="${member.id}">delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<script type="text/javascript">
		$(function() {
			$(".btn-delete").click(function() {
				var memberId = $(this).data("id");
				$(this).parent().parent().fadeOut('slow');
				$.ajax({
					url : "delete",
					data : {
						id : memberId
					},
					type : "POST",
					success : function(data) {
						if (data == "success") {
							//add effect
						} else {
							//add effect
						}
					}
				});
			});
		});
	</script>