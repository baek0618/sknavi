package planner.day;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DayDAOImpl implements DayDAO {
	
	@Autowired
	SqlSession session;
	
	//Day 생성
	@Override
	public void addDay(DayVo dayVo) {
		session.insert("dayMapper.insertDay", dayVo);
	}
	
	//Day 한개 조회
	@Override
	public DayVo getDay(DayVo dayVo) {
		return session.selectOne("dayMapper.selectDay", dayVo);
	}

	//Day 조회(스케줄에 포함된 daylist)
	@Override
	public List<DayVo> getDays(Integer scheduleId) {
		return session.selectList("dayMapper.selectDays", scheduleId);
	}
	
	//Day 한개 삭제
	@Override
	public void removeDay(DayVo dayVo) {
		session.delete("dayMapper.deleteDay", dayVo);
	}
	
	//Day 삭제 (스케줄에 포함된 day 모두 삭제)
	@Override
	public void removeDayByschedule(Integer scheduleId) {
		session.delete("dayMapper.deleteDayByschedule", scheduleId);
	}
	
	//Day 수정
	@Override
	public void updateDay(DayVo dayVo) {
		session.update("dayMapper.updateDay", dayVo);
	}


}
