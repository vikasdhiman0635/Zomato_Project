package Zomatofile;

public class Zomatoforget 
{
	String strunm,strcpwd;

	public String getStrunm() {
		return strunm;
	}

	public void setStrunm(String strunm) {
		this.strunm = strunm;
	}

	public String getStrcpwd() {
		return strcpwd;
	}

	public void setStrcpwd(String strcpwd) {
		this.strcpwd = strcpwd;
	}

	@Override
	public String toString() {
		return "Zomatoforget [strunm=" + strunm + ", strcpwd=" + strcpwd + ", getStrunm()=" + getStrunm()
				+ ", getStrcpwd()=" + getStrcpwd() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	public Zomatoforget(String strunm, String strcpwd) {
		super();
		this.strunm = strunm;
		this.strcpwd = strcpwd;
	}
	
	
}
