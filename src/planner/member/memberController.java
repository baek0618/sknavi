package planner.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;




@Controller
@SessionAttributes({"id","err"})
public class memberController {

	@Autowired
	memberDAO memberDao; 
	memberVO globalVO;
	
	@RequestMapping("/getMember.do")
	public String getUser(@RequestParam String id, Model model) {
		memberVO memberValue = memberDao.getMember(id);
		model.addAttribute("member", memberValue);
		
		// jsp 넘김 
		return "member";
	}
	
	@RequestMapping("/memberForm.do")
	public String memberForm() {
		System.out.println("memberForm");
		return "memberAddForm";
	}
	
	@RequestMapping("/insertMember.do")
	public String insertMember(@ModelAttribute memberVO vo, HttpSession session) {
		System.out.println("insert");
		//memberVO vo = new memberVO(id,password,name,phone);
		System.out.println(vo);
		int cnt = memberDao.insertMember(vo);
		System.out.println(cnt);
		if (cnt == 0 ) {
			System.out.println("회원가입 실패");
			
		}
		if (vo.getName().equals("N"))
			session.setAttribute("userId",vo.getPassword());
		return "index2";
	}
	
	
	@RequestMapping(value="/duplicate.do" ,method=RequestMethod.POST)
	@ResponseBody
	public String duplicateMember(@RequestParam String id) {
		System.out.println("duplicate");
		System.out.println("test:"+id);
		//memberVO vo = new memberVO(id,password,name,phone);
	//	HashMap<String,Boolean> result = new HashMap<String,Boolean>();
		memberVO mb = memberDao.getMember(id);
		
		if (mb == null) {
			System.out.println("널값");
			return "fail";
		}else {
			System.out.println(mb.getId());
			
			System.out.println(mb);
			
			return mb.getId();
		}
		
		
	}
	
	
	@RequestMapping("/memberSearch.do")
	public ModelAndView getUserList() {
		System.out.println("getuserlist");
		List<memberVO> userListValue = memberDao.searchMember();
		System.out.println("getuserlist22");
		return new ModelAndView("memberSearch", "userListKey", userListValue);
	}
	
	@RequestMapping("/getMemberDelete.do")
	public String deleteUser(@RequestParam String id) {
			int cnt = memberDao.remove(id);
			if (cnt ==1) 
				return "redirect:/memberSearch.do";
			else 
				return "";
	}
	
	@RequestMapping("/login.do")
	
	public String login(@RequestParam String user_id,@RequestParam String user_pw, HttpSession session) {
			System.out.println("로그인");
			memberVO logMember = memberDao.loginCheck(new memberVO(user_id,user_pw));
			System.out.println(logMember);
			if (logMember != null) {
				session.setAttribute("userId",user_id);
				
				return "redirect:/index2.jsp";
			}
			else {
				System.out.println("로그인실패");
				session.setAttribute("err",0);
				return "redirect:/index2.jsp";
			}
	}
	
	@RequestMapping("/fLogin.do")
	
	public String fLogin(@RequestParam String fID,@RequestParam String fPW, HttpSession session) {
			System.out.println("페북 로그인 시도..");
			globalVO = memberDao.loginCheck(new memberVO(fID,fPW));
			System.out.println("전역 vo" +globalVO);
			if (globalVO != null) {
				session.setAttribute("userId",fPW);
				
				return "redirect:/index2.jsp";
			}
			else {
				System.out.println("로그인실패");
				//session.setAttribute("err",0);
				insertMember(new memberVO(fID,fPW),session);
				return "redirect:/index2.jsp";
			}
	}

	

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println("로그아웃");
		memberDao.logOut(session);
		return "redirect:/index2.jsp";
	}
	

}