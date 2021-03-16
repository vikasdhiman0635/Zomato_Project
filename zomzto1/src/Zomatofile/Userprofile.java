package Zomatofile;

public class Userprofile {
	String strfirstname;

	public String getStrfirstname() {
		return strfirstname;
	}

	public void setStrfirstname(String strfirstname) {
		this.strfirstname = strfirstname;
	}

	@Override
	public String toString() {
		return "userprofile [strfirstname=" + strfirstname + ", getStrfirstname()=" + getStrfirstname()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	public Userprofile(String strfirstname) {
		super();
		this.strfirstname = strfirstname;
	}
	
	
}
