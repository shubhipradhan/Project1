<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page isELIgnored="false" %>
<html>
<head>
	<title>User Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>

<body>
<h1>
	Add a User
</h1>

<c:url var="addAction" value="/user/add" ></c:url>




<form:form action="${addAction}" commandName="user" >
<table>
	<c:if test="${!empty user.username}">
	<tr>
		<td>
			<form:label path="userId">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="userId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="userId" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="username">
				<spring:message text="User Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="username" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="password">
				<spring:message text="Password"/>
			</form:label>
		</td>
		<td>
			<form:input path="password" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="mobile">
				<spring:message text="Mobile"/>
			</form:label>
		</td>
		<td>
			<form:input path="mobile" />
		</td> 
	</tr>
	
	<tr>
		<td colspan="2">
			<c:if test="${!empty user.username}">
				<input type="submit"
					value="<spring:message text="Edit User"/>" />
			</c:if>
			<c:if test="${empty user.username}">
				<input type="submit"
					value="<spring:message text="Add User"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Users List</h3>
<c:if test="${!empty listUsers}">
	<table class="tg">
	<tr>
		<th width="80">User ID</th>
		<th width="120">User Name</th>
		<th width="120">User Password</th>
		<th width="120">Name</th>
		<th width="120">User Mobile</th>
		<th width="120">Role</th>
		<th width="120">User Enable</th>
	
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listUsers}" var="user">
		<tr>
			<td>${user.userId}</td>
			<td>${user.username}</td>
			<td>${user.password}</td>
			<td>${user.name}</td>
			<td>${user.mobile}</td>
			<td>${user.role}</td>
			<td>${user.enabled}</td>
			<td><a href="<c:url value='/adminUser/edit/${user.userId}' />" >Edit</a></td>
			<td><a href="<c:url value='/adminUser/remove/${user.userId}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>