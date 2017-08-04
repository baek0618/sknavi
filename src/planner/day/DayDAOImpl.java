package planner.day;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DayDAOImpl implements DayDAO {
	
	@Autowired
	SqlSession session;
	
	//Day ����
	@Override
	public void addDay(DayVo dayVo) {
		session.insert("dayMapper.insetDay", dayVo);
	}
	
	//Day ��ȸ
	@Override
	public DayVo getDay(Integer scheduleId) {
		return session.selectOne("dayMapper.selectDay", scheduleId);
	}
	
	//Day �Ѱ� ����
	@Override
	public void removeDay(DayVo dayVo) {
		session.delete("dayMapper.deleteDay", dayVo);
	}
	
	//Day ����
	@Override
	public void updateDay(DayVo dayVo) {
		session.update("dayMapper.updatetDay", dayVo);
	}

}
