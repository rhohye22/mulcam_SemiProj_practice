package mul.cam.a.dao;

import java.util.List;

import mul.cam.a.dto.BbsParam;
import mul.cam.a.dto.PdsDto;

public interface PdsDao {
	List<PdsDto> pdslist(BbsParam pds);
	int getAllPds(BbsParam pds);
	int uploadPds(PdsDto dto);
	void downcount(int seq);
	PdsDto getPds(int seq);
	int updatePds(PdsDto dto);
	PdsDto deletePds(int seq);
}
