package planner.board;

import planner.schedule.ScheduleVO;

public class boardVO {
	private String board_id;
	private String board_date;
	private String img_path;
	private String board_content;
	private int board_hit;
	private int board_like;
	private ScheduleVO schedule;
	
	public boardVO() {
		super();
	}

	public boardVO(String board_id, String board_date, String img_path, String board_content, int board_hit,
			int board_like, ScheduleVO schedule) {
		super();
		this.board_id = board_id;
		this.board_date = board_date;
		this.img_path = img_path;
		this.board_content = board_content;
		this.board_hit = board_hit;
		this.board_like = board_like;
		this.schedule = schedule;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}

	public String getImg_path() {
		return img_path;
	}

	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public int getBoard_hit() {
		return board_hit;
	}

	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}

	public int getBoard_like() {
		return board_like;
	}

	public void setBoard_like(int board_like) {
		this.board_like = board_like;
	}

	public ScheduleVO getSchedule() {
		return schedule;
	}

	public void setSchedule(ScheduleVO schedule) {
		this.schedule = schedule;
	}

	public String getBoard_id() {
		return board_id;
	}
	
	@Override
	public String toString() {
		return "boardVO [board_id=" + board_id + ", board_date=" + board_date + ", img_path=" + img_path
				+ ", board_content=" + board_content + ", board_hit=" + board_hit + ", board_like=" + board_like
				+ ", schedule=" + schedule + "]";
	}


}
