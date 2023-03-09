package mul.cam.a.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.cam.a.dto.BizMemberDto;

import mul.cam.a.service.BizMemberService;

@Controller
public class BizMemberController {
	@Autowired
	BizMemberService service;
	
	@RequestMapping(value = "regiAfBiz.do", method = RequestMethod.POST)
	public String regiAf(Model model, BizMemberDto dto) {
//		System.out.println("MemberController regiAf " + new Date());
		boolean isS = service.addMember(dto);
		String message = "";
		if (isS) {
			message = "MEMBER_ADD_YES";
		}else {
			message = "MEMBER_ADD_NO";
		}
		model.addAttribute("message", message);
		return "message";
	}
	
	@ResponseBody
	@RequestMapping(value = "Bizidcheck.do", method = RequestMethod.POST)
	public String idcheck(String id) {
//		System.out.println("MemberController idcheck " + new Date());
		
		boolean isS = service.idCheck(id);
		if(isS) {
			return "NO";		// id가 있음
		}
		return "YES";			// id가 없음
	}	
	
	
	
}
