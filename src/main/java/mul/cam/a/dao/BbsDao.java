package mul.cam.a.dao;

import java.util.List;

import mul.cam.a.dto.BbsComment;
import mul.cam.a.dto.BbsDto;
import mul.cam.a.dto.BbsParam;

public interface BbsDao {
	
	List<BbsDto> bbslist(BbsParam bbs);
	int getAllBbs(BbsParam bbs);
	int writeBbs(BbsDto dto);
	BbsDto getBbs(int seq);
	int updateBbs(BbsDto dto);
	BbsDto deleteBbs(int seq);
	
	//TODO 답글
	int answerBbsUpdate(BbsDto dto);
	int answerBbsInsert(BbsDto dto);
	
	//TODO 댓글
	int commentWrite(BbsComment bc);
	List<BbsComment> commentList(int seq);
}
