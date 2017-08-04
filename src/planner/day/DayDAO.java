package planner.day;

public interface DayDAO {

	//Day ����
	public void addDay(DayVo dayVo);
	//Day ��ȸ
	public DayVo getDay(Integer scheduleId);
	//Day �Ѱ� ����
	public void removeDay(DayVo dayVo);
	//Day ����
	public void updateDay(DayVo dayVo);
}
