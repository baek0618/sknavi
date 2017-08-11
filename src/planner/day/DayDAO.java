package planner.day;

import java.util.List;

public interface DayDAO {

	//Day ����
	public void addDay(DayVO dayVo);
	//Day �Ѱ� ��ȸ
	public DayVO getDay(Integer dayId);
	//Day ��ȸ(�����ٿ� ���Ե� daylist)
	public List<DayVO> getDays(Integer scheduleId);
	//Day �Ѱ� ����
	public void removeDay(Integer dayId);
	//Day ���� (�����ٿ� ���Ե� day ��� ����)
	public void removeDayByschedule(Integer scheduleId);
	//Day ����
	public void updateDay(DayVO dayVo);
	// day�� ������� ������ ����
	DayVO getDayPlaces(Integer placeId);
}
