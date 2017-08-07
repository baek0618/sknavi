package planner.schedule;

import java.util.List;

public interface ScheduleDAO {
	/* C: shedule ���� */
	public int addSchedule(ScheduleVO schedule);

	/* R: shedule ��ȸ(��ü) */
	public List<ScheduleVO> getScheduleList();

	/* R: shedule ��ȸ(id) */
	public ScheduleVO getSchedulebyId(String scheduleId);

	/* U: shedule ���� */
	public int updateSchedule(ScheduleVO schedule);

	/* D: shedule ���� */
	public int removeSchedule(String scheduleId);

}
