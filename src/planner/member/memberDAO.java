package planner.member;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class memberDAO extends SqlSessionDaoSupport{
	
	public memberVO getMember(String id)  {
		return getSqlSession().selectOne("memberMapper.getMember", id);
	}
}
