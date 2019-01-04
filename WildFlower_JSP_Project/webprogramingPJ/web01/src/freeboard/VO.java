package freeboard;

public class VO {
	private int num;
	private String id;
	private String title;
	private String memo;
	private String ndate;
	private int hit;
	private int ref;
	private int indent;
	private int step;
	private boolean dayNew;

	

	public int getNum() {
		return num;
	}
	
	public VO() {
			
		}
	
	
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getNdate() {
		return ndate;
	}
	public void setNdate(String ndate) {
		this.ndate = ndate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getIndent() {
		return indent;
	}
	public void setIndent(int indent) {
		this.indent = indent;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}

	public boolean isDayNew() {
		return dayNew;
	}

	public void setDayNew(boolean dayNew) {
		this.dayNew = dayNew;
	}
	

}
