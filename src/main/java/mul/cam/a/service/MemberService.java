package mul.cam.a.service;

import java.util.List;

import mul.cam.a.dto.MemberDto;

public interface MemberService {
	List<MemberDto> allMember();
	MemberDto login(MemberDto dto);
	boolean idCheck(String id);
	boolean addMember(MemberDto dto);
	MemberDto Bizlogin(MemberDto dto);
	boolean BizAadmember(MemberDto dto);
}
