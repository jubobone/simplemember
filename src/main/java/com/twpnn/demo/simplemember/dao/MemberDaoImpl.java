package com.twpnn.demo.simplemember.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.twpnn.demo.simplemember.model.Member;
import com.twpnn.demo.simplemember.model.User;

@Repository
public class MemberDaoImpl extends HibernateDaoSupport implements MemberDao {

	protected Session session;

	@Autowired
	public void setDummySessionFactory(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
		session = this.getHibernateTemplate().getSessionFactory().openSession();
	}
	
	@Override
	public Member findById(Long id) throws Exception {
		Member member = this.getHibernateTemplate().get(Member.class, id);
		return member;
	}

	@Override
	public List<Member> findAll() throws Exception {
		List<Member> memberList = session.createCriteria(Member.class).list(); // this will do after return from this method
		session.flush(); // update latest session 
		session.clear(); // clear current session once get data from latest session
		return memberList;
	}

	@Override
	public boolean save(Member member) throws Exception {
		this.getHibernateTemplate().save(member);
		return true;
	}

	@Override
	public boolean update(Member member) throws Exception {
		this.getHibernateTemplate().update(member);
		return true;
	}

	@Override
	public boolean delete(Member member) throws Exception {
		this.getHibernateTemplate().delete(member);
		return true;
	}
}