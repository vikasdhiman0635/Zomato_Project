package Zomatofile;

public class Zomatoregistration 
{
	String strfirstname,strlastname,strmobileno,stremailid,strusername,strpassword;

	public String getStrfirstname() {
		return strfirstname;
	}

	public void setStrfirstname(String strfirstname) {
		this.strfirstname = strfirstname;
	}

	public String getStrlastname() {
		return strlastname;
	}

	public void setStrlastname(String strlastname) {
		this.strlastname = strlastname;
	}

	public String getStrmobileno() {
		return strmobileno;
	}

	public void setStrmobileno(String strmobileno) {
		this.strmobileno = strmobileno;
	}

	public String getStremailid() {
		return stremailid;
	}

	public void setStremailid(String stremailid) {
		this.stremailid = stremailid;
	}

	public String getStrusername() {
		return strusername;
	}

	public void setStrusername(String strusername) {
		this.strusername = strusername;
	}

	public String getStrpassword() {
		return strpassword;
	}

	public void setStrpassword(String strpassword) {
		this.strpassword = strpassword;
	}

	@Override
	public String toString() {
		return "Zomatoregistration [strfirstname=" + strfirstname + ", strlastname=" + strlastname + ", strmobileno="
				+ strmobileno + ", stremailid=" + stremailid + ", strusername=" + strusername + ", strpassword="
				+ strpassword + ", getStrfirstname()=" + getStrfirstname() + ", getStrlastname()=" + getStrlastname()
				+ ", getStrmobileno()=" + getStrmobileno() + ", getStremailid()=" + getStremailid()
				+ ", getStrusername()=" + getStrusername() + ", getStrpassword()=" + getStrpassword() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public Zomatoregistration(String strfirstname, String strlastname, String strmobileno, String stremailid,
			String strusername, String strpassword) {
		super();
		this.strfirstname = strfirstname;
		this.strlastname = strlastname;
		this.strmobileno = strmobileno;
		this.stremailid = stremailid;
		this.strusername = strusername;
		this.strpassword = strpassword;
	}

	
	
	
	
}
