package planner.day;

import java.util.List;

public interface DayDAO {

	//Day 생성
	public void addDay(DayVO dayVo);
	//Day 한개 조회
	public DayVO getDay(Integer dayId);
	//Day 조회(스케줄에 포함된 daylist)
	public List<DayVO> getDays(Integer scheduleId);
	//Day 한개 삭제
	public void removeDay(Integer dayId);
	//Day 삭제 (스케줄에 포함된 day 모두 삭제)
	public void removeDayByschedule(Integer scheduleId);
	//Day 수정
	public void updateDay(DayVO dayVo);
	// day의 장소정보 가지고 오기
	DayVO getDayPlaces(Integer placeId);
}
