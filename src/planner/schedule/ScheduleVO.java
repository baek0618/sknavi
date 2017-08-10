package planner.schedule;

import java.util.Date;

public class ScheduleVO {

	private int scheduleId;
	private Date startDate;
	private int day;
	private String subject;
	private String id;

	public int getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(int scheduleId) {
		this.scheduleId = scheduleId;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public ScheduleVO() {
		// TODO Auto-generated constructor stub
	}

	public ScheduleVO(int scheduleId, Date startDate, int day, String subject, String id) {
		super();
		this.scheduleId = scheduleId;
		this.startDate = startDate;
		this.day = day;
		this.subject = subject;
		this.id = id;
	}

	@Override
	public String toString() {
		return "scheduleVO [scheduleId=" + scheduleId + ", startDate=" + startDate + ", day=" + day + ", subject="
				+ subject + ", id=" + id + "]";
	}
}
