package planner.day;

import java.util.List;

public interface DayDAO {

	//Day ����
	public void addDay(DayVo dayVo);
	//Day �Ѱ� ��ȸ
	public DayVo getDay(DayVo dayVo);
	//Day ��ȸ(�����ٿ� ���Ե� daylist)
	public List<DayVo> getDays(Integer scheduleId);
	//Day �Ѱ� ����
	public void removeDay(DayVo dayVo);
	//Day ���� (�����ٿ� ���Ե� day ��� ����)
	public void removeDayByschedule(Integer scheduleId);
	//Day ����
	public void updateDay(DayVo dayVo);
}
