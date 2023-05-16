package reply;

public class ReplyBean {
    private int reno;
    private String content;
    private int ref;
    private String name;
    private String redate;

    public ReplyBean() { }

	public ReplyBean(int reno, String content, int ref, String name, String redate) {
		super();
		this.reno = reno;
		this.content = content;
		this.ref = ref;
		this.name = name;
		this.redate = redate;
	}

	public int getReno() {
		return reno;
	}

	public void setReno(int reno) {
		this.reno = reno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRedate() {
		return redate;
	}

	public void setRedate(String redate) {
		this.redate = redate;
	}

	@Override
	public String toString() {
		return "ReplyBean [reno=" + reno + ", content=" + content + ", ref=" + ref + ", name=" + name + ", redate="
				+ redate + "]";
	}
}
