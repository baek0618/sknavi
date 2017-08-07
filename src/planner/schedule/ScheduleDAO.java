package planner.schedule;

import java.util.List;

public interface ScheduleDAO {
	/* C: shedule 생성 */
	public int addSchedule(ScheduleVO schedule);

	/* R: shedule 조회(전체) */
	public List<ScheduleVO> getScheduleList();

	/* R: shedule 조회(id) */
	public ScheduleVO getSchedulebyId(String scheduleId);

	/* U: shedule 수정 */
	public int updateSchedule(ScheduleVO schedule);

	/* D: shedule 삭제 */
	public int removeSchedule(String scheduleId);

}
