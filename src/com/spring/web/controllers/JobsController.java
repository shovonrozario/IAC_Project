package com.spring.web.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.web.entity.Job;
import com.spring.web.services.JobsService;

@Controller
public class JobsController {

	private JobsService jobsService;

	@Autowired
	public void setJobsService(JobsService jobsService) {
		this.jobsService = jobsService;
	}

	@RequestMapping("/jobs")
	public String showJobs(Model model) {
		List<Job> jobs = jobsService.getCurrent();
		model.addAttribute("jobs", jobs);
		return "jobs";
	}

	@RequestMapping("/createjob")
	public String createJobs(Model model) {
		model.addAttribute(new Job());
		return "createjob";
	}
	
	@RequestMapping(value="/docreate", method=RequestMethod.POST)
	public String doCreate(Model model, @Valid Job job, BindingResult result) {
		if(result.hasErrors()) {			
			return "createjob";
		}
		jobsService.create(job);
		return "jobcreated";
	}
	
	@ExceptionHandler(DataAccessException.class)
	public String handleDatabaseException(DataAccessException e) {
		return "error";
	}
}
