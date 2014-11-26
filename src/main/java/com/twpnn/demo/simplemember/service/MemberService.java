package com.twpnn.demo.simplemember.service;

import java.util.List;

import com.twpnn.demo.simplemember.model.Member;

public interface MemberService {
	public Member findById(Long id)throws Exception;
	public List<Member> findAll()throws Exception;
	public boolean save(Member member)throws Exception;
	public boolean update(Member member)throws Exception;
	public boolean delete(Member member)throws Exception;
}
