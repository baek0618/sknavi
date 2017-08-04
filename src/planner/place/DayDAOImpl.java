package planner.place;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DayDAOImpl implements DayDAO {
	
	@Autowired
	SqlSession session;

	@Override
	public void addDay(DayVo dayVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public DayVo getDay(Integer scheduleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeDay(DayVo dayVo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateDay(DayVo dayVo) {
		// TODO Auto-generated method stub

	}

}
