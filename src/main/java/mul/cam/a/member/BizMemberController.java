package mul.cam.a.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
