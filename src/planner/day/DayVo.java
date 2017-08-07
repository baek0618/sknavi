package planner.day;

import planner.place.PlaceVO;

public class DayVo {
	
	private Integer dayId;
	private Integer scheduleId;
	private Integer day;
	private Integer seq;
	private String content;
	private PlaceVO palce;

	public DayVo() {}
	
	public DayVo(Integer dayId ,Integer scheduleId, Integer day, Integer seq, String content, PlaceVO palce) {
		super();
		this.dayId = dayId;
		this.scheduleId = scheduleId;
		this.day = day;
		this.seq = seq;
		this.content = content;
		this.palce = palce;
	}
	
	public Integer getDayId() {
		return dayId;
	}

	public void setDayId(Integer dayId) {
		this.dayId = dayId;
	}
	
	public Integer getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(Integer scheduleId) {
		this.scheduleId = scheduleId;
	}

	public Integer getDay() {
		return day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public PlaceVO getPalce() {
		return palce;
	}

	public void setPalce(PlaceVO palce) {
		this.palce = palce;
	}

	@Override
	public String toString() {
		return "DayVo [dayId=" + dayId + ", scheduleId=" + scheduleId + ", day=" + day + ", seq=" + seq + ", content="
				+ content + ", palceId=" + palce.getPlaceId() + "]";
	}

}
