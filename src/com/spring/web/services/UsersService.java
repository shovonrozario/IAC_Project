package com.spring.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.spring.web.dao.UsersDao;
import com.spring.web.entity.User;

@Service("usersService")
public class UsersService {
	private UsersDao usersDao;

	public UsersDao getJobsDao() {
		return usersDao;
	}

	@Autowired	
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}


	public void create(User user) {
		usersDao.create(user);
		
	}

	public boolean userExist(String username) {		
		return usersDao.exists(username);
	}

	@Secured("ROLE_ADMIN")
	public List<User> getAllUsers() {		
		return usersDao.getAllUsers();
	}
	
	
}
