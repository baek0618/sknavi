package planner.schedule;

import java.util.List;

public interface scheduleDAO {
	/* C: shedule 생성 */
	public int addSchedule(scheduleVO schedule);

	/* R: shedule 조회(전체) */
	public List<scheduleVO> getScheduleList();

	/* R: shedule 조회(id) */
	public scheduleVO getSchedulebyId(String scheduleId);

	/* U: shedule 수정 */
	public int updateSchedule(scheduleVO schedule);

	/* D: shedule 삭제 */
	public int removeSchedule(scheduleVO schedule);

}
