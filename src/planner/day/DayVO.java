package planner.day;

import java.util.List;

import planner.place.PlaceVO;

public class DayVO {
	   
	   private String scheduleId;
	   private Integer day;
	   private Integer seq;
	   private String content;
	   private PlaceVO place;
	   private List<DayVO> dayList;
	   
	   public DayVO() {}

	   public DayVO(String scheduleId, Integer day, Integer seq, String content, PlaceVO place) {
	      this.scheduleId = scheduleId;
	      this.day = day;
	      this.seq = seq;
	      this.content = content;
	      this.place = place;
	   }
	   
	   public List<DayVO> getDayList() {
	      return dayList;
	   }

	   public void setDayList(List<DayVO> dayList) {
	      this.dayList = dayList;
	   }

	   public String getScheduleId() {
	      return scheduleId;
	   }

	   public void setScheduleId(String scheduleId) {
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

	   public PlaceVO getPlace() {
	      return place;
	   }

	   public void setPlace(PlaceVO place) {
	      this.place = place;
	   }

	   @Override
	   public String toString() {
	      return "DayVo [scheduleId=" + scheduleId + ", day=" + day + ", seq=" + seq + ", content=" + content + ", place="
	            + place + "]";
	   }
}
