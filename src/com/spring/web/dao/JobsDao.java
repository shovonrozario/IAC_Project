package com.spring.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.web.entity.Job;

@Component("jobsDao")
public class JobsDao {
	private NamedParameterJdbcTemplate jdbc;

	public JobsDao() {
		System.out.println("creating jobsdao");
	}

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public List<Job> getJobs() {

		return jdbc.query("select * from job", new RowMapper<Job>() {

			public Job mapRow(ResultSet rs, int rowNum) throws SQLException {
				Job job = new Job();
				job.setId(rs.getInt("id"));
				job.setTitle(rs.getString("title"));
				job.setCompany(rs.getString("company"));
				job.setDetails(rs.getString("details"));
				job.setEmail(rs.getString("email"));
				job.setDeadline(rs.getString("deadline"));

				return job;
			}
		});
	}

	public boolean delete(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);

		return jdbc.update("delete from job where id = :id", params) == 1;
	}

	public boolean update(Job job) {
		
		System.out.println(job);

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(
				job);

		return jdbc
				.update("update job set title=:title, company=:company, details=:details, email=:email,  deadline=:deadline where id=:id",
						params) == 1;
	}

	public boolean create(Job job) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(
				job);

		return jdbc
				.update("insert into job (title, company, details, email, deadline) values (:title, :company, :details, :email, :deadline)",
						params) == 1;
	}

	public Job getJob(int id) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);

		return jdbc.queryForObject("select * from job where id = :id", params,
				new RowMapper<Job>() {

					public Job mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						Job job = new Job();

						job.setId(rs.getInt("id"));
						job.setTitle(rs.getString("title"));
						job.setCompany(rs.getString("company"));
						job.setDetails(rs.getString("details"));
						job.setEmail(rs.getString("email"));
						job.setDeadline(rs.getString("deadline"));

						return job;
					}

				});

	}

	public List<Job> getJobs(String searchParam) {
		String searchParams[] = searchParam.split(" ");
		String query = "select * from job where title like '%" + searchParam
				+ "%' or details like '%" + searchParam + "%'";
		if (searchParams.length > 1) {
			for (String text : searchParams) {
				query = query + " or title like '%" + text
						+ "%' or details like '%" + text + "%'";
			}
		}

		return jdbc.query(query, new RowMapper<Job>() {

			public Job mapRow(ResultSet rs, int rowNum) throws SQLException {
				Job job = new Job();
				job.setId(rs.getInt("id"));
				job.setTitle(rs.getString("title"));
				job.setCompany(rs.getString("company"));
				job.setDetails(rs.getString("details"));
				job.setEmail(rs.getString("email"));
				job.setDeadline(rs.getString("deadline"));

				return job;
			}
		});
	}

}
