package planner.member;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class memberDAO extends SqlSessionDaoSupport{
	
	public String findID(String id)  {
		return getSqlSession().selectOne(id);
	}
}
