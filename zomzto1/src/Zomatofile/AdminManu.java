package Zomatofile;

public class AdminManu 
{
	String strfoodid,strfoodname,strfoodmessage,strfoodtime,strcostmessage,strrating,strimage;	
	int intfoodcost;
	public String getStrfoodid() {
		return strfoodid;
	}
	public void setStrfoodid(String strfoodid) {
		this.strfoodid = strfoodid;
	}
	public String getStrfoodname() {
		return strfoodname;
	}
	public void setStrfoodname(String strfoodname) {
		this.strfoodname = strfoodname;
	}
	public String getStrfoodmessage() {
		return strfoodmessage;
	}
	public void setStrfoodmessage(String strfoodmessage) {
		this.strfoodmessage = strfoodmessage;
	}
	public String getStrfoodtime() {
		return strfoodtime;
	}
	public void setStrfoodtime(String strfoodtime) {
		this.strfoodtime = strfoodtime;
	}
	public String getStrcostmessage() {
		return strcostmessage;
	}
	public void setStrcostmessage(String strcostmessage) {
		this.strcostmessage = strcostmessage;
	}
	public String getStrrating() {
		return strrating;
	}
	public void setStrrating(String strrating) {
		this.strrating = strrating;
	}
	public String getStrimage() {
		return strimage;
	}
	public void setStrimage(String strimage) {
		this.strimage = strimage;
	}
	public int getIntfoodcost() {
		return intfoodcost;
	}
	public void setIntfoodcost(int intfoodcost) {
		this.intfoodcost = intfoodcost;
	}
	@Override
	public String toString() {
		return "AdminManu [strfoodid=" + strfoodid + ", strfoodname=" + strfoodname + ", strfoodmessage="
				+ strfoodmessage + ", strfoodtime=" + strfoodtime + ", strcostmessage=" + strcostmessage
				+ ", strrating=" + strrating + ", strimage=" + strimage + ", intfoodcost=" + intfoodcost
				+ ", getStrfoodid()=" + getStrfoodid() + ", getStrfoodname()=" + getStrfoodname()
				+ ", getStrfoodmessage()=" + getStrfoodmessage() + ", getStrfoodtime()=" + getStrfoodtime()
				+ ", getStrcostmessage()=" + getStrcostmessage() + ", getStrrating()=" + getStrrating()
				+ ", getStrimage()=" + getStrimage() + ", getIntfoodcost()=" + getIntfoodcost() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	public AdminManu(String strfoodid, String strfoodname, String strfoodmessage, String strfoodtime,
			String strcostmessage, String strrating, String strimage, int intfoodcost) {
		super();
		this.strfoodid = strfoodid;
		this.strfoodname = strfoodname;
		this.strfoodmessage = strfoodmessage;
		this.strfoodtime = strfoodtime;
		this.strcostmessage = strcostmessage;
		this.strrating = strrating;
		this.strimage = strimage;
		this.intfoodcost = intfoodcost;
	}
	
	
	
}
