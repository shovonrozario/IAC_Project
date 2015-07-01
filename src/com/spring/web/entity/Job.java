package com.spring.web.entity;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import com.spring.web.validation.ValidEmail;

public class Job {
	private int id;
	
	@Size(min=2, max=200)
	private String title;
	
	@Size(min=2, max=200)
	private String company;
	
	private String details;
	
	@ValidEmail
	private String email;
	
	@NotBlank
	private String deadline;
	
	public Job() {
		
	}

	public Job(int id, String title, String company, String details,
			String deadline) {
		this.id = id;
		this.title = title;
		this.company = company;
		this.details = details;
		this.deadline = deadline;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}	
	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	@Override
	public String toString() {
		return "Job [id=" + id + ", title=" + title + ", company=" + company
				+ ", details=" + details + ", email=" + email + ", deadline="
				+ deadline + "]";
	}	
	
	
}
