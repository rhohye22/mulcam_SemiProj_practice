package mul.cam.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.cam.a.dao.BizMemberDao;
import mul.cam.a.dto.BizMemberDto;


@Repository
public class BizMemberDaoImpl implements BizMemberDao {

	@Autowired
	SqlSession session;

	String ns = "BizMember.";

	@Override
	public List<BizMemberDto> allMember() {
		return session.selectList(ns +"allMember");
	}

	@Override
	public int idCheck(String id) {
		return session.selectOne(ns + "idcheck", id);
	}

	@Override
	public int addMember(BizMemberDto dto) {
		return session.insert(ns +"addmember", dto);
	}

	@Override
	public BizMemberDto login(BizMemberDto dto) {
		BizMemberDto mem = session.selectOne(ns + "login", dto);
		return mem;
	}

}
