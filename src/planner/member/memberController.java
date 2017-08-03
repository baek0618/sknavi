package planner.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class memberController {

	@Autowired
	memberDAO memberDao; 
	
	@RequestMapping("/getMember.do")
	public ModelAndView getUser(@RequestParam String id) {
		memberVO memberValue = memberDao.getMember(id);
		return new ModelAndView("member", "member", memberValue);
	}

}