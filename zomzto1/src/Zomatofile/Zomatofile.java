package Zomatofile;

public class Zomatofile 
{

	String strunm,strpwd;

	public String getStrunm() {
		return strunm;
	}

	public void setStrunm(String strunm) {
		this.strunm = strunm;
	}

	public String getStrpwd() {
		return strpwd;
	}

	public void setStrpwd(String strpwd) {
		this.strpwd = strpwd;
	}

	@Override
	public String toString() {
		return "Zomatofile [strunm=" + strunm + ", strpwd=" + strpwd + ", getStrunm()=" + getStrunm() + ", getStrpwd()="
				+ getStrpwd() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

	public Zomatofile(String strunm, String strpwd) {
		super();
		this.strunm = strunm;
		this.strpwd = strpwd;
	}
	
	

}
