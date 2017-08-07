package planner.day;

import java.util.List;

public interface DayDAO {

	//Day 생성
	public void addDay(DayVo dayVo);
	//Day 한개 조회
	public DayVo getDay(DayVo dayVo);
	//Day 조회(스케줄에 포함된 daylist)
	public List<DayVo> getDays(Integer scheduleId);
	//Day 한개 삭제
	public void removeDay(DayVo dayVo);
	//Day 삭제 (스케줄에 포함된 day 모두 삭제)
	public void removeDayByschedule(Integer scheduleId);
	//Day 수정
	public void updateDay(DayVo dayVo);
}
