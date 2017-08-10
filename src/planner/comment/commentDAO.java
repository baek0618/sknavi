package planner.comment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import planner.board.boardVO;

@Repository
public class commentDAO {
	@Autowired
	SqlSession session;
	
	public void addComment(commentVO vo) {
		session.insert("boardMapper.addComment", vo);
	}
	
	public List<commentVO> viewAllComments(boardVO vo){
		return session.selectList("boardMapper.viewAllComments", vo);
	}
	
	public void updateComment(commentVO vo) {
		session.update("boardMapper.updateComment", vo);
	}
	
	public void deleteComment(commentVO vo) {
		session.delete("boardMapper.deleteComment", vo);
	}
}
