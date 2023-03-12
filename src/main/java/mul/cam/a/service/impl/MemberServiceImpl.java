package mul.cam.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.cam.a.dao.MemberDao;
import mul.cam.a.dao.impl.MemberDaoImpl;
import mul.cam.a.dto.MemberDto;
import mul.cam.a.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	// Dao 접근(생성) == MemberDao dao = new MemberDaoImpl();를 auto로
	@Autowired
	MemberDao dao;
	

	@Override
	public List<MemberDto> allMember() {
		return dao.allMember();
	}


	@Override
	public boolean idCheck(String id) {
		int count = dao.idCheck(id);
		return count>0?true:false;
	}


	@Override
	public boolean addMember(MemberDto dto) {
		int count = dao.addMember(dto);
		return count>0?true:false;
	}


	@Override
	public MemberDto login(MemberDto dto) {
		return dao.login(dto);
	}
	@Override
	public boolean BizAadmember(MemberDto dto) {
		int count = dao.BizAadmember(dto);
		return count>0?true:false;
	}
	@Override
	public MemberDto Bizlogin(MemberDto dto) {
		
		return dao.Bizlogin(dto);
	}
}