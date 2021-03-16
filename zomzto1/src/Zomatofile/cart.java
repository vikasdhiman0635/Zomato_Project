package Zomatofile;

public class cart 
{
	String strid,strname,strimage,strfmessage,strcmessage,strtime,strcardname,strcard,strdate,strcvv,strpwd,strunm;
	int intcost,intqty;
	
	public String getStrid() {
		return strid;
	}
	public void setStrid(String strid) {
		this.strid = strid;
	}
	public String getStrname() {
		return strname;
	}
	public void setStrname(String strname) {
		this.strname = strname;
	}
	public String getStrimage() {
		return strimage;
	}
	public void setStrimage(String strimage) {
		this.strimage = strimage;
	}
	public String getStrfmessage() {
		return strfmessage;
	}
	public void setStrfmessage(String strfmessage) {
		this.strfmessage = strfmessage;
	}
	public String getStrcmessage() {
		return strcmessage;
	}
	public void setStrcmessage(String strcmessage) {
		this.strcmessage = strcmessage;
	}
	public String getStrtime() {
		return strtime;
	}
	public void setStrtime(String strtime) {
		this.strtime = strtime;
	}
	public String getStrcardname() {
		return strcardname;
	}
	public void setStrcardname(String strcardname) {
		this.strcardname = strcardname;
	}
	public String getStrcard() {
		return strcard;
	}
	public void setStrcard(String strcard) {
		this.strcard = strcard;
	}
	public String getStrdate() {
		return strdate;
	}
	public void setStrdate(String strdate) {
		this.strdate = strdate;
	}
	public String getStrcvv() {
		return strcvv;
	}
	public void setStrcvv(String strcvv) {
		this.strcvv = strcvv;
	}
	public String getStrpwd() {
		return strpwd;
	}
	public void setStrpwd(String strpwd) {
		this.strpwd = strpwd;
	}
	public String getStrunm() {
		return strunm;
	}
	public void setStrunm(String strunm) {
		this.strunm = strunm;
	}
	public int getIntcost() {
		return intcost;
	}
	public void setIntcost(int intcost) {
		this.intcost = intcost;
	}
	public int getIntqty() {
		return intqty;
	}
	public void setIntqty(int intqty) {
		this.intqty = intqty;
	}
	@Override
	public String toString() {
		return "cart [strid=" + strid + ", strname=" + strname + ", strimage=" + strimage + ", strfmessage="
				+ strfmessage + ", strcmessage=" + strcmessage + ", strtime=" + strtime + ", strcardname=" + strcardname
				+ ", strcard=" + strcard + ", strdate=" + strdate + ", strcvv=" + strcvv + ", strpwd=" + strpwd
				+ ", strunm=" + strunm + ", intcost=" + intcost + ", intqty=" + intqty + ", getStrid()=" + getStrid()
				+ ", getStrname()=" + getStrname() + ", getStrimage()=" + getStrimage() + ", getStrfmessage()="
				+ getStrfmessage() + ", getStrcmessage()=" + getStrcmessage() + ", getStrtime()=" + getStrtime()
				+ ", getStrcardname()=" + getStrcardname() + ", getStrcard()=" + getStrcard() + ", getStrdate()="
				+ getStrdate() + ", getStrcvv()=" + getStrcvv() + ", getStrpwd()=" + getStrpwd() + ", getStrunm()="
				+ getStrunm() + ", getIntcost()=" + getIntcost() + ", getIntqty()=" + getIntqty() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	public cart(String strid, String strname, String strimage, String strfmessage, String strcmessage, String strtime,
			String strcardname, String strcard, String strdate, String strcvv, String strpwd, int intqty,
			int intcost, String strunm) {
		super();
		this.strid = strid;
		this.strname = strname;
		this.strimage = strimage;
		this.strfmessage = strfmessage;
		this.strcmessage = strcmessage;
		this.strtime = strtime;
		this.strcardname = strcardname;
		this.strcard = strcard;
		this.strdate = strdate;
		this.strcvv = strcvv;
		this.strpwd = strpwd;
		this.strunm = strunm;
		this.intcost = intcost;
		this.intqty = intqty;
	}
		
	
}
