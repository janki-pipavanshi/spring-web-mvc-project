package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.userModel;
import com.model.booktable;
import com.model.reviewModel;
import com.mysql.cj.Session;

@Component
public class userDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void insertUser(userModel u) {
		this.hibernateTemplate.saveOrUpdate(u);
	}
	@Transactional
	public userModel getDataById(userModel u)
	{
		userModel u1;
		org.hibernate.Session session=hibernateTemplate.getSessionFactory().getCurrentSession();
		String q="from userModel u where u.email=:email and u.password=:password";
		Query query=session.createQuery(q);
		query.setParameter("email", u.getEmail());
		query.setParameter("password", u.getPassword());
		u1=(userModel)query.getSingleResult();
		
		return u1;
	
		
	}
	@Transactional
	public void booktable(booktable b) 
	{
		this.hibernateTemplate.saveOrUpdate(b);
	}

	@Transactional
	public booktable getAllUser(int id) 
	{
		System.out.println("hello");
		booktable b1 = null;
		System.out.println(id);
		org.hibernate.Session session=hibernateTemplate.getSessionFactory().getCurrentSession();
		String q="from booktable  where id=:id";
		Query query=session.createQuery(q);
		query.setParameter("id", id);
		try
		{
		 b1=(booktable)query.getSingleResult();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return b1;
			
	}
	@Transactional
	public void delete(booktable u) {
		System.out.println("delete called");
		this.hibernateTemplate.delete(u);
	}

	@Transactional
	public void insertReview(reviewModel r) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.saveOrUpdate(r);
	}
}


