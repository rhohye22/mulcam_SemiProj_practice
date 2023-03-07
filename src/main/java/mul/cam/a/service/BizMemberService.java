package mul.cam.a.service;

import java.util.List;

import mul.cam.a.dto.BizMemberDto;
import mul.cam.a.dto.MemberDto;

public interface BizMemberService {
	List<BizMemberDto> allMember();
	BizMemberDto login(BizMemberDto dto);
	boolean idCheck(String id);
	boolean addMember(BizMemberDto dto);
}
