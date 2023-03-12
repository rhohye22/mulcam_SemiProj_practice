package mul.cam.a.dao;

import java.util.List;

import mul.cam.a.dto.MemberDto;

public interface MemberDao {
	List<MemberDto> allMember();
	int idCheck(String id);
	int addMember(MemberDto dto);
	MemberDto login(MemberDto dto);
	int BizAadmember(MemberDto dto);
	MemberDto Bizlogin(MemberDto dto);
}
