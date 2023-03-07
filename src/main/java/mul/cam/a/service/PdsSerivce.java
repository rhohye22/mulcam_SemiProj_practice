package mul.cam.a.service;

import java.util.List;

import mul.cam.a.dto.BbsParam;
import mul.cam.a.dto.PdsDto;

public interface PdsSerivce {
	public List<PdsDto> pdslist(BbsParam pds);
	int getAllPds(BbsParam pds);
	boolean uploadPds(PdsDto dto);
	void downcount(int seq);	
	PdsDto getPds(int seq);
	boolean updatePds(PdsDto dto);
	PdsDto deletePds(int seq);
}
