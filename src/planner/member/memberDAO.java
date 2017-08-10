package planner.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;


@Repository
public class memberDAO extends SqlSessionDaoSupport{
	
	public memberVO getMember(String id)  {
		return getSqlSession().selectOne("memberMapper.getMember", id);
	}
	
	public int insertMember(memberVO vo)  {
		int result = 0;
		System.out.println("dap : " + vo);
		try {
		 result = getSqlSession().insert("memberMapper.insertMember", vo);
		}catch(Exception e) {
			System.out.println("dao 회원가입 예외발생");
		}
		return result;
	}
	
	public List<memberVO> searchMember()  {
		return getSqlSession().selectList("memberMapper.getAllUser");
	}
	
	public int remove(String userid) {
		return getSqlSession().update("memberMapper.deleteUser",userid);
	}
	
	public memberVO loginCheck(memberVO vo) {
		System.out.println(vo);
		return getSqlSession().selectOne("memberMapper.login",vo);
	}
	public void logOut(HttpSession session) {
		System.out.println("로그아웃 dao");
		 session.invalidate();
	}
}
