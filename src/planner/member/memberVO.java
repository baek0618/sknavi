package planner.member;

public class memberVO {
	private String id;
	private String password;
	private String name;
	private String birth;
	private String phone;
	private Integer admin = 0;

	public memberVO() {

	}

	public memberVO(String id, String password) {

		this.id = id;
		this.password = password;

	}

	public memberVO(String id, String password, String name, String birth, String phone) {

		this.id = id;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
	}

	public memberVO(String id, String password, String name, String birth, String phone, Integer admin) {
		;
		this.id = id;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.admin = admin;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getAdmin() {
		return admin;
	}

	public void setAdmin(Integer admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "memberVO [id=" + id + ", password=" + password + ", name=" + name + ", birth=" + birth + ", phone="
				+ phone + ", admin=" + admin + "]";
	}

}
