package com.spring.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

	public void create(Job job) {
		jobsDao.create(job);
		
	}
	
	
}
