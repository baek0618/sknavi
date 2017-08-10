package planner.schedule;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO {

	@Autowired
	SqlSession session;

	@Override
	public int addSchedule(ScheduleVO schedule) {
		/* C: shedule ���� */
		return session.insert("scheduleMapper.insertSchedule", schedule);
	}

	@Override
	public List<ScheduleVO> getScheduleList() {
		/* R: shedule ��ȸ(��ü) */
		return session.selectList("scheduleMapper.scheduleList");
	}

	@Override
	public ScheduleVO getSchedulebyId(String scheduleId) {
		/* R: shedule ��ȸ(id) */
		return session.selectOne("scheduleMapper.scheduleById", scheduleId);
	}

	@Override
	public int updateSchedule(ScheduleVO schedule) {
		/* U: shedule ���� */
		return session.update("scheduleMapper.updateSchedule", schedule);
	}

	@Override
	public int removeSchedule(String scheduleId) {
		/* D: shedule ���� */
		return session.delete("scheduleMapper.deleteSchedule", scheduleId);
	}

}
