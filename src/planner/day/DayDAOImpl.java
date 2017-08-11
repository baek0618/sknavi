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
	public void addDay(DayVO dayVo) {
		session.insert("dayMapper.insertDay", dayVo);
	}
	
	//Day �Ѱ� ��ȸ
	@Override
	public DayVO getDay(Integer dayId) {
		System.out.println("getDay call");
		return session.selectOne("dayMapper.selectDay", dayId);
	}
	
	@Override
	public DayVO getDayPlaces(Integer placeId)  {
		return session.selectOne("dayMapper.viewScheduleDetail", placeId);
	}

	//Day ��ȸ(�����ٿ� ���Ե� daylist)
	@Override
	public List<DayVO> getDays(Integer scheduleId) {
		System.out.println("getDays call");
		return session.selectList("dayMapper.selectDays", scheduleId);
	}
	
	//Day �Ѱ� ����
	@Override
	public void removeDay(Integer dayId) {
		session.delete("dayMapper.deleteDay", dayId);
	}
	
	//Day ���� (�����ٿ� ���Ե� day ��� ����)
	@Override
	public void removeDayByschedule(Integer scheduleId) {
		session.delete("dayMapper.deleteDayByschedule", scheduleId);
	}
	
	//Day ����
	@Override
	public void updateDay(DayVO dayVo) {
		session.update("dayMapper.updatetDay", dayVo);
	}
	
	

}
