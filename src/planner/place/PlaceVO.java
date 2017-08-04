package planner.place;

public class PlaceVO {
	private Integer placeId;
	private String placeName;
	private String placeTel;
	private String detail;
	private String placeLon;
	private String placeLat;
	
	public PlaceVO() {}

	public PlaceVO(Integer placeId, String placeName, String placeTel, String detail, String placeLon,
			String placeLat) {
		this.placeId = placeId;
		this.placeName = placeName;
		this.placeTel = placeTel;
		this.detail = detail;
		this.placeLon = placeLon;
		this.placeLat = placeLat;
	}

	public Integer getPlaceId() {
		return placeId;
	}

	public void setPlaceId(Integer placeId) {
		this.placeId = placeId;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getPlaceTel() {
		return placeTel;
	}

	public void setPlaceTel(String placeTel) {
		this.placeTel = placeTel;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getPlaceLon() {
		return placeLon;
	}

	public void setPlaceLon(String placeLon) {
		this.placeLon = placeLon;
	}

	public String getPlaceLat() {
		return placeLat;
	}

	public void setPlaceLat(String placeLat) {
		this.placeLat = placeLat;
	}
	
}
