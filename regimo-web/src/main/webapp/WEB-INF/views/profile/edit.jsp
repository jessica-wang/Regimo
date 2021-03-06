<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

	
	<s:url var="actionUrl" value="/userUpdateCommit"/>
<form:form action="${actionUrl}" modelAttribute="UserProfileEditForm" method="post">
	<div class="formInfo">
  		<h2>Edit user</h2>
  	</div>
  	<div class="formBody">
  		<table>
  			<tr>
				<td>User Name</td>
				<td>
					<input class="profile-value" value="${user.username}" readonly="readonly" />			
				</td>
			</tr>
			<tr>
				<td>Email Name</td>
				<td>
					<input type="text" name="email" id="email" 
							autocomplete="off" value="${user.email}"  />
				</td>
			</tr>
			<tr>
				<td>First Name</td>
				<td>
					<input type="text" name="firstName" id="firstName" 
							autocomplete="off" value="${user.firstName}"  />
				</td>
			</tr>
		
			<tr>
				<td>Last Name</td>
				<td>
					<input type="text" name="lastName" id="lastName" 
							autocomplete="off" value="${user.lastName}"  />
				</td>
			</tr>


		</table>
	
	<input type="hidden" name="id" id="id" autocomplete="off" value="${user.id}"  />
	<p><button type="submit">Save</button><button class="button-cancel" type="button" onclick="location.href='view'">Cancel</button></p>
	</div>
</form:form>