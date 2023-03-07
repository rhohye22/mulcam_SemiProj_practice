package mul.cam.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.cam.a.dao.MemberDao;
import mul.cam.a.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{
	// MyBatis 접근(생성)
	@Autowired	// 자동생성 mybatis에서 SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
				// + SqlSession session = factory.openSession();
	SqlSession session;
	
	String ns = "Member.";		//namespace
	

	@Override
	public List<MemberDto> allMember() {
//		return session.selectList("Member." + "allMember");
		return session.selectList("Member.allMember");
	}


	@Override
	public int idCheck(String id) {
		return session.selectOne(ns + "idcheck", id);
	}


	@Override
	public int addMember(MemberDto dto) {
		return session.insert(ns +"addmember", dto);
	}


	@Override
	public MemberDto login(MemberDto dto) {
		MemberDto mem = session.selectOne(ns + "login", dto);
		return mem;
	}
	
}
