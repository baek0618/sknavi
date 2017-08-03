package planner.schedule;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDAOImpl implements scheduleDAO {
	@Autowired
	SqlSession session;
	
	@Override
	public int addSchedule(scheduleVO schedule) {
		/* C: shedule 생성 */
		return session.insert("");
	}

	@Override
	public List<scheduleVO> getScheduleList() {
		/* R: shedule 조회(전체) */
		return null;
	}

	@Override
	public scheduleVO getSchedulebyId(String scheduleId) {
		/* R: shedule 조회(id) */
		return null;
	}

	@Override
	public int updateSchedule(scheduleVO schedule) {
		/* U: shedule 수정 */
		return 0;
	}

	@Override
	public int removeSchedule(scheduleVO schedule) {
		/* D: shedule 삭제 */
		return 0;
	}

}
