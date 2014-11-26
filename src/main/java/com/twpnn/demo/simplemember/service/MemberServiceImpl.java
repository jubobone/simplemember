package com.twpnn.demo.simplemember.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.twpnn.demo.simplemember.dao.MemberDao;
import com.twpnn.demo.simplemember.model.Member;

@Service 
@Transactional
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public Member findById(Long id) throws Exception {
		return memberDao.findById(id);
	}

	@Override
	public List<Member> findAll() throws Exception {
		return memberDao.findAll();
	}

	@Override
	public boolean save(Member member) throws Exception {
		return memberDao.save(member);
	}

	@Override
	public boolean update(Member member) throws Exception {
		return memberDao.update(member);
	}

	@Override
	public boolean delete(Member member) throws Exception {
		return memberDao.delete(member);
	}

}