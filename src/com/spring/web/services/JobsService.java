package com.spring.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.spring.web.dao.JobsDao;
import com.spring.web.entity.Job;

@Service("jobsService")
public class JobsService {
	private JobsDao jobsDao;

	public JobsDao getJobsDao() {
		return jobsDao;
	}

	@Autowired
	public void setJobsDao(JobsDao jobsDao) {
		this.jobsDao = jobsDao;
	}
	
	public List<Job> getCurrent(){
		return jobsDao.getJobs();
	}

	@Secured({"ROLE_ADMIN", "ROLE_GENERAL"})
	public void create(Job job) {
		jobsDao.create(job);
		
	}

	public Job getJob(int id) {
		return jobsDao.getJob(id);
	}

	public List<Job> getRelevantJobs(String searchParam) {
		return jobsDao.getJobs(searchParam);		
	}

	public boolean deleteJob(int id) {
		return jobsDao.delete(id);
	}

	public boolean update(Job job) {
		return jobsDao.update(job);
		
	}
	
	
}
