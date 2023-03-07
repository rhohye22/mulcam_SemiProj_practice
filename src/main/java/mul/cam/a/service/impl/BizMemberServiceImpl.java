package mul.cam.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.cam.a.dao.BizMemberDao;
import mul.cam.a.dto.BizMemberDto;
import mul.cam.a.service.BizMemberService;

@Service
public class BizMemberServiceImpl implements BizMemberService {

	@Autowired
	BizMemberDao dao;

	@Override
	public List<BizMemberDto> allMember() {
		return dao.allMember();
	}

	@Override
	public BizMemberDto login(BizMemberDto dto) {
		return dao.login(dto);
	}

	@Override
	public boolean idCheck(String id) {
		int count = dao.idCheck(id);
		return count > 0 ? true : false;
	}

	@Override
	public boolean addMember(BizMemberDto dto) {
		int count = dao.addMember(dto);
		return count > 0 ? true : false;
	}

}
