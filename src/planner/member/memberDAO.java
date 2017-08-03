package planner.member;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class memberDAO extends SqlSessionDaoSupport{
	
	public memberVO getMember(String id)  {
		return getSqlSession().selectOne("memberMapper.getMember", id);
	}
}
