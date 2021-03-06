<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="col-md-10 col-md-offset-1">
	<sf:form class="form-horizontal"
		action="${pageContext.request.contextPath}/updatejob" method="post"
		commandName="job">
		<fieldset>

			<!-- Form Name -->
			<legend>Edit Job</legend>
			
			<sf:hidden path="id" />

			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="title">Job Title</label>
				<div class="controls">
					<sf:input id="title" path="title" name="title"
						placeholder="Enter Title" class="input-xlarge" required=""
						type="text" />
					<sf:errors path="title" cssClass="alert-danger"></sf:errors>
				</div>
			</div>

			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="company">Company Name</label>
				<div class="controls">
					<sf:input id="company" path="company" name="company"
						placeholder="Enter Company Name" class="input-xlarge" required=""
						type="text" />
					<sf:errors path="company" cssClass="alert-danger"></sf:errors>

				</div>
			</div>

			<!-- Textarea -->
			<div class="control-group">
				<label class="control-label" for="details">Job Details</label>
				<div class="controls">
					<sf:textarea id="details" path="details" name="details"></sf:textarea>
					<sf:errors path="details" cssClass="alert-danger"></sf:errors>
				</div>
			</div>

			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="email">Email Address</label>
				<div class="controls">
					<sf:input id="email" path="email" name="email"
						placeholder="Enter Email Address" class="input-xlarge" required=""
						type="text" />
					<sf:errors path="email" cssClass="alert-danger"></sf:errors>

				</div>
			</div>

			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="deadline">Application
					Deadline</label>
				<div class="controls">
					<sf:input id="deadline" path="deadline" name="deadline"
						placeholder="Enter Date" class="input-xlarge" required=""
						type="text" />
					<sf:errors path="deadline" cssClass="alert-danger"></sf:errors>

				</div>
			</div>

			<!-- Button -->
			<div class="control-group">
				<label class="control-label" for="submit"></label>
				<div class="controls">
					<button id="submit" name="submit" class="btn btn-primary">Update
						Job</button>
				</div>
			</div>

		</fieldset>
	</sf:form>

</div>