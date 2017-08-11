package planner.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class boardDAO {
	@Autowired
	SqlSession session;

	public boardVO viewDetailBoard(int board_id) {

		return session.selectOne("boardMapper.viewDetailBoard", board_id);
	}

	public List<boardVO> viewAllBoards() {

		return session.selectList("boardMapper.viewAllBoards");
	}

	public List<boardVO> viewItemsBoards() {

		return session.selectList("boardMapper.viewItemList");
	}

	public void improveOfHit(boardVO vo) {
		session.update("boardMapper.improveOfHit", vo);
	}

	public void improveOfLike(boardVO vo) {
		session.update("boardMapper.improveOfLike", vo);
	}

	public void addComment(boardVO vo) {
		session.insert("boardMapper.addComment", vo);
	}
}
