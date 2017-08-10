package planner.board;

import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import planner.comment.commentDAO;
import planner.comment.commentVO;
import planner.member.memberDAO;
import planner.member.memberVO;

@Controller
public class findBoardController {
	
	@Autowired
	boardDAO boardDao;
	@Autowired
	commentDAO commentDao;
	@Autowired
	memberDAO memberDao;
	

	@RequestMapping("/viewBoards.do")
	public ModelAndView viewAllBoards() {
		List<boardVO> board = boardDao.viewAllBoards();
		
		return new ModelAndView("boardList", "board", board);
	}
	
	@RequestMapping("/viewDetailBoard.do")
	public String viewDetailBoard(@RequestParam int board_id, Model model) {
		boardVO board = boardDao.viewDetailBoard(board_id);
		int cnt = board.getBoard_hit();
		
		if(board != null) {
			cnt++;
			
			board.setBoard_hit(cnt);
			board.getBoard_id();
			boardDao.improveOfHit(board);
			
			List<commentVO> comment = commentDao.viewAllComments(board);
			memberVO member = memberDao.getMember("ky");
			
			model.addAttribute("comments", comment);
			model.addAttribute("board", board);			
			model.addAttribute("memberId", member.getId());

		}
		return "boardDetailList";
	}
	
	@RequestMapping("/moveToPost.do")
	public String moveToPost() throws Exception{
		
		return "postToPublic";
	}
	
	@RequestMapping("/improveLikeCnt.do")
	public String improveLikeCnt(HttpServletRequest request) throws Exception{
		boardVO board = boardDao.viewDetailBoard(Integer.parseInt(request.getParameter("boardId")));
		if(board != null) {
			int cnt = board.getBoard_like();
			cnt++;

			board.setBoard_like(cnt);
			board.getBoard_id();
			boardDao.improveOfLike(board);
			
			return "redirect:viewBoards.do";
		}
	
		return "redirect:viewBoards.do";
	}
	
	@RequestMapping("/writeComment.do")
	public String addComment(HttpServletRequest request, Model model) throws Exception{
		
		boardVO board = boardDao.viewDetailBoard(Integer.parseInt(request.getParameter("boardId")));
		memberVO member = memberDao.getMember("ky");
		String comments = request.getParameter("bcontents");
		commentVO vo = new commentVO();
		
		GregorianCalendar today = new GregorianCalendar();
		int year = today.get (today.YEAR);
		int month = today.get(today.MONTH) + 1;
		int day = today.get(today.DAY_OF_MONTH);
		
		String date = year + "-" + month + "-" + day;
		
		vo.setComment_date(date);
		vo.setComments(comments);
		vo.setMember(member);
		vo.setBoard(board);
		
		commentDao.addComment(vo);
		
		return "index";
	}
	
	@RequestMapping("/updateComment.do")
	public String updateComment(HttpServletRequest request, Model model) {
		int commentId = Integer.parseInt(request.getParameter("commentId"));
		boardVO board = boardDao.viewDetailBoard(Integer.parseInt(request.getParameter("boardId")));
		memberVO member = memberDao.getMember(request.getParameter("memberId"));
		String contents = request.getParameter("comments");
		
		commentVO vo = new commentVO();
		vo.setMember(member);
		vo.setBoard(board);
		vo.setComments(contents);
		vo.setComment_id(commentId);
		
		commentDao.updateComment(vo);
		
		return "index";
	}
	
	@RequestMapping("/deleteComment.do")
	public String deleteComment(HttpServletRequest request) {
		int commentId = Integer.parseInt(request.getParameter("commentId"));
		boardVO board = boardDao.viewDetailBoard(Integer.parseInt(request.getParameter("boardId")));
		memberVO member = memberDao.getMember(request.getParameter("memberId"));
		
		
		commentVO vo = new commentVO();
		vo.setComment_id(commentId);
		vo.setMember(member);
		vo.setBoard(board);
		
		commentDao.deleteComment(vo);
		
		return "index";
	}
}
