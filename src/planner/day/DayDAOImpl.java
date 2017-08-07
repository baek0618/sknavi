package planner.day;

import java.util.List;

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
		session.insert("dayMapper.insertDay", dayVo);
	}
	
	//Day �Ѱ� ��ȸ
	@Override
	public DayVo getDay(DayVo dayVo) {
		return session.selectOne("dayMapper.selectDay", dayVo);
	}

	//Day ��ȸ(�����ٿ� ���Ե� daylist)
	@Override
	public List<DayVo> getDays(Integer scheduleId) {
		return session.selectList("dayMapper.selectDays", scheduleId);
	}
	
	//Day �Ѱ� ����
	@Override
	public void removeDay(DayVo dayVo) {
		session.delete("dayMapper.deleteDay", dayVo);
	}
	
	//Day ���� (�����ٿ� ���Ե� day ��� ����)
	@Override
	public void removeDayByschedule(Integer scheduleId) {
		session.delete("dayMapper.deleteDayByschedule", scheduleId);
	}
	
	//Day ����
	@Override
	public void updateDay(DayVo dayVo) {
		session.update("dayMapper.updateDay", dayVo);
	}


}
