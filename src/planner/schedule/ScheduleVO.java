package planner.schedule;

public class ScheduleVO {
   private String scheduleId;
   private String startDate;
   private int day;
   private String subject;
   private String id;
   private String location;

   public ScheduleVO() {
      // TODO Auto-generated constructor stub
   }

   public ScheduleVO(String scheduleId, String startDate, int day, String subject, String id, String location) {
      super();
      this.scheduleId = scheduleId;
      this.startDate = startDate;
      this.day = day;
      this.subject = subject;
      this.id = id;
      this.location = location;
   }

   
   
   public String getScheduleId() {
      return scheduleId;
   }

   public void setScheduleId(String scheduleId) {
      this.scheduleId = scheduleId;
   }

   public String getStartDate() {
      return startDate;
   }

   public void setStartDate(String startDate) {
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

   public String getLocation() {
      return location;
   }

   public void setLocation(String location) {
      this.location = location;
   }

   @Override
   public String toString() {
      return "ScheduleVO [scheduleId=" + scheduleId + ", startDate=" + startDate + ", day=" + day + ", subject="
            + subject + ", id=" + id + ", location=" + location + "]";
   }

   
   
}