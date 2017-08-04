package planner.day;

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
		session.insert("dayMapper.insetDay", dayVo);
	}
	
	//Day 조회
	@Override
	public DayVo getDay(Integer scheduleId) {
		return session.selectOne("dayMapper.selectDay", scheduleId);
	}
	
	//Day 한개 삭제
	@Override
	public void removeDay(DayVo dayVo) {
		session.delete("dayMapper.deleteDay", dayVo);
	}
	
	//Day 수정
	@Override
	public void updateDay(DayVo dayVo) {
		session.update("dayMapper.updatetDay", dayVo);
	}

}
