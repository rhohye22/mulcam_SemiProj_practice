package mul.cam.a.dao;

import java.util.List;

import mul.cam.a.dto.BizMemberDto;


public interface BizMemberDao {
	List<BizMemberDto> allMember();
	int idCheck(String id);
	int addMember(BizMemberDto dto);
	BizMemberDto login(BizMemberDto dto);

}
