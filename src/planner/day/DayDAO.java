package planner.day;

public interface DayDAO {

	//Day 생성
	public void addDay(DayVo dayVo);
	//Day 조회
	public DayVo getDay(Integer scheduleId);
	//Day 한개 삭제
	public void removeDay(DayVo dayVo);
	//Day 수정
	public void updateDay(DayVo dayVo);
}
