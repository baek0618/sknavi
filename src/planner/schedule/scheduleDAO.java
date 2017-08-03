package planner.schedule;

import java.util.List;

public interface scheduleDAO {
	/* C: shedule ���� */
	public int addSchedule(scheduleVO schedule);

	/* R: shedule ��ȸ(��ü) */
	public List<scheduleVO> getScheduleList();

	/* R: shedule ��ȸ(id) */
	public scheduleVO getSchedulebyId(String scheduleId);

	/* U: shedule ���� */
	public int updateSchedule(scheduleVO schedule);

	/* D: shedule ���� */
	public int removeSchedule(scheduleVO schedule);

}
