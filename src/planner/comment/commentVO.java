package planner.comment;

import planner.board.boardVO;
import planner.member.memberVO;

public class commentVO {
	private int comment_id;
	private String comments;
	private String comment_date;
	private boardVO board;
	private memberVO member;
	
	public commentVO() {
		super();
	}

	public commentVO(int comment_id, String comments, String comment_date, boardVO board, memberVO member) {
		super();
		this.comment_id = comment_id;
		this.comments = comments;
		this.comment_date = comment_date;
		this.board = board;
		this.member = member;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getComment_date() {
		return comment_date;
	}

	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}

	public boardVO getBoard() {
		return board;
	}

	public void setBoard(boardVO board) {
		this.board = board;
	}

	public memberVO getMember() {
		return member;
	}

	public void setMember(memberVO member) {
		this.member = member;
	}

	public int getComment_id() {
		return comment_id;
	}

	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	
	@Override
	public String toString() {
		return "commentVO [comment_id=" + comment_id + ", comments=" + comments + ", comment_date=" + comment_date
				+ ", board=" + board + ", member=" + member + "]";
	}

}
